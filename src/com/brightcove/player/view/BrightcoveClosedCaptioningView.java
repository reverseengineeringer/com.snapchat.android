package com.brightcove.player.view;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.brightcove.player.R.layout;
import com.brightcove.player.R.style;
import com.brightcove.player.captioning.BrightcoveClosedCaption;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningStyle;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningTextView;
import com.brightcove.player.controller.BrightcoveClosedCaptioningController;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.management.BrightcoveClosedCaptioningManager;
import com.brightcove.player.model.Block;
import com.brightcove.player.model.Length;
import com.brightcove.player.model.Region;
import com.brightcove.player.model.Region.DisplayAlign;
import com.brightcove.player.model.Span;
import com.brightcove.player.model.StyledElement.TextAlign;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.model.WebVTTDocument;
import com.brightcove.player.util.StringUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

@Emits(events={"captionsAvailable"})
@ListensFor(events={"didLoadCaptions", "progress", "setCaptionsState", "toggleClosedCaptions"})
public class BrightcoveClosedCaptioningView
  extends FrameLayout
  implements Component
{
  public static final int DEFAULT_HORIZONTAL_GRAVITY = 17;
  protected static final int DEFAULT_TEXT_ROWS = 2;
  public static final int DEFAULT_VERTICAL_GRAVITY = 16;
  protected static final int HORIZONTAL_JUSTIFY_CENTER = 2;
  protected static final int HORIZONTAL_JUSTIFY_LEFT = 0;
  protected static final int HORIZONTAL_JUSTIFY_RIGHT = 1;
  protected static final float SAFE_AREA = 0.1F;
  protected static final String TAG = BrightcoveClosedCaptioningView.class.getSimpleName();
  protected static final int VERTICAL_JUSTIFY_BOTTOM = 1;
  protected static final int VERTICAL_JUSTIFY_CENTER = 2;
  protected static final int VERTICAL_JUSTIFY_TOP = 0;
  protected TreeMap<Integer, TimeMapEntry> beginTimeMap;
  protected LinearLayout.LayoutParams blockParams;
  protected LinearLayout currentCaptionBlock;
  protected ClosedCaptioningMode currentMode;
  protected EventListener didLoadCaptionsLoadListener = new EventListener()
  {
    public void processEvent(Event paramAnonymousEvent)
    {
      TTMLDocument localTTMLDocument = (TTMLDocument)properties.get("ttmlDocument");
      if (localTTMLDocument != null)
      {
        prepareDFXPCaptions(localTTMLDocument);
        return;
      }
      paramAnonymousEvent = (WebVTTDocument)properties.get("webvttDocument");
      if (paramAnonymousEvent != null)
      {
        prepareWebVTTCaptions(paramAnonymousEvent);
        return;
      }
      paramAnonymousEvent = BrightcoveClosedCaptioningView.TAG;
      clear();
    }
  };
  protected EventEmitter eventEmitter;
  protected LayoutInflater inflater;
  protected Integer lastProgressTime = Integer.valueOf(0);
  protected EventListener progressListener = new EventListener()
  {
    public void processEvent(Event paramAnonymousEvent)
    {
      int i = paramAnonymousEvent.getIntegerProperty("playheadPosition");
      doUpdateCaption(Integer.valueOf(i));
    }
  };
  protected int progressListenerToken = -1;
  protected EventListener setCaptionsStateListener = new EventListener()
  {
    public void processEvent(Event paramAnonymousEvent)
    {
      refreshCaptions();
    }
  };
  protected EventListener toggleClosedCaptionsListener = new EventListener()
  {
    public void processEvent(Event paramAnonymousEvent)
    {
      if (((Boolean)properties.get("boolean")).booleanValue())
      {
        setMode(BrightcoveClosedCaptioningView.ClosedCaptioningMode.ON);
        setVisibility(0);
        bringToFront();
        registerProgressListener();
        return;
      }
      setMode(BrightcoveClosedCaptioningView.ClosedCaptioningMode.OFF);
      setVisibility(8);
      cancelProgressListener();
    }
  };
  protected BaseVideoView videoPlayer;
  
  public BrightcoveClosedCaptioningView(Context paramContext)
  {
    super(paramContext);
  }
  
  public BrightcoveClosedCaptioningView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public BrightcoveClosedCaptioningView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void applyRegionLayout(LinearLayout paramLinearLayout, TTMLDocument paramTTMLDocument, BrightcoveClosedCaption paramBrightcoveClosedCaption, int paramInt)
  {
    int i = getCaptionDisplayAlignAsGravity(paramBrightcoveClosedCaption, paramTTMLDocument);
    paramTTMLDocument = getLayoutParamsForBlock(paramLinearLayout);
    gravity = (i | paramInt);
    paramLinearLayout.setLayoutParams(paramTTMLDocument);
  }
  
  protected void applyRegionLayout(LinearLayout paramLinearLayout, WebVTTDocument paramWebVTTDocument, BrightcoveClosedCaption paramBrightcoveClosedCaption, int paramInt)
  {
    int i = getCaptionDisplayAlignAsGravity(paramBrightcoveClosedCaption, paramWebVTTDocument);
    paramWebVTTDocument = getLayoutParamsForBlock(paramLinearLayout);
    gravity = (i | paramInt);
    paramLinearLayout.setLayoutParams(paramWebVTTDocument);
  }
  
  protected ViewGroup buildCaptionBlock(TTMLDocument paramTTMLDocument, BrightcoveClosedCaption paramBrightcoveClosedCaption)
  {
    LinearLayout localLinearLayout = (LinearLayout)inflater.inflate(R.layout.caption_block, null);
    int j = getCaptionTextAlignAsGravity(paramBrightcoveClosedCaption);
    applyRegionLayout(localLinearLayout, paramTTMLDocument, paramBrightcoveClosedCaption, j);
    localLinearLayout.setVisibility(8);
    paramTTMLDocument = paramBrightcoveClosedCaption.getLines().iterator();
    while (paramTTMLDocument.hasNext())
    {
      paramBrightcoveClosedCaption = (List)paramTTMLDocument.next();
      if (paramBrightcoveClosedCaption.size() != 0)
      {
        BrightcoveClosedCaptioningTextView localBrightcoveClosedCaptioningTextView = (BrightcoveClosedCaptioningTextView)inflater.inflate(R.layout.caption_text, null);
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
        int i = 0;
        while (i < paramBrightcoveClosedCaption.size())
        {
          localSpannableStringBuilder.append(buildSpannableString(localBrightcoveClosedCaptioningTextView, (Span)paramBrightcoveClosedCaption.get(i), 1.0F));
          i += 1;
        }
        localBrightcoveClosedCaptioningTextView.setText(collapseWhitespace(localSpannableStringBuilder));
        localBrightcoveClosedCaptioningTextView.setGravity(j);
        localLinearLayout.addView(localBrightcoveClosedCaptioningTextView);
      }
    }
    return localLinearLayout;
  }
  
  protected ViewGroup buildCaptionBlock(WebVTTDocument paramWebVTTDocument, BrightcoveClosedCaption paramBrightcoveClosedCaption)
  {
    LinearLayout localLinearLayout = (LinearLayout)inflater.inflate(R.layout.caption_block, null);
    int i = getCaptionTextAlignAsGravity(paramBrightcoveClosedCaption);
    applyRegionLayout(localLinearLayout, paramWebVTTDocument, paramBrightcoveClosedCaption, i);
    localLinearLayout.setVisibility(8);
    paramWebVTTDocument = (BrightcoveClosedCaptioningTextView)inflater.inflate(R.layout.caption_text, null);
    paramWebVTTDocument.setText(paramBrightcoveClosedCaption.getCaption());
    paramWebVTTDocument.setGravity(i);
    localLinearLayout.addView(paramWebVTTDocument);
    return localLinearLayout;
  }
  
  protected CharSequence buildSpannableString(TextView paramTextView, Span paramSpan, float paramFloat)
  {
    if (StringUtil.isEmpty(paramSpan.getText())) {
      return "";
    }
    paramTextView = new SpannableString(paramSpan.getText());
    int i = paramSpan.getText().length();
    if (paramSpan.getFontStyle() != null) {}
    switch (5.$SwitchMap$com$brightcove$player$model$StyledElement$FontStyle[paramSpan.getFontStyle().ordinal()])
    {
    default: 
      if (paramSpan.getFontWeight() != null) {}
      switch (5.$SwitchMap$com$brightcove$player$model$StyledElement$FontWeight[paramSpan.getFontWeight().ordinal()])
      {
      default: 
        label108:
        if (paramSpan.getTextDecoration() != null) {
          switch (paramSpan.getTextDecoration())
          {
          }
        }
        break;
      }
      break;
    }
    for (;;)
    {
      if (!StringUtil.isEmpty(paramSpan.getColor())) {
        paramTextView.setSpan(new ForegroundColorSpan(Color.parseColor(paramSpan.getColor())), 0, i, 33);
      }
      if (!StringUtil.isEmpty(paramSpan.getBackgroundColor())) {
        paramTextView.setSpan(new BackgroundColorSpan(Color.parseColor(paramSpan.getBackgroundColor())), 0, i, 33);
      }
      if (paramSpan.getFontSize() != null) {
        paramTextView.setSpan(new AbsoluteSizeSpan((int)paramSpan.getFontSize().getValue()), 0, i, 33);
      }
      paramTextView.setSpan(new RelativeSizeSpan(paramFloat), 0, i, 33);
      return paramTextView;
      paramTextView.setSpan(new StyleSpan(R.style.caption_text_italic), 0, i, 33);
      break;
      paramTextView.setSpan(new StyleSpan(R.style.caption_text_bold), 0, i, 33);
      break label108;
      paramTextView.setSpan(new UnderlineSpan(), 0, i, 33);
    }
  }
  
  protected void cancelProgressListener()
  {
    if (progressListenerToken != -1)
    {
      eventEmitter.off("progress", progressListenerToken);
      progressListenerToken = -1;
    }
  }
  
  public void clear()
  {
    setMode(ClosedCaptioningMode.OFF);
    cancelProgressListener();
    emitCaptionsAvailable(false);
    if (getChildCount() > 0) {
      removeAllViews();
    }
    if ((beginTimeMap != null) && (beginTimeMap.size() > 0)) {
      beginTimeMap.clear();
    }
  }
  
  protected CharSequence collapseWhitespace(CharSequence paramCharSequence)
  {
    return StringUtil.replaceAll(paramCharSequence, new String[] { "\n", "\r", "\t", "  " }, new CharSequence[] { " ", " ", " ", " " });
  }
  
  void doUpdateCaption(Integer paramInteger)
  {
    if ((isEnabled()) && (getMode() == ClosedCaptioningMode.ON))
    {
      lastProgressTime = paramInteger;
      if (paramInteger != null) {}
    }
    else
    {
      return;
    }
    paramInteger = findCaptionForPosition(paramInteger);
    if (currentCaptionBlock != null) {
      currentCaptionBlock.setVisibility(8);
    }
    if (paramInteger != null) {
      paramInteger.setVisibility(0);
    }
    currentCaptionBlock = ((LinearLayout)paramInteger);
  }
  
  protected void emitCaptionsAvailable(boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("boolean", Boolean.valueOf(paramBoolean));
    eventEmitter.emit("captionsAvailable", localHashMap);
  }
  
  public ViewGroup findCaptionForPosition(Integer paramInteger)
  {
    Map.Entry localEntry = beginTimeMap.floorEntry(paramInteger);
    if ((localEntry != null) && (localEntry.getValue() != null) && (getValueclosedCaption.getEndTime() >= paramInteger.intValue())) {
      return styleCaptions(getValueblock);
    }
    return null;
  }
  
  protected int getCaptionDisplayAlignAsGravity(BrightcoveClosedCaption paramBrightcoveClosedCaption, TTMLDocument paramTTMLDocument)
  {
    int j = 16;
    paramBrightcoveClosedCaption = resolveRegionForBlock(paramBrightcoveClosedCaption, paramTTMLDocument);
    int i = j;
    if (paramBrightcoveClosedCaption != null)
    {
      paramBrightcoveClosedCaption = paramBrightcoveClosedCaption.getDisplayAlign();
      i = j;
      if (paramBrightcoveClosedCaption != null)
      {
        if (paramBrightcoveClosedCaption != Region.DisplayAlign.BEFORE) {
          break label42;
        }
        i = 48;
      }
    }
    label42:
    do
    {
      return i;
      i = j;
    } while (paramBrightcoveClosedCaption != Region.DisplayAlign.AFTER);
    return 80;
  }
  
  protected int getCaptionDisplayAlignAsGravity(BrightcoveClosedCaption paramBrightcoveClosedCaption, WebVTTDocument paramWebVTTDocument)
  {
    return 80;
  }
  
  public int getCaptionLineCount()
  {
    if (currentCaptionBlock != null) {
      return currentCaptionBlock.getChildCount();
    }
    return -1;
  }
  
  public int getCaptionLineSizeHeight()
  {
    if ((currentCaptionBlock != null) && (currentCaptionBlock.getChildCount() > 0)) {
      return currentCaptionBlock.getChildAt(0).getHeight();
    }
    return -1;
  }
  
  protected int getCaptionTextAlignAsGravity(BrightcoveClosedCaption paramBrightcoveClosedCaption)
  {
    int j = 17;
    int i = j;
    if (paramBrightcoveClosedCaption.getTextAlign() != null)
    {
      if (paramBrightcoveClosedCaption.getTextAlign() != StyledElement.TextAlign.LEFT) {
        break label26;
      }
      i = 3;
    }
    label26:
    do
    {
      return i;
      i = j;
    } while (paramBrightcoveClosedCaption.getTextAlign() != StyledElement.TextAlign.RIGHT);
    return 5;
  }
  
  protected FrameLayout.LayoutParams getLayoutParamsForBlock(View paramView)
  {
    paramView = paramView.getLayoutParams();
    if (paramView == null) {
      return new FrameLayout.LayoutParams(-2, -2);
    }
    return new FrameLayout.LayoutParams(paramView);
  }
  
  public ClosedCaptioningMode getMode()
  {
    return currentMode;
  }
  
  public int getSafeAreaHeight()
  {
    int i = 0;
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    if (localLayoutParams != null) {
      i = height;
    }
    int j = i;
    if (i <= 0) {
      j = getHeight();
    }
    return Math.round(j * 0.1F);
  }
  
  public int getSafeAreaWidth()
  {
    int i = 0;
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    if (localLayoutParams != null) {
      i = width;
    }
    int j = i;
    if (i <= 0) {
      j = getWidth();
    }
    return Math.round(j * 0.1F);
  }
  
  public void initialize(EventEmitter paramEventEmitter)
  {
    initialize(paramEventEmitter, null);
  }
  
  public void initialize(EventEmitter paramEventEmitter, BaseVideoView paramBaseVideoView)
  {
    eventEmitter = RegisteringEventEmitter.build(paramEventEmitter, getClass());
    inflater = ((LayoutInflater)getContext().getSystemService("layout_inflater"));
    beginTimeMap = new TreeMap();
    eventEmitter.on("didLoadCaptions", didLoadCaptionsLoadListener);
    eventEmitter.on("setCaptionsState", setCaptionsStateListener);
    eventEmitter.on("toggleClosedCaptions", toggleClosedCaptionsListener);
    videoPlayer = paramBaseVideoView;
    if (videoPlayer.getClosedCaptioningController().readClosedCaptioningState())
    {
      currentMode = ClosedCaptioningMode.ON;
      return;
    }
    currentMode = ClosedCaptioningMode.OFF;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void prepareDFXPCaptions(TTMLDocument paramTTMLDocument)
  {
    prepareLayout();
    List localList = paramTTMLDocument.getCaptions();
    Object localObject;
    if ((localList != null) && (localList.size() > 0))
    {
      if (videoPlayer.getClosedCaptioningController().readClosedCaptioningState())
      {
        setMode(ClosedCaptioningMode.ON);
        registerProgressListener();
      }
      emitCaptionsAvailable(true);
      if (beginTimeMap.size() > 0) {
        localIterator = beginTimeMap.keySet().iterator();
      }
    }
    else
    {
      while (localIterator.hasNext())
      {
        localObject = (Integer)localIterator.next();
        localObject = (TimeMapEntry)beginTimeMap.get(localObject);
        if ((localObject != null) && (block != null))
        {
          removeView(block);
          continue;
          emitCaptionsAvailable(false);
          return;
        }
      }
      beginTimeMap.clear();
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      localObject = (BrightcoveClosedCaption)localIterator.next();
      ViewGroup localViewGroup = buildCaptionBlock(paramTTMLDocument, (BrightcoveClosedCaption)localObject);
      if (localViewGroup.getChildCount() > 0)
      {
        addView(localViewGroup);
        beginTimeMap.put(Integer.valueOf(((BrightcoveClosedCaption)localObject).getBeginTime()), new TimeMapEntry((BrightcoveClosedCaption)localObject, localViewGroup));
      }
    }
    paramTTMLDocument = (BrightcoveClosedCaption)localList.get(localList.size() - 1);
    beginTimeMap.put(Integer.valueOf(paramTTMLDocument.getEndTime()), null);
  }
  
  public void prepareLayout()
  {
    LayoutInflater localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
    blockParams = new LinearLayout.LayoutParams(-2, -2);
    BrightcoveClosedCaptioningManager.getInstance(getContext()).getStyle();
    currentCaptionBlock = ((LinearLayout)localLayoutInflater.inflate(R.layout.caption_block, null));
    currentCaptionBlock.setVisibility(8);
  }
  
  public void prepareWebVTTCaptions(WebVTTDocument paramWebVTTDocument)
  {
    prepareLayout();
    List localList = paramWebVTTDocument.getCaptions();
    Object localObject;
    if ((localList != null) && (localList.size() > 0))
    {
      if (videoPlayer.getClosedCaptioningController().readClosedCaptioningState())
      {
        setMode(ClosedCaptioningMode.ON);
        registerProgressListener();
      }
      emitCaptionsAvailable(true);
      if (beginTimeMap.size() > 0) {
        localIterator = beginTimeMap.keySet().iterator();
      }
    }
    else
    {
      while (localIterator.hasNext())
      {
        localObject = (Integer)localIterator.next();
        localObject = (TimeMapEntry)beginTimeMap.get(localObject);
        if ((localObject != null) && (block != null))
        {
          removeView(block);
          continue;
          emitCaptionsAvailable(false);
          return;
        }
      }
      beginTimeMap.clear();
    }
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      localObject = (BrightcoveClosedCaption)localIterator.next();
      ViewGroup localViewGroup = buildCaptionBlock(paramWebVTTDocument, (BrightcoveClosedCaption)localObject);
      if (localViewGroup.getChildCount() > 0)
      {
        addView(localViewGroup);
        beginTimeMap.put(Integer.valueOf(((BrightcoveClosedCaption)localObject).getBeginTime()), new TimeMapEntry((BrightcoveClosedCaption)localObject, localViewGroup));
      }
    }
    paramWebVTTDocument = (BrightcoveClosedCaption)localList.get(localList.size() - 1);
    beginTimeMap.put(Integer.valueOf(paramWebVTTDocument.getEndTime()), null);
  }
  
  public void refreshCaptions()
  {
    if (lastProgressTime == null) {
      return;
    }
    doUpdateCaption(lastProgressTime);
  }
  
  public void refreshCaptions(Integer paramInteger)
  {
    if (paramInteger == null) {
      return;
    }
    doUpdateCaption(paramInteger);
  }
  
  protected void registerProgressListener()
  {
    if (progressListenerToken == -1) {
      progressListenerToken = eventEmitter.on("progress", progressListener);
    }
  }
  
  protected Region resolveRegionForBlock(Block paramBlock, TTMLDocument paramTTMLDocument)
  {
    String str = paramBlock.getRegion();
    paramBlock = paramTTMLDocument.getRegions();
    if ((!StringUtil.isEmpty(str)) && (paramBlock.containsKey(str))) {
      return (Region)paramBlock.get(str);
    }
    if (paramTTMLDocument.getBody() != null)
    {
      paramTTMLDocument = paramTTMLDocument.getBody().getRegion();
      if ((!StringUtil.isEmpty(paramTTMLDocument)) && (paramBlock.containsKey(paramTTMLDocument))) {
        return (Region)paramBlock.get(paramTTMLDocument);
      }
    }
    return null;
  }
  
  public void setMode(ClosedCaptioningMode paramClosedCaptioningMode)
  {
    currentMode = paramClosedCaptioningMode;
  }
  
  protected ViewGroup styleCaptions(ViewGroup paramViewGroup)
  {
    BrightcoveClosedCaptioningStyle localBrightcoveClosedCaptioningStyle = BrightcoveClosedCaptioningManager.getInstance(getContext()).getStyle();
    int i = 0;
    if (i < paramViewGroup.getChildCount())
    {
      View localView = paramViewGroup.getChildAt(i);
      BrightcoveClosedCaptioningTextView localBrightcoveClosedCaptioningTextView;
      if ((localView instanceof BrightcoveClosedCaptioningTextView))
      {
        localBrightcoveClosedCaptioningTextView = (BrightcoveClosedCaptioningTextView)localView;
        if (videoPlayer == null) {
          break label87;
        }
      }
      label87:
      for (int j = videoPlayer.getRenderView().getMeasuredHeight();; j = 1)
      {
        localBrightcoveClosedCaptioningTextView.setVideoPlayerHeightPx(j);
        ((BrightcoveClosedCaptioningTextView)localView).setStyle(localBrightcoveClosedCaptioningStyle);
        i += 1;
        break;
      }
    }
    paramViewGroup.setBackgroundColor(backgroundColor);
    paramViewGroup.invalidate();
    paramViewGroup.requestLayout();
    return paramViewGroup;
  }
  
  public static enum ClosedCaptioningMode
  {
    OFF,  ON;
    
    private ClosedCaptioningMode() {}
  }
  
  public class TimeMapEntry
  {
    public ViewGroup block;
    public BrightcoveClosedCaption closedCaption;
    
    public TimeMapEntry(BrightcoveClosedCaption paramBrightcoveClosedCaption, ViewGroup paramViewGroup)
    {
      closedCaption = paramBrightcoveClosedCaption;
      block = paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveClosedCaptioningView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
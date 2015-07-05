package com.brightcove.player.controller;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.accessibility.CaptioningManager;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.TextView;
import com.brightcove.player.R.id;
import com.brightcove.player.R.layout;
import com.brightcove.player.R.string;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog;
import com.brightcove.player.captioning.LoadCaptionsService;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.StringUtil;
import com.brightcove.player.view.BaseVideoView;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

@Emits(events={"toggleClosedCaptions", "setCaptionsState"})
@ListensFor(events={"captionsAvailable", "didSetVideo"})
public class BrightcoveClosedCaptioningController
  extends AbstractComponent
{
  public static final String CC_ENABLED_STATE = "ClosedCaptioningEnabledState";
  public static final String CLOSED_CAPTIONING_PLAYER_PREFERENCES = "ClosedCaptioningPlayerPreferences";
  private static final String TAG = BrightcoveClosedCaptioningController.class.getSimpleName();
  protected Activity activity;
  private View.OnClickListener advancedOptionsClickedListener = new View.OnClickListener()
  {
    @TargetApi(11)
    public void onClick(View paramAnonymousView)
    {
      if (activity != null)
      {
        paramAnonymousView = activity.getFragmentManager();
        BrightcoveClosedCaptioningOptionsDialog localBrightcoveClosedCaptioningOptionsDialog = new BrightcoveClosedCaptioningOptionsDialog();
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("isHLS", isHLS);
        localBrightcoveClosedCaptioningOptionsDialog.setArguments(localBundle);
        localBrightcoveClosedCaptioningOptionsDialog.setEventEmitter(videoPlayer.getEventEmitter());
        localBrightcoveClosedCaptioningOptionsDialog.show(paramAnonymousView, "CaptionsOptionsDialog");
        if (videoPlayer.isPlaying()) {
          videoPlayer.pause();
        }
      }
    }
  };
  protected TextView advancedOptionsLink;
  protected Button captionDialogButton;
  protected TextView captionDialogMessage;
  private CaptioningChangeListener captioningChangeListener;
  private CaptioningManager captioningManager;
  protected EventListener captionsAvailableListener = new EventListener()
  {
    public void processEvent(Event paramAnonymousEvent)
    {
      paramAnonymousEvent = (Boolean)properties.get("boolean");
      setVideoHasCaptions(paramAnonymousEvent);
    }
  };
  protected PopupWindow captionsDialog;
  protected View.OnClickListener closedCaptionDialogClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      captionsDialogVisibleStatus();
    }
  };
  protected Context context;
  protected EventListener didSetVideoListener = new EventListener()
  {
    public void processEvent(Event paramAnonymousEvent)
    {
      paramAnonymousEvent = (Video)properties.get("video");
      paramAnonymousEvent = checkIfCaptionsExist(paramAnonymousEvent);
      if (paramAnonymousEvent != null)
      {
        new LoadCaptionsService(eventEmitter).loadCaptions(paramAnonymousEvent);
        if (Build.VERSION.SDK_INT >= 19) {
          BrightcoveClosedCaptioningController.this.addCaptioningChangeListener();
        }
      }
      else
      {
        return;
      }
      BrightcoveClosedCaptioningController.this.removeCaptioningChangeListener();
    }
  };
  protected RadioButton disableCaptionsButton;
  protected RadioButton enableCaptionsButton;
  private boolean isHLS;
  protected View.OnClickListener setCaptionStateListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (paramAnonymousView.getId() == R.id.enable_captions_btn) {}
      for (boolean bool = true;; bool = false)
      {
        paramAnonymousView = new HashMap();
        paramAnonymousView.put("boolean", Boolean.valueOf(bool));
        eventEmitter.emit("setCaptionsState", paramAnonymousView);
        saveClosedCaptioningState(bool);
        return;
      }
    }
  };
  protected BaseVideoView videoPlayer;
  
  public BrightcoveClosedCaptioningController(BaseVideoView paramBaseVideoView, Context paramContext)
  {
    super(paramBaseVideoView.getEventEmitter(), BrightcoveClosedCaptioningController.class);
    context = paramContext;
    videoPlayer = paramBaseVideoView;
    if ((paramContext instanceof Activity)) {
      activity = ((Activity)paramContext);
    }
    addListener("didSetVideo", didSetVideoListener);
    addListener("captionsAvailable", captionsAvailableListener);
    makeCaptionsDialog();
    if (Build.VERSION.SDK_INT >= 19) {
      initCaptioningManager();
    }
  }
  
  @TargetApi(19)
  private void addCaptioningChangeListener()
  {
    if (captioningManager != null)
    {
      captioningChangeListener = new CaptioningChangeListener(this);
      captioningManager.addCaptioningChangeListener(captioningChangeListener);
    }
  }
  
  private static URI getURIField(Map<String, String> paramMap, String paramString)
  {
    if ((paramMap != null) && (!StringUtil.isEmpty((String)paramMap.get(paramString)))) {
      return new URI((String)paramMap.get(paramString));
    }
    return null;
  }
  
  @TargetApi(19)
  private void initCaptioningManager()
  {
    captioningManager = ((CaptioningManager)context.getSystemService("captioning"));
    if (captioningManager != null) {
      saveClosedCaptioningState(captioningManager.isEnabled());
    }
  }
  
  @TargetApi(19)
  private void removeCaptioningChangeListener()
  {
    if ((captioningManager != null) && (captioningChangeListener != null))
    {
      captioningManager.removeCaptioningChangeListener(captioningChangeListener);
      captioningChangeListener = null;
    }
  }
  
  public void captionsDialogVisibleStatus()
  {
    if (captionsDialog.isShowing())
    {
      hideCaptionsDialog();
      return;
    }
    showCaptionsDialog();
  }
  
  public URI checkIfCaptionsExist(Video paramVideo)
  {
    if (paramVideo == null) {
      return null;
    }
    paramVideo = (Map)paramVideo.getProperties().get("customFields");
    try
    {
      paramVideo = getURIField(paramVideo, "captions_en");
      return paramVideo;
    }
    catch (URISyntaxException paramVideo)
    {
      for (;;)
      {
        paramVideo = null;
      }
    }
  }
  
  public void hideCaptionsDialog()
  {
    if (captionsDialog.isShowing()) {
      captionsDialog.dismiss();
    }
  }
  
  public void makeCaptionsDialog()
  {
    View localView = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(R.layout.caption_dialog, null);
    captionDialogMessage = ((TextView)localView.findViewById(R.id.captions_dialog_msg));
    captionDialogButton = ((Button)localView.findViewById(R.id.closed_captioning_dialog_btn));
    enableCaptionsButton = ((RadioButton)localView.findViewById(R.id.enable_captions_btn));
    disableCaptionsButton = ((RadioButton)localView.findViewById(R.id.disable_captions_btn));
    advancedOptionsLink = ((TextView)localView.findViewById(R.id.captions_dialog_options_link));
    captionDialogButton.setOnClickListener(closedCaptionDialogClickListener);
    enableCaptionsButton.setOnClickListener(setCaptionStateListener);
    disableCaptionsButton.setOnClickListener(setCaptionStateListener);
    advancedOptionsLink.setOnClickListener(advancedOptionsClickedListener);
    captionsDialog = new PopupWindow(context);
    captionsDialog.setContentView(localView);
    captionsDialog.setWidth(-2);
    captionsDialog.setHeight(-2);
    captionsDialog.setBackgroundDrawable(null);
  }
  
  public boolean readClosedCaptioningState()
  {
    return context.getSharedPreferences("ClosedCaptioningPlayerPreferences", 0).getBoolean("ClosedCaptioningEnabledState", false);
  }
  
  public void saveClosedCaptioningState(boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("boolean", Boolean.valueOf(paramBoolean));
    eventEmitter.emit("toggleClosedCaptions", localHashMap);
    context.getSharedPreferences("ClosedCaptioningPlayerPreferences", 0).edit().putBoolean("ClosedCaptioningEnabledState", paramBoolean).commit();
  }
  
  protected void setCaptionDialogMessage(int paramInt)
  {
    captionDialogMessage.setText(paramInt);
  }
  
  public void setHLS(boolean paramBoolean)
  {
    isHLS = paramBoolean;
  }
  
  public void setVideoHasCaptions(Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue())
    {
      setCaptionDialogMessage(R.string.closed_captioning_available);
      setVisibility(0);
      advancedOptionsLink.setVisibility(0);
      return;
    }
    setCaptionDialogMessage(R.string.closed_captioning_unavailable);
    setVisibility(8);
    advancedOptionsLink.setVisibility(8);
  }
  
  protected void setVisibility(int paramInt)
  {
    enableCaptionsButton.setVisibility(paramInt);
    disableCaptionsButton.setVisibility(paramInt);
  }
  
  public void showCaptionsDialog()
  {
    if (captionsDialog.isShowing()) {
      return;
    }
    enableCaptionsButton.setChecked(readClosedCaptioningState());
    Object localObject = disableCaptionsButton;
    if (!readClosedCaptioningState()) {}
    for (boolean bool = true;; bool = false)
    {
      ((RadioButton)localObject).setChecked(bool);
      localObject = new int[2];
      videoPlayer.getLocationInWindow((int[])localObject);
      View localView = captionsDialog.getContentView();
      localView.measure(0, 0);
      int k = localView.getMeasuredWidth();
      int j = localView.getMeasuredHeight();
      int i = localObject[0];
      k = (videoPlayer.getWidth() - k) / 2;
      int m = localObject[1];
      j = (videoPlayer.getHeight() - j) / 2;
      captionsDialog.showAtLocation(videoPlayer, 0, k + i, m + j);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.BrightcoveClosedCaptioningController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
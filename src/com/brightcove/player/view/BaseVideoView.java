package com.brightcove.player.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.controller.BrightcoveClosedCaptioningController;
import com.brightcove.player.controller.DefaultSourceSelectionController;
import com.brightcove.player.controller.MediaControlsVisibilityManager;
import com.brightcove.player.controller.VideoPlaybackController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.display.VideoStillDisplayComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventEmitterImpl;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.management.BrightcovePluginManager;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import com.brightcove.player.util.LayoutUtil;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@Emits(events={"didChangeList", "didSelectSource", "pause", "play", "prebufferNextVideo", "readyToPlay", "seekTo", "selectSource", "setSource", "setVideo", "stop", "willChangeVideo"})
@ListensFor(events={"activityCreated", "activitySaveInstanceState", "activityStarted", "adProgress", "bufferedUpdate", "completed", "didLoadCaptions", "didPause", "didPlay", "didSeekTo", "didSetSource", "didSetVideo", "didStop", "hideSeekControls", "progress", "seekTo", "showSeekControls", "sourceNotPlayable", "videoDurationChanged", "willChangeVideo", "willInterruptContent"})
public abstract class BaseVideoView
  extends FrameLayout
  implements MediaController.MediaPlayerControl, Component
{
  private static final String TAG = BaseVideoView.class.getSimpleName();
  protected View anchorView;
  private BrightcoveClosedCaptioningController brightcoveClosedCaptioningController;
  private BrightcoveClosedCaptioningView brightcoveClosedCaptioningView;
  private int bufferedPercent;
  private int currentIndex = -1;
  private boolean currentlyPlaying;
  protected int duration;
  protected EventEmitter eventEmitter;
  private boolean hasPendingPlay;
  private boolean hasSetSource;
  protected ImageView imageView;
  protected Map<String, Integer> listenerTokens = new HashMap();
  protected MediaController mediaController;
  private MediaControlsVisibilityManager mediaControlsVisibilityManager;
  protected MediaController.MediaPlayerControl mediaPlayerControl;
  private MediaPlayer.OnCompletionListener onCompletionListener;
  protected MediaPlayer.OnPreparedListener onPreparedListener;
  protected VideoPlaybackController playbackController;
  protected int playheadPosition;
  protected BrightcovePluginManager pluginManager;
  protected DefaultSourceSelectionController sourceController;
  protected VideoDisplayComponent videoDisplay;
  protected VideoStillDisplayComponent videoStillDisplay;
  private Map<Video, Source> videoToSourceMap = new HashMap();
  private ArrayList<Video> videos = new ArrayList();
  
  public BaseVideoView(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }
  
  public BaseVideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public BaseVideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  private void addSubtitlePair(Video paramVideo, Pair<InputStream, MediaFormat> paramPair)
  {
    List localList = (List)paramVideo.getProperties().get("subtitleSources");
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      paramVideo.getProperties().put("subtitleSources", localObject);
    }
    ((List)localObject).add(paramPair);
  }
  
  private void emitDidChangeList()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("list", videos);
    eventEmitter.emit("didChangeList", localHashMap);
  }
  
  private Video getCurrentVideo()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (currentIndex >= 0)
    {
      localObject1 = localObject2;
      if (currentIndex < videos.size()) {
        localObject1 = (Video)videos.get(currentIndex);
      }
    }
    return (Video)localObject1;
  }
  
  private boolean hasNextVideo()
  {
    return (videos.size() > 1) && (currentIndex + 1 < videos.size());
  }
  
  private void prebufferNextVideo()
  {
    if (hasNextVideo())
    {
      final Video localVideo = (Video)videos.get(currentIndex + 1);
      Object localObject = (Source)videoToSourceMap.get(localVideo);
      if (localObject != null)
      {
        EventUtil.emit(eventEmitter, "prebufferNextVideo", localVideo, (Source)localObject);
        return;
      }
      localObject = new HashMap();
      ((Map)localObject).put("video", localVideo);
      eventEmitter.request("selectSource", (Map)localObject, new EventListener()
      {
        public void processEvent(Event paramAnonymousEvent)
        {
          paramAnonymousEvent = (Source)properties.get("source");
          videoToSourceMap.put(localVideo, paramAnonymousEvent);
          EventUtil.emit(eventEmitter, "didSelectSource", localVideo, paramAnonymousEvent);
          EventUtil.emit(eventEmitter, "prebufferNextVideo", localVideo, paramAnonymousEvent);
        }
      });
      return;
    }
    eventEmitter.emit("prebufferNextVideo");
  }
  
  private void setCurrentIndexPrivate(final int paramInt)
  {
    if (paramInt == -1)
    {
      hasSetSource = false;
      if (currentIndex == -1) {
        return;
      }
    }
    final UUID localUUID = UUID.randomUUID();
    eventEmitter.once("willChangeVideo", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        if (properties.get("uuid").equals(localUUID))
        {
          resetMetaData();
          BaseVideoView.access$302(BaseVideoView.this, paramInt);
          paramAnonymousEvent = (Video)properties.get("nextVideo");
          if (paramAnonymousEvent != null) {
            EventUtil.emit(eventEmitter, "setVideo", paramAnonymousEvent);
          }
        }
        else
        {
          return;
        }
        eventEmitter.emit("setSource");
      }
    });
    HashMap localHashMap = new HashMap();
    localHashMap.put("index", Integer.valueOf(currentIndex));
    localHashMap.put("currentVideo", getCurrentVideo());
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramInt >= 0)
    {
      localObject1 = localObject2;
      if (paramInt < videos.size()) {
        localObject1 = (Video)videos.get(paramInt);
      }
    }
    localHashMap.put("nextVideo", localObject1);
    localHashMap.put("uuid", localUUID);
    eventEmitter.emit("willChangeVideo", localHashMap);
  }
  
  private void setCurrentlyPlaying(boolean paramBoolean)
  {
    currentlyPlaying = paramBoolean;
    if (mediaController != null) {
      mediaController.setMediaPlayer(this);
    }
  }
  
  private void updateIndex(int paramInt1, int paramInt2)
  {
    if ((currentIndex == -1) || (currentIndex == paramInt1)) {
      setCurrentIndexPrivate(paramInt1);
    }
    do
    {
      return;
      if (paramInt1 < currentIndex)
      {
        currentIndex += paramInt2;
        return;
      }
    } while ((currentIndex < 0) || (currentIndex + 1 != paramInt1) || (!currentlyPlaying));
    prebufferNextVideo();
  }
  
  public void add(int paramInt, Video paramVideo)
  {
    videos.add(paramInt, paramVideo);
    emitDidChangeList();
    updateIndex(paramInt, 1);
  }
  
  public void add(Video paramVideo)
  {
    add(videos.size(), paramVideo);
  }
  
  public void addAll(int paramInt, Collection<Video> paramCollection)
  {
    videos.addAll(paramInt, paramCollection);
    emitDidChangeList();
    updateIndex(paramInt, paramCollection.size());
  }
  
  public void addAll(Collection<Video> paramCollection)
  {
    addAll(videos.size(), paramCollection);
  }
  
  public void addListener(String paramString, EventListener paramEventListener)
  {
    listenerTokens.put(paramString, Integer.valueOf(eventEmitter.on(paramString, paramEventListener)));
  }
  
  @TargetApi(19)
  public void addSubtitleSource(final InputStream paramInputStream, MediaFormat paramMediaFormat)
  {
    Video localVideo = getCurrentVideo();
    paramInputStream = Pair.create(paramInputStream, paramMediaFormat);
    if (localVideo != null)
    {
      addSubtitlePair(localVideo, paramInputStream);
      return;
    }
    eventEmitter.once("willChangeVideo", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        paramAnonymousEvent = (Video)properties.get("nextVideo");
        if (paramAnonymousEvent != null) {
          BaseVideoView.this.addSubtitlePair(paramAnonymousEvent, paramInputStream);
        }
      }
    });
  }
  
  protected void attachMediaController()
  {
    new StringBuilder("attachMediaController: mediaPlayer = ").append(videoDisplay.getMediaPlayer()).append(", mediaController = ").append(mediaController);
    Object localObject;
    if (mediaController != null)
    {
      if (anchorView == null)
      {
        if (!(getParent() instanceof View)) {
          break label147;
        }
        localObject = (View)getParent();
        mediaController.setAnchorView((View)localObject);
      }
      if (mediaPlayerControl != null) {
        break label152;
      }
      mediaController.setMediaPlayer(new MediaController.MediaPlayerControl()
      {
        public boolean canPause()
        {
          return BaseVideoView.this.canPause();
        }
        
        public boolean canSeekBackward()
        {
          return BaseVideoView.this.canSeekBackward();
        }
        
        public boolean canSeekForward()
        {
          return BaseVideoView.this.canSeekForward();
        }
        
        public int getAudioSessionId()
        {
          return 0;
        }
        
        public int getBufferPercentage()
        {
          return BaseVideoView.this.getBufferPercentage();
        }
        
        public int getCurrentPosition()
        {
          return BaseVideoView.this.getCurrentPosition() / 1000;
        }
        
        public int getDuration()
        {
          return BaseVideoView.this.getDuration() / 1000;
        }
        
        public boolean isPlaying()
        {
          return BaseVideoView.this.isPlaying();
        }
        
        public void pause()
        {
          BaseVideoView.this.pause();
        }
        
        public void seekTo(int paramAnonymousInt)
        {
          BaseVideoView.this.seekTo(paramAnonymousInt * 1000);
        }
        
        public void start()
        {
          BaseVideoView.this.start();
        }
      });
    }
    for (;;)
    {
      if (videoDisplay.getMediaPlayer() != null)
      {
        mediaController.setEnabled(true);
        mediaControlsVisibilityManager.setVisibilityState();
        showMediaController();
        if (playheadPosition > 0) {
          videoDisplay.getMediaPlayer().seekTo(playheadPosition);
        }
      }
      return;
      label147:
      localObject = this;
      break;
      label152:
      mediaController.setMediaPlayer(mediaPlayerControl);
    }
  }
  
  public boolean canPause()
  {
    return true;
  }
  
  public boolean canSeekBackward()
  {
    return true;
  }
  
  public boolean canSeekForward()
  {
    return true;
  }
  
  public void clear()
  {
    if (videos.size() > 0) {}
    for (int i = 1;; i = 0)
    {
      videos.clear();
      videoToSourceMap.clear();
      setCurrentIndexPrivate(-1);
      if (i != 0) {
        emitDidChangeList();
      }
      return;
    }
  }
  
  public void clearOnCompletionListener()
  {
    onCompletionListener = null;
  }
  
  public void clearOnPreparedListener()
  {
    onPreparedListener = null;
  }
  
  public Video get(int paramInt)
  {
    return (Video)videos.get(paramInt);
  }
  
  public Analytics getAnalytics()
  {
    Analytics localAnalytics = null;
    if (videoDisplay != null) {
      localAnalytics = videoDisplay.getAnalytics();
    }
    return localAnalytics;
  }
  
  public int getAudioSessionId()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    return bufferedPercent;
  }
  
  public BrightcoveClosedCaptioningController getClosedCaptioningController()
  {
    return brightcoveClosedCaptioningController;
  }
  
  public BrightcoveClosedCaptioningView getClosedCaptioningView()
  {
    return brightcoveClosedCaptioningView;
  }
  
  public int getCurrentIndex()
  {
    return currentIndex;
  }
  
  public int getCurrentPosition()
  {
    return playheadPosition;
  }
  
  public int getDuration()
  {
    return duration;
  }
  
  public EventEmitter getEventEmitter()
  {
    if (eventEmitter == null) {
      return null;
    }
    return ((RegisteringEventEmitter)eventEmitter).getRootEmitter();
  }
  
  public List<Video> getList()
  {
    return Collections.unmodifiableList(videos);
  }
  
  public MediaController getMediaController()
  {
    return mediaController;
  }
  
  public VideoPlaybackController getPlaybackController()
  {
    return playbackController;
  }
  
  public abstract RenderView getRenderView();
  
  public DefaultSourceSelectionController getSourceController()
  {
    return sourceController;
  }
  
  public VideoDisplayComponent getVideoDisplay()
  {
    return videoDisplay;
  }
  
  public abstract int getVideoHeight();
  
  public VideoStillDisplayComponent getVideoStillDisplay()
  {
    return videoStillDisplay;
  }
  
  public abstract int getVideoWidth();
  
  protected void init(Context paramContext)
  {
    mediaControlsVisibilityManager = new MediaControlsVisibilityManager(this);
    resetMetaData();
    playheadPosition = -1;
    setClickable(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    imageView = new ImageView(paramContext);
    addView(imageView);
  }
  
  protected void initListeners()
  {
    mediaControlsVisibilityManager.initListeners(eventEmitter);
    addListener("sourceNotPlayable", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        eventEmitter.emit("stop");
      }
    });
    addListener("videoDurationChanged", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        int i = paramAnonymousEvent.getIntegerProperty("duration");
        if (i > 0)
        {
          String.format("videoDurationChanged: changing duration to %d.", new Object[] { Integer.valueOf(i) });
          duration = i;
          showMediaController();
        }
      }
    });
    OnProgressListener localOnProgressListener = new OnProgressListener();
    addListener("progress", localOnProgressListener);
    addListener("adProgress", localOnProgressListener);
    addListener("didSetSource", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        onPrepared();
        attachMediaController();
        paramAnonymousEvent = (Video)properties.get("video");
        if ((paramAnonymousEvent != null) && (!paramAnonymousEvent.equals(BaseVideoView.this.getCurrentVideo())) && (videos.indexOf(paramAnonymousEvent) >= 0)) {
          BaseVideoView.access$308(BaseVideoView.this);
        }
        BaseVideoView.access$402(BaseVideoView.this, true);
        if (hasPendingPlay)
        {
          BaseVideoView.access$502(BaseVideoView.this, false);
          eventEmitter.emit("play");
        }
      }
    });
    addListener("didSetVideo", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        paramAnonymousEvent = (Video)properties.get("video");
        setupClosedCaptioningRendering(paramAnonymousEvent);
      }
    });
    addListener("completed", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        if (onCompletionListener != null) {
          onCompletionListener.onCompletion(null);
        }
        playheadPosition = 0;
        BaseVideoView.this.setCurrentlyPlaying(false);
      }
    });
    addListener("bufferedUpdate", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        BaseVideoView.access$802(BaseVideoView.this, paramAnonymousEvent.getIntegerProperty("percentComplete"));
      }
    });
    addListener("seekTo", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        int i = paramAnonymousEvent.getIntegerProperty("seekPosition");
        if (i >= 0) {
          playheadPosition = i;
        }
      }
    });
    addListener("didSeekTo", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        int i = paramAnonymousEvent.getIntegerProperty("playheadPosition");
        if (i >= 0) {
          playheadPosition = i;
        }
      }
    });
    addListener("didPlay", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        BaseVideoView.this.setCurrentlyPlaying(true);
        showMediaController();
        BaseVideoView.this.prebufferNextVideo();
      }
    });
    addListener("didStop", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        resetMetaData();
      }
    });
    addListener("didPause", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        BaseVideoView.this.setCurrentlyPlaying(false);
      }
    });
    addListener("willInterruptContent", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        if (mediaController != null)
        {
          mediaController.hide();
          eventEmitter.once("progress", new EventListener()
          {
            public void processEvent(Event paramAnonymous2Event)
            {
              mediaController.show();
            }
          });
        }
      }
    });
    addListener("didLoadCaptions", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        if ((properties.containsKey("ttmlDocument")) || (properties.containsKey("webvttDocument"))) {
          addView(brightcoveClosedCaptioningView);
        }
        while (brightcoveClosedCaptioningView == null) {
          return;
        }
        removeView(brightcoveClosedCaptioningView);
      }
    });
  }
  
  public boolean isPlaying()
  {
    return currentlyPlaying;
  }
  
  public void onControllerHide() {}
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (eventEmitter == null) {
      setEventEmitter(new EventEmitterImpl());
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    new StringBuilder("onLayout: changed = ").append(paramBoolean).append(", left = ").append(paramInt1).append(", top = ").append(paramInt2).append(", right = ").append(paramInt3).append(", bottom = ").append(paramInt4);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt1);
    int k = View.MeasureSpec.getSize(paramInt2);
    int m = View.MeasureSpec.getMode(paramInt2);
    new StringBuilder("onMeasure: width = ").append(i).append(", height = ").append(k).append(", videoWidth = ").append(getVideoWidth()).append(", videoHeight = ").append(getVideoHeight()).append(", widthMode = ").append(LayoutUtil.getSpecMode(j)).append(", heightMode = ").append(LayoutUtil.getSpecMode(m));
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onPrepared()
  {
    if (onPreparedListener != null) {
      onPreparedListener.onPrepared(videoDisplay.getMediaPlayer());
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    new StringBuilder("onSizeChanged: width = ").append(paramInt1).append(", height = ").append(paramInt2).append(", oldw = ").append(paramInt3).append(", oldh = ").append(paramInt4);
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void pause()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
    eventEmitter.emit("pause", localHashMap);
  }
  
  public void remove(int paramInt)
  {
    Video localVideo = (Video)videos.remove(paramInt);
    videoToSourceMap.remove(localVideo);
    if (currentIndex > paramInt) {
      currentIndex -= 1;
    }
    for (;;)
    {
      emitDidChangeList();
      return;
      if (videos.isEmpty()) {
        setCurrentIndexPrivate(-1);
      } else if (currentIndex == paramInt)
      {
        if (paramInt == videos.size()) {
          setCurrentIndex(paramInt - 1);
        } else if (paramInt < videos.size()) {
          setCurrentIndexPrivate(paramInt);
        }
      }
      else if ((currentIndex + 1 == paramInt) && (currentlyPlaying)) {
        prebufferNextVideo();
      }
    }
  }
  
  public void removeListener(String paramString)
  {
    eventEmitter.off(paramString, ((Integer)listenerTokens.get(paramString)).intValue());
  }
  
  public void removeListeners()
  {
    Iterator localIterator = listenerTokens.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      eventEmitter.off(str, ((Integer)listenerTokens.get(str)).intValue());
    }
    listenerTokens.clear();
  }
  
  protected void resetMetaData()
  {
    bufferedPercent = 0;
    playheadPosition = 0;
    duration = -1;
    setCurrentlyPlaying(false);
  }
  
  public void seekTo(int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("seekPosition", Integer.valueOf(paramInt));
    playheadPosition = paramInt;
    eventEmitter.emit("seekTo", localHashMap);
  }
  
  protected void setChildLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (imageView.getVisibility() == 0)
    {
      paramLayoutParams = new FrameLayout.LayoutParams(width, height);
      gravity = 17;
      imageView.setLayoutParams(paramLayoutParams);
    }
  }
  
  public void setCurrentIndex(int paramInt)
  {
    if (paramInt == currentIndex) {
      return;
    }
    if ((paramInt < 0) || (paramInt >= videos.size())) {
      throw new IndexOutOfBoundsException();
    }
    setCurrentIndexPrivate(paramInt);
  }
  
  public void setEventEmitter(EventEmitter paramEventEmitter)
  {
    eventEmitter = RegisteringEventEmitter.build(paramEventEmitter, getClass());
    playbackController = new VideoPlaybackController(paramEventEmitter);
    sourceController = new DefaultSourceSelectionController(paramEventEmitter);
    videoStillDisplay = new VideoStillDisplayComponent(imageView, paramEventEmitter);
    pluginManager = new BrightcovePluginManager(paramEventEmitter);
    brightcoveClosedCaptioningController = new BrightcoveClosedCaptioningController(this, getContext());
    initListeners();
  }
  
  public void setLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    new StringBuilder("setLayoutParams: ").append(paramLayoutParams);
    super.setLayoutParams(paramLayoutParams);
    if (paramLayoutParams != null) {
      setChildLayoutParams(paramLayoutParams);
    }
  }
  
  public void setMediaController(MediaController paramMediaController)
  {
    setMediaController(paramMediaController, null, null);
  }
  
  public void setMediaController(MediaController paramMediaController, View paramView, MediaController.MediaPlayerControl paramMediaPlayerControl)
  {
    if (mediaController != null) {
      mediaController.hide();
    }
    mediaController = paramMediaController;
    mediaPlayerControl = paramMediaPlayerControl;
    anchorView = paramView;
    attachMediaController();
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    onCompletionListener = paramOnCompletionListener;
  }
  
  public void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    onPreparedListener = paramOnPreparedListener;
  }
  
  public void setVideoPath(String paramString)
  {
    if (hasNextVideo()) {
      eventEmitter.emit("prebufferNextVideo");
    }
    videos.clear();
    videoToSourceMap.clear();
    add(Video.createVideo(paramString));
  }
  
  public void setVideoPath(String paramString1, String paramString2)
  {
    if (hasNextVideo()) {
      eventEmitter.emit("prebufferNextVideo");
    }
    videos.clear();
    videoToSourceMap.clear();
    if (paramString1 != null)
    {
      paramString1 = Video.createVideo(paramString1);
      if (paramString2 != null) {
        paramString1.getProperties().put("customFields", paramString2);
      }
      add(paramString1);
    }
  }
  
  public void setVideoURI(Uri paramUri)
  {
    setVideoPath(paramUri.toString());
  }
  
  protected void setupClosedCaptioningRendering(Video paramVideo)
  {
    if ((brightcoveClosedCaptioningController != null) && (brightcoveClosedCaptioningController.checkIfCaptionsExist(paramVideo) != null))
    {
      if (brightcoveClosedCaptioningView == null)
      {
        brightcoveClosedCaptioningView = new BrightcoveClosedCaptioningView(getContext());
        brightcoveClosedCaptioningView.initialize(eventEmitter, this);
      }
    }
    else {
      return;
    }
    brightcoveClosedCaptioningView.clear();
    brightcoveClosedCaptioningView.prepareLayout();
  }
  
  protected abstract void showMediaController();
  
  public void start()
  {
    if (hasSetSource)
    {
      hasPendingPlay = false;
      localHashMap = new HashMap();
      localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
      eventEmitter.emit("play", localHashMap);
    }
    while (videos.isEmpty())
    {
      HashMap localHashMap;
      return;
    }
    hasPendingPlay = true;
  }
  
  public void stopPlayback()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
    eventEmitter.emit("stop", localHashMap);
  }
  
  public class OnProgressListener
    implements EventListener
  {
    protected OnProgressListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      if (isPlaying())
      {
        int i = paramEvent.getIntegerProperty("duration");
        if ((i >= 0) && (i != duration))
        {
          String.format("Changing duration to %d.", new Object[] { Integer.valueOf(i) });
          duration = i;
          showMediaController();
        }
        i = paramEvent.getIntegerProperty("playheadPosition");
        if ((i >= 0) && (i != playheadPosition))
        {
          String.format("Changing playheadPosition to %d.", new Object[] { Integer.valueOf(i) });
          playheadPosition = i;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
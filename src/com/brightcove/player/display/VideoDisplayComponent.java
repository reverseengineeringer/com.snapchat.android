package com.brightcove.player.display;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.media.SubtitleController;
import android.media.SubtitleController.Anchor;
import android.media.WebVttRenderer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.EventUtil;
import com.brightcove.player.view.RenderView;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@Emits(events={"bufferedUpdate", "completed", "didInterruptContent", "didPause", "didPlay", "didResumeContent", "didSeekTo", "didSetSource", "didStop", "error", "pause", "play", "progress", "sourceNotPlayable", "stop", "videoDurationChanged", "videoSizeKnown", "willChangeVideo"})
@ListensFor(events={"completed", "didSetSource", "pause", "play", "prebufferNextVideo", "seekTo", "setSource", "stop", "videoDurationChanged", "willChangeVideo", "willInterruptContent", "willResumeContent", "readyToPlay", "setVolume"})
public class VideoDisplayComponent
  extends AbstractComponent
{
  private static final ScheduledExecutorService EXECUTOR = Executors.newScheduledThreadPool(1);
  protected static final int ON_PLAY_SEEK_THRESHOLD = 1000;
  private static final int PROGRESS_INTERVAL = 500;
  private static final String TAG = VideoDisplayComponent.class.getSimpleName();
  private Analytics analytics;
  protected Context context;
  protected Source currentSource;
  protected Video currentVideo;
  protected int duration;
  private int fromSeekPosition;
  private boolean hasErrored;
  private boolean hasPlaybackStarted;
  private boolean hasPrepared;
  protected boolean hasSurface;
  private MediaPlayer mediaPlayer;
  protected Source nextSource;
  protected Video nextVideo;
  MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener()
  {
    public void onBufferingUpdate(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt)
    {
      paramAnonymousMediaPlayer = new HashMap();
      paramAnonymousMediaPlayer.put("percentComplete", Integer.valueOf(paramAnonymousInt));
      eventEmitter.emit("bufferedUpdate", paramAnonymousMediaPlayer);
    }
  };
  OnCompletedListener onCompletedListener;
  MediaPlayer.OnCompletionListener onCompletionListener = new MediaPlayer.OnCompletionListener()
  {
    public void onCompletion(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (!hasErrored)
      {
        HashMap localHashMap = new HashMap();
        if ((paramAnonymousMediaPlayer != null) && (hasPrepared) && (hasSurface))
        {
          localHashMap.put("playheadPosition", Integer.valueOf(paramAnonymousMediaPlayer.getDuration()));
          localHashMap.put("duration", Integer.valueOf(paramAnonymousMediaPlayer.getDuration()));
        }
        localHashMap.put("video", currentVideo);
        eventEmitter.emit("completed", localHashMap);
      }
      if ((currentSource != null) && (currentSource.getDeliveryType() == DeliveryType.HLS)) {
        destroyPlayer();
      }
    }
  };
  MediaPlayer.OnErrorListener onErrorListener = new MediaPlayer.OnErrorListener()
  {
    public boolean onError(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      switch (paramAnonymousInt1)
      {
      default: 
        VideoDisplayComponent.access$3202(VideoDisplayComponent.this, true);
        paramAnonymousMediaPlayer = new HashMap();
        paramAnonymousMediaPlayer.put("video", currentVideo);
        paramAnonymousMediaPlayer.put("source", currentSource);
        paramAnonymousMediaPlayer.put("errorCode", Integer.valueOf(paramAnonymousInt1));
        paramAnonymousMediaPlayer.put("errorExtra", Integer.valueOf(paramAnonymousInt2));
        paramAnonymousMediaPlayer.put("errorMessage", "MediaPlayer " + ErrorUtil.getMessage("error"));
        eventEmitter.emit("sourceNotPlayable", paramAnonymousMediaPlayer);
      }
      return false;
    }
  };
  MediaPlayer.OnInfoListener onInfoListener = new MediaPlayer.OnInfoListener()
  {
    public boolean onInfo(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      switch (paramAnonymousInt1)
      {
      }
      for (;;)
      {
        return true;
        continue;
        continue;
        continue;
        continue;
        continue;
        continue;
        continue;
        continue;
      }
    }
  };
  OnPauseListener onPauseListener;
  OnPlayListener onPlayListener;
  OnPrebufferNextVideoListener onPrebufferNextVideoListener;
  MediaPlayer.OnPreparedListener onPreparedListener = new MediaPlayer.OnPreparedListener()
  {
    public void onPrepared(MediaPlayer paramAnonymousMediaPlayer)
    {
      if (!hasErrored)
      {
        VideoDisplayComponent.access$802(VideoDisplayComponent.this, true);
        if ((currentSource.getDeliveryType() != DeliveryType.HLS) && (currentSource.getDeliveryType() != DeliveryType.WVM)) {
          EventUtil.emit(eventEmitter, "didSetSource", currentVideo, currentSource);
        }
        emitVideoSize(paramAnonymousMediaPlayer.getVideoWidth(), paramAnonymousMediaPlayer.getVideoHeight());
        HashMap localHashMap = new HashMap();
        localHashMap.put("video", currentVideo);
        localHashMap.put("source", currentSource);
        localHashMap.put("duration", Integer.valueOf(paramAnonymousMediaPlayer.getDuration()));
        eventEmitter.emit("videoDurationChanged", localHashMap);
      }
    }
  };
  MediaPlayer.OnSeekCompleteListener onSeekCompleteListener = new MediaPlayer.OnSeekCompleteListener()
  {
    public void onSeekComplete(MediaPlayer paramAnonymousMediaPlayer)
    {
      new StringBuilder("onSeekComplete: fromSeekPosition = ").append(fromSeekPosition).append(", seekPosition = ").append(seekPosition).append(", currentPosition = ").append(paramAnonymousMediaPlayer.getCurrentPosition());
      if ((paramAnonymousMediaPlayer.getCurrentPosition() < seekPosition) && (!reseeking))
      {
        paramAnonymousMediaPlayer.seekTo(seekPosition);
        reseeking = true;
      }
      while (fromSeekPosition == -1) {
        return;
      }
      HashMap localHashMap = new HashMap();
      localHashMap.put("playheadPosition", Integer.valueOf(paramAnonymousMediaPlayer.getCurrentPosition()));
      localHashMap.put("seekPosition", Integer.valueOf(seekPosition));
      localHashMap.put("fromSeekPosition", Integer.valueOf(fromSeekPosition));
      localHashMap.put("video", currentVideo);
      eventEmitter.emit("didSeekTo", localHashMap);
      VideoDisplayComponent.access$2102(VideoDisplayComponent.this, -1);
      reseeking = false;
    }
  };
  OnSeekListener onSeekListener;
  OnSetSourceListener onSetSourceListener;
  OnSetVolumeListener onSetVolumeListener;
  OnStopListener onStopListener;
  MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener()
  {
    public void onVideoSizeChanged(MediaPlayer paramAnonymousMediaPlayer, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if ((paramAnonymousInt1 != 0) && (paramAnonymousInt2 != 0)) {
        emitVideoSize(paramAnonymousInt1, paramAnonymousInt2);
      }
    }
  };
  OnWillInterruptContentListener onWillInterruptContentListener;
  OnWillResumeContentListener onWillResumeContentListener;
  protected int playheadPosition;
  protected RenderView renderView;
  protected boolean reseeking;
  protected int seekPosition;
  protected int seekPositionWhenPrepared;
  protected ScheduledFuture<?> updater;
  
  public VideoDisplayComponent(RenderView paramRenderView, EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, VideoDisplayComponent.class);
    if ((paramRenderView == null) || (paramEventEmitter == null)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("renderViewAndEventEmitterRequired"));
    }
    analytics = new Analytics(paramEventEmitter, paramRenderView.getContext());
    renderView = paramRenderView;
    context = paramRenderView.getContext();
    setHolderType();
    initializeListeners();
  }
  
  private void createPlayer(Video paramVideo, Source paramSource)
  {
    SurfaceHolder localSurfaceHolder = renderView.getHolder();
    for (;;)
    {
      try
      {
        mediaPlayer = new MediaPlayer();
        if (localSurfaceHolder != null)
        {
          mediaPlayer.setDisplay(localSurfaceHolder);
          mediaPlayer.setOnPreparedListener(onPreparedListener);
          mediaPlayer.setOnVideoSizeChangedListener(onVideoSizeChangedListener);
          mediaPlayer.setOnCompletionListener(onCompletionListener);
          mediaPlayer.setOnSeekCompleteListener(onSeekCompleteListener);
          mediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
          mediaPlayer.setOnErrorListener(onErrorListener);
          mediaPlayer.setOnInfoListener(onInfoListener);
          mediaPlayer.setScreenOnWhilePlaying(true);
          if (Build.VERSION.SDK_INT >= 14)
          {
            setDataSource(mediaPlayer, context, Uri.parse(paramSource.getUrl()), getHeaders(paramVideo, paramSource));
            if ((Build.VERSION.SDK_INT >= 19) && (paramVideo.getProperties().containsKey("subtitleSources"))) {
              setupSubtitles(paramVideo, mediaPlayer);
            }
            mediaPlayer.prepareAsync();
            playheadPosition = 0;
            duration = 0;
          }
        }
        else
        {
          setSurface(mediaPlayer, renderView.getSurface());
          continue;
        }
        getHeaders(paramVideo, paramSource);
      }
      catch (IOException paramVideo)
      {
        eventEmitter.emit("error", Collections.singletonMap("error", paramVideo));
        return;
      }
      mediaPlayer.setDataSource(context, Uri.parse(paramSource.getUrl()));
    }
  }
  
  protected static Map<String, String> getHeaders(Video paramVideo, Source paramSource)
  {
    Map localMap = null;
    try
    {
      for (paramVideo = (Map)paramVideo.getProperties().get("headers");; paramVideo = paramSource)
      {
        try
        {
          localMap = (Map)paramSource.getProperties().get("headers");
          if (localMap == null) {
            break label68;
          }
          paramSource = localMap;
          if (paramVideo == null) {
            continue;
          }
          paramVideo.putAll(localMap);
        }
        catch (Exception paramSource)
        {
          label68:
          for (;;) {}
        }
        new StringBuilder("headers = ").append(paramVideo);
        return paramVideo;
        paramSource = paramVideo;
      }
    }
    catch (Exception paramVideo)
    {
      for (;;)
      {
        paramVideo = localMap;
      }
    }
  }
  
  private void play(final int paramInt)
  {
    new StringBuilder("play: position = ").append(paramInt).append(", playheadPosition = ").append(playheadPosition).append(", seekPositionWhenPrepared = ").append(seekPositionWhenPrepared);
    if (hasSurface)
    {
      SurfaceHolder localSurfaceHolder = renderView.getHolder();
      if (localSurfaceHolder != null)
      {
        mediaPlayer.setDisplay(localSurfaceHolder);
        if ((paramInt < 0) || (Math.abs(paramInt - playheadPosition) <= 1000)) {
          break label151;
        }
        fromSeekPosition = -1;
        seekPosition = paramInt;
        mediaPlayer.seekTo(paramInt);
      }
      for (;;)
      {
        seekPositionWhenPrepared = -1;
        if (updater == null) {
          startUpdater();
        }
        mediaPlayer.start();
        return;
        setSurface(mediaPlayer, renderView.getSurface());
        break;
        label151:
        if ((seekPositionWhenPrepared >= 0) && (Math.abs(seekPositionWhenPrepared - playheadPosition) > 1000))
        {
          fromSeekPosition = playheadPosition;
          mediaPlayer.seekTo(seekPositionWhenPrepared);
        }
      }
    }
    eventEmitter.once("readyToPlay", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        VideoDisplayComponent.this.play(paramInt);
      }
    });
  }
  
  @SuppressLint({"NewApi"})
  @TargetApi(14)
  private void setDataSource(MediaPlayer paramMediaPlayer, Context paramContext, Uri paramUri, Map<String, String> paramMap)
  {
    paramMediaPlayer.setDataSource(paramContext, paramUri, paramMap);
  }
  
  private void setHolderType()
  {
    if (Build.VERSION.SDK_INT <= 10)
    {
      SurfaceHolder localSurfaceHolder = renderView.getHolder();
      if (localSurfaceHolder != null) {
        localSurfaceHolder.setType(3);
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  @TargetApi(14)
  private void setSurface(MediaPlayer paramMediaPlayer, Surface paramSurface)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      paramMediaPlayer.setSurface(paramSurface);
    }
  }
  
  @TargetApi(19)
  private void setupSubtitles(Video paramVideo, MediaPlayer paramMediaPlayer)
  {
    paramVideo = (List)paramVideo.getProperties().get("subtitleSources");
    if (paramVideo != null)
    {
      Object localObject = new SubtitleController(context, paramMediaPlayer.getMediaTimeProvider(), paramMediaPlayer);
      ((SubtitleController)localObject).registerRenderer(new WebVttRenderer(context));
      paramMediaPlayer.setSubtitleAnchor((SubtitleController)localObject, (SubtitleController.Anchor)renderView);
      paramVideo = paramVideo.iterator();
      while (paramVideo.hasNext())
      {
        localObject = (Pair)paramVideo.next();
        try
        {
          paramMediaPlayer.addSubtitleSource((InputStream)first, (MediaFormat)second);
        }
        catch (IllegalStateException localIllegalStateException)
        {
          onInfoListener.onInfo(paramMediaPlayer, 901, 0);
        }
      }
    }
  }
  
  protected void destroyPlayer()
  {
    stopUpdater();
    if (mediaPlayer != null)
    {
      mediaPlayer.release();
      mediaPlayer = null;
      hasPrepared = false;
      hasErrored = false;
    }
  }
  
  protected void emitVideoSize(int paramInt1, int paramInt2)
  {
    new StringBuilder("emitVideoSize: ").append(paramInt1).append(", ").append(paramInt2).append(", ").append(renderView.getWidth()).append(", ").append(renderView.getHeight());
    if ((paramInt1 > 0) && (paramInt2 > 0) && ((paramInt1 != renderView.getVideoWidth()) || (paramInt2 != renderView.getVideoHeight())))
    {
      renderView.setVideoSize(paramInt1, paramInt2);
      HashMap localHashMap = new HashMap();
      localHashMap.put("width", Integer.valueOf(paramInt1));
      localHashMap.put("height", Integer.valueOf(paramInt2));
      eventEmitter.emit("videoSizeKnown", localHashMap);
    }
  }
  
  public Analytics getAnalytics()
  {
    return analytics;
  }
  
  public MediaPlayer getMediaPlayer()
  {
    return mediaPlayer;
  }
  
  public RenderView getRenderView()
  {
    return renderView;
  }
  
  @Deprecated
  public SurfaceView getSurfaceView()
  {
    SurfaceView localSurfaceView = null;
    if ((renderView instanceof SurfaceView)) {
      localSurfaceView = (SurfaceView)renderView;
    }
    return localSurfaceView;
  }
  
  protected void initializeListeners()
  {
    onSetSourceListener = new OnSetSourceListener();
    onPlayListener = new OnPlayListener(null);
    onPauseListener = new OnPauseListener(null);
    onSeekListener = new OnSeekListener();
    onStopListener = new OnStopListener();
    onPrebufferNextVideoListener = new OnPrebufferNextVideoListener(null);
    onCompletedListener = new OnCompletedListener(null);
    onWillInterruptContentListener = new OnWillInterruptContentListener(null);
    onWillResumeContentListener = new OnWillResumeContentListener(null);
    onSetVolumeListener = new OnSetVolumeListener(null);
    addListener("setSource", onSetSourceListener);
    addListener("play", onPlayListener);
    addListener("seekTo", onSeekListener);
    addListener("pause", onPauseListener);
    addListener("stop", onStopListener);
    addListener("prebufferNextVideo", onPrebufferNextVideoListener);
    addListener("completed", onCompletedListener);
    addListener("willInterruptContent", onWillInterruptContentListener);
    addListener("willResumeContent", onWillResumeContentListener);
    addListener("setVolume", onSetVolumeListener);
  }
  
  public void onSurfaceTextureAvailable(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2)
  {
    surfaceCreated(null);
  }
  
  public void onSurfaceTextureDestroyed(SurfaceTexture paramSurfaceTexture)
  {
    surfaceDestroyed(null);
  }
  
  public void onSurfaceTextureSizeChanged(SurfaceTexture paramSurfaceTexture, int paramInt1, int paramInt2) {}
  
  public void onSurfaceTextureUpdated(SurfaceTexture paramSurfaceTexture) {}
  
  protected void openVideo(final Video paramVideo, final Source paramSource)
  {
    Object localObject = paramSource.getUrl();
    if ((localObject != null) && (!((String)localObject).trim().equals("")))
    {
      destroyPlayer();
      hasPlaybackStarted = false;
      localObject = renderView.getSurface();
      new StringBuilder("openVideo: surface = ").append(localObject).append(", hasSurface = ").append(hasSurface);
      if ((localObject != null) && (hasSurface))
      {
        createPlayer(paramVideo, paramSource);
        return;
      }
      eventEmitter.once("readyToPlay", new EventListener()
      {
        public void processEvent(Event paramAnonymousEvent)
        {
          VideoDisplayComponent.this.createPlayer(paramVideo, paramSource);
        }
      });
      return;
    }
    throw new IllegalArgumentException(ErrorUtil.getMessage("invalidURL"));
  }
  
  protected void startUpdater()
  {
    updater = EXECUTOR.scheduleAtFixedRate(new Runnable()
    {
      public void run()
      {
        try
        {
          if ((mediaPlayer != null) && (hasPrepared) && (hasSurface) && (mediaPlayer.isPlaying()) && (mediaPlayer.getCurrentPosition() >= 0))
          {
            HashMap localHashMap = new HashMap(4);
            localHashMap.put("video", currentVideo);
            playheadPosition = mediaPlayer.getCurrentPosition();
            localHashMap.put("playheadPosition", Integer.valueOf(playheadPosition));
            duration = mediaPlayer.getDuration();
            localHashMap.put("duration", Integer.valueOf(duration));
            eventEmitter.emit("progress", localHashMap);
            if ((playheadPosition > 0) && (!hasPlaybackStarted))
            {
              localHashMap.put("source", currentSource);
              eventEmitter.emit("didPlay", localHashMap);
              VideoDisplayComponent.access$1002(VideoDisplayComponent.this, true);
            }
          }
          return;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          destroyPlayer();
          new StringBuilder("Media player position sampled when it was in an invalid state: ").append(localIllegalStateException.getMessage());
          eventEmitter.emit("error", Collections.singletonMap("error", localIllegalStateException));
          return;
        }
        catch (Exception localException)
        {
          destroyPlayer();
          new StringBuilder("Error monitoring playback progress").append(localException.getMessage());
          eventEmitter.emit("error", Collections.singletonMap("error", localException));
        }
      }
    }, 0L, 500L, TimeUnit.MILLISECONDS);
  }
  
  protected void stopUpdater()
  {
    new StringBuilder("stopUpdater: ").append(updater);
    if (updater != null)
    {
      updater.cancel(false);
      updater = null;
    }
  }
  
  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((mediaPlayer != null) && (paramSurfaceHolder != null))
    {
      if (paramSurfaceHolder.getSurface() == null) {
        break label34;
      }
      mediaPlayer.setDisplay(paramSurfaceHolder);
    }
    for (;;)
    {
      hasSurface = true;
      return;
      label34:
      paramSurfaceHolder = ErrorUtil.getMessage("invalidSurface");
      eventEmitter.emit("error", Collections.singletonMap("errorMessage", paramSurfaceHolder));
    }
  }
  
  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    hasSurface = true;
  }
  
  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    if (mediaPlayer != null)
    {
      if (Boolean.valueOf(System.getProperty("releaseWhenSurfaceDestroyed")).booleanValue()) {
        break label65;
      }
      if (mediaPlayer.isPlaying())
      {
        if ((currentSource == null) || (currentSource.getDeliveryType() == DeliveryType.HLS)) {
          break label65;
        }
        mediaPlayer.pause();
      }
    }
    for (;;)
    {
      hasSurface = false;
      return;
      label65:
      destroyPlayer();
    }
  }
  
  class OnCompletedListener
    implements EventListener
  {
    private OnCompletedListener() {}
    
    @Default
    public void processEvent(final Event paramEvent)
    {
      if (nextSource != null)
      {
        paramEvent = UUID.randomUUID();
        eventEmitter.once("willChangeVideo", new EventListener()
        {
          @Default
          public void processEvent(Event paramAnonymousEvent)
          {
            if (properties.get("uuid").equals(paramEvent))
            {
              destroyPlayer();
              new StringBuilder("OnCompletedListener: currentSource = ").append(currentSource).append(", nextSource = ").append(nextSource);
              currentVideo = nextVideo;
              nextVideo = null;
              currentSource = nextSource;
              nextSource = null;
              eventEmitter.once("didSetSource", new EventListener()
              {
                @Default
                public void processEvent(Event paramAnonymous2Event)
                {
                  eventEmitter.emit("play");
                }
              });
              openVideo(currentVideo, currentSource);
            }
          }
        });
        HashMap localHashMap = new HashMap();
        localHashMap.put("currentVideo", currentVideo);
        localHashMap.put("nextVideo", nextVideo);
        localHashMap.put("uuid", paramEvent);
        eventEmitter.emit("willChangeVideo", localHashMap);
      }
    }
  }
  
  class OnPauseListener
    implements EventListener
  {
    private OnPauseListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      if ((mediaPlayer != null) && (hasPrepared) && (hasSurface) && (mediaPlayer.isPlaying()))
      {
        mediaPlayer.pause();
        paramEvent = new HashMap();
        paramEvent.put("playheadPosition", Integer.valueOf(mediaPlayer.getCurrentPosition()));
        eventEmitter.emit("didPause", paramEvent);
      }
    }
  }
  
  class OnPlayListener
    implements EventListener
  {
    private OnPlayListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      new StringBuilder("OnPlayListener: mediaPlayer = ").append(mediaPlayer).append(", hasPrepared = ").append(hasPrepared).append(", hasSurface = ").append(hasSurface);
      VideoDisplayComponent.access$1002(VideoDisplayComponent.this, false);
      if (currentSource != null)
      {
        final int i;
        if (properties.containsKey("playheadPosition")) {
          i = paramEvent.getIntegerProperty("playheadPosition");
        }
        while (mediaPlayer != null) {
          if (hasPrepared)
          {
            if (hasSurface)
            {
              if (!mediaPlayer.isPlaying())
              {
                VideoDisplayComponent.this.play(i);
                return;
                new StringBuilder("OnPlayListener: playheadPosition = ").append(playheadPosition);
                i = playheadPosition;
              }
            }
            else {
              eventEmitter.once("readyToPlay", new EventListener()
              {
                @Default
                public void processEvent(Event paramAnonymousEvent)
                {
                  VideoDisplayComponent.this.play(i);
                }
              });
            }
          }
          else
          {
            eventEmitter.once("didSetSource", new EventListener()
            {
              @Default
              public void processEvent(Event paramAnonymousEvent)
              {
                VideoDisplayComponent.this.play(i);
              }
            });
            return;
          }
        }
        playheadPosition = 0;
        eventEmitter.once("videoDurationChanged", new EventListener()
        {
          @Default
          public void processEvent(Event paramAnonymousEvent)
          {
            VideoDisplayComponent.this.play(i);
          }
        });
        openVideo(currentVideo, currentSource);
        return;
      }
    }
  }
  
  class OnPrebufferNextVideoListener
    implements EventListener
  {
    private OnPrebufferNextVideoListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      nextVideo = ((Video)properties.get("video"));
      nextSource = ((Source)properties.get("source"));
    }
  }
  
  public class OnSeekListener
    implements EventListener
  {
    protected OnSeekListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      new StringBuilder("OnSeekListener: mediaPlayer = ").append(mediaPlayer);
      int i = -1;
      if (properties.containsKey("seekPosition")) {
        i = paramEvent.getIntegerProperty("seekPosition");
      }
      while ((mediaPlayer != null) && (hasPrepared) && (hasSurface))
      {
        seekPosition = i;
        VideoDisplayComponent.access$2102(VideoDisplayComponent.this, playheadPosition);
        mediaPlayer.seekTo(i);
        return;
      }
      seekPositionWhenPrepared = i;
    }
  }
  
  public class OnSetSourceListener
    implements EventListener
  {
    protected OnSetSourceListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      destroyPlayer();
      currentVideo = ((Video)properties.get("video"));
      currentSource = ((Source)properties.get("source"));
      if ((currentSource != null) && (currentSource.getUrl() != null))
      {
        if ((currentSource.getDeliveryType() != DeliveryType.HLS) && (currentSource.getDeliveryType() != DeliveryType.WVM)) {
          openVideo(currentVideo, currentSource);
        }
      }
      else {
        return;
      }
      EventUtil.emit(eventEmitter, "didSetSource", currentVideo, currentSource);
    }
  }
  
  class OnSetVolumeListener
    implements EventListener
  {
    private OnSetVolumeListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      new StringBuilder("OnSetVolumeListener: mediaPlayer = ").append(mediaPlayer);
      if ((!properties.containsKey("leftVolume")) || (!properties.containsKey("rightVolume"))) {
        return;
      }
      float f1 = ((Float)properties.get("leftVolume")).floatValue();
      float f2 = ((Float)properties.get("rightVolume")).floatValue();
      new StringBuilder("OnSetVolumeListener: leftVolume = ").append(f1).append(" rightVolume = ").append(f2);
      if ((f1 < 0.0F) || (f1 > 1.0F) || (f2 < 0.0F) || (f2 > 1.0F))
      {
        new StringBuilder("LEFT_VOLUME and RIGHT_VOLUME must be between 0.0f and 1.0f: ").append(f1).append(", ").append(f2);
        return;
      }
      mediaPlayer.setVolume(f1, f2);
    }
  }
  
  public class OnStopListener
    implements EventListener
  {
    protected OnStopListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      if (mediaPlayer != null)
      {
        paramEvent = new HashMap();
        paramEvent.put("playheadPosition", Integer.valueOf(mediaPlayer.getCurrentPosition()));
        eventEmitter.emit("didStop", paramEvent);
      }
      destroyPlayer();
    }
  }
  
  class OnWillInterruptContentListener
    implements EventListener
  {
    private OnWillInterruptContentListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      new StringBuilder("OnWillInterruptContentListener: mediaPlayer = ").append(mediaPlayer).append(", hasPrepared = ").append(hasPrepared).append(", hasSurface = ").append(hasSurface).append(", currentSource = ").append(currentSource);
      if ((mediaPlayer != null) && (hasPrepared) && (hasSurface) && (mediaPlayer.isPlaying()))
      {
        if ((currentSource == null) || (currentSource.getDeliveryType() == DeliveryType.HLS)) {
          break label180;
        }
        mediaPlayer.pause();
      }
      for (;;)
      {
        renderView.setVisibility(4);
        eventEmitter.emit("didInterruptContent");
        return;
        label180:
        destroyPlayer();
      }
    }
  }
  
  class OnWillResumeContentListener
    implements EventListener
  {
    private OnWillResumeContentListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      renderView.setVisibility(0);
      paramEvent = (Event)properties.get("original");
      new StringBuilder("OnWillResumeContentListener: originalEvent = ").append(paramEvent);
      if (paramEvent != null) {
        eventEmitter.emit(paramEvent.getType(), properties);
      }
      eventEmitter.emit("didResumeContent");
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
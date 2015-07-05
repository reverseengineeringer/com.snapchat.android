package com.brightcove.player.controller;

import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.CuePoint.PositionType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Emits(events={"completed", "cuePoint", "didSelectSource", "didSetVideo", "play", "selectSource", "setSource", "setVideoStill"})
@ListensFor(events={"completed", "cuePoint", "didSeekTo", "didSetSource", "play", "progress", "readyToPlay", "removeCuePoint", "setCuePoint", "setCuePoints", "setVideo", "willChangeVideo"})
public class VideoPlaybackController
  extends AbstractComponent
  implements Component
{
  public static final String TAG = VideoPlaybackController.class.getSimpleName();
  private List<CuePoint> cuePoints;
  private int currentTime;
  private boolean hasSeenPlayerReadyEvent;
  OnDidSeekToListener onDidSeekToListener;
  OnDidSetSourceListener onDidSetSourceListener;
  OnPlayListener onPlayListener;
  OnPlayerReadyListener onPlayerReadyListener;
  OnProgressUpdateListener onProgressUpdateListener;
  OnRemoveCuePointListener onRemoveCuePointListener;
  OnSetCuePointListener onSetCuePointListener;
  OnSetCuePointsListener onSetCuePointsListener;
  OnSetVideoListener onSetVideoListener;
  OnSourceSelectedListener onSourceSelectedListener;
  OnVideoCompletedListener onVideoCompletedListener;
  OnWillChangeVideoListener onWillChangeVideoListener;
  private List<Source> pendingSourcesToLoad;
  private Map<Source, Video> sourceToVideoMapping;
  
  public VideoPlaybackController(EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, VideoPlaybackController.class);
    initialize();
  }
  
  private void emitCuePoints(int paramInt1, int paramInt2)
  {
    new StringBuilder("emitCuePoints: beginning = ").append(paramInt1).append(", end = ").append(paramInt2);
    ArrayList localArrayList = new ArrayList();
    Object localObject = cuePoints.iterator();
    while (((Iterator)localObject).hasNext())
    {
      CuePoint localCuePoint = (CuePoint)((Iterator)localObject).next();
      if (localCuePoint.getPositionType().equals(CuePoint.PositionType.POINT_IN_TIME))
      {
        int i = localCuePoint.getPosition();
        if ((paramInt1 < i) && (i <= paramInt2)) {
          localArrayList.add(localCuePoint);
        }
      }
    }
    if (!localArrayList.isEmpty())
    {
      new StringBuilder("emitCuePoints: batch = ").append(localArrayList);
      Collections.sort(localArrayList);
      localObject = new HashMap();
      ((Map)localObject).put("startTime", Integer.valueOf(paramInt1));
      ((Map)localObject).put("endTime", Integer.valueOf(paramInt2));
      ((Map)localObject).put("cue_points", localArrayList);
      eventEmitter.emit("cuePoint", (Map)localObject);
    }
  }
  
  public boolean hasPendingSourcesToLoad()
  {
    return pendingSourcesToLoad.size() > 0;
  }
  
  public void initialize()
  {
    hasSeenPlayerReadyEvent = false;
    pendingSourcesToLoad = new ArrayList();
    sourceToVideoMapping = new HashMap();
    cuePoints = new ArrayList();
    initializeListeners();
  }
  
  protected void initializeListeners()
  {
    onSetVideoListener = new OnSetVideoListener();
    onPlayerReadyListener = new OnPlayerReadyListener();
    onDidSetSourceListener = new OnDidSetSourceListener();
    onPlayListener = new OnPlayListener();
    onProgressUpdateListener = new OnProgressUpdateListener(null);
    onVideoCompletedListener = new OnVideoCompletedListener();
    onRemoveCuePointListener = new OnRemoveCuePointListener();
    onSetCuePointListener = new OnSetCuePointListener();
    onSetCuePointsListener = new OnSetCuePointsListener();
    onDidSeekToListener = new OnDidSeekToListener();
    onWillChangeVideoListener = new OnWillChangeVideoListener();
    addListener("readyToPlay", onPlayerReadyListener);
    addListener("setVideo", onSetVideoListener);
    addListener("didSetSource", onDidSetSourceListener);
    addListener("play", onPlayListener);
    addListener("progress", onProgressUpdateListener);
    addListener("completed", onVideoCompletedListener);
    addListener("removeCuePoint", onRemoveCuePointListener);
    addListener("setCuePoint", onSetCuePointListener);
    addListener("setCuePoints", onSetCuePointsListener);
    addListener("didSeekTo", onDidSeekToListener);
    addListener("willChangeVideo", onWillChangeVideoListener);
  }
  
  public class OnDidSeekToListener
    implements EventListener
  {
    protected OnDidSeekToListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      int i = currentTime;
      VideoPlaybackController.access$002(VideoPlaybackController.this, paramEvent.getIntegerProperty("seekPosition"));
      if (i < currentTime)
      {
        VideoPlaybackController.this.emitCuePoints(i, currentTime);
        return;
      }
      VideoPlaybackController.this.emitCuePoints(currentTime, i);
    }
  }
  
  public class OnDidSetSourceListener
    implements EventListener
  {
    protected OnDidSetSourceListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Video localVideo = (Video)properties.get("video");
      paramEvent = (Source)properties.get("source");
      if ((localVideo != null) && (paramEvent != null)) {
        EventUtil.emit(eventEmitter, "didSetVideo", localVideo);
      }
    }
  }
  
  public class OnPlayListener
    implements EventListener
  {
    protected OnPlayListener() {}
    
    @Default
    public void processEvent(final Event paramEvent)
    {
      Object localObject1 = VideoPlaybackController.TAG;
      new StringBuilder("OnPlayListener: playEvent = ").append(paramEvent).append(", currentTime = ").append(currentTime);
      if ((currentTime != 0) || (properties.containsKey("skipCuePoints"))) {}
      do
      {
        return;
        localObject1 = VideoPlaybackController.TAG;
        new StringBuilder("cuePoints = ").append(cuePoints);
        localObject1 = new ArrayList();
        localObject2 = cuePoints.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (CuePoint)((Iterator)localObject2).next();
          if ((((CuePoint)localObject3).getPositionType().equals(CuePoint.PositionType.BEFORE)) || ((((CuePoint)localObject3).getPositionType().equals(CuePoint.PositionType.POINT_IN_TIME)) && (((CuePoint)localObject3).getPosition() == 0))) {
            ((ArrayList)localObject1).add(localObject3);
          }
        }
      } while (((ArrayList)localObject1).isEmpty());
      final Object localObject2 = VideoPlaybackController.TAG;
      new StringBuilder("batch = ").append(localObject1);
      paramEvent.preventDefault();
      paramEvent.stopPropagation();
      properties.put("skipCuePoints", Boolean.valueOf(true));
      localObject2 = UUID.randomUUID();
      eventEmitter.once("cuePoint", new EventListener()
      {
        @Default
        public void processEvent(Event paramAnonymousEvent)
        {
          if (localObject2.equals(properties.get("uuid"))) {
            eventEmitter.emit(paramEvent.getType(), paramEventproperties);
          }
        }
      });
      Object localObject3 = new HashMap();
      ((Map)localObject3).put("cue_points", localObject1);
      ((Map)localObject3).put("endTime", Integer.valueOf(0));
      ((Map)localObject3).put("startTime", Integer.valueOf(0));
      ((Map)localObject3).put("original", paramEvent);
      ((Map)localObject3).put("uuid", localObject2);
      eventEmitter.emit("cuePoint", (Map)localObject3);
    }
  }
  
  public class OnPlayerReadyListener
    implements EventListener
  {
    protected OnPlayerReadyListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      if (!hasSeenPlayerReadyEvent)
      {
        VideoPlaybackController.access$902(VideoPlaybackController.this, true);
        if (pendingSourcesToLoad.size() > 0) {
          while (pendingSourcesToLoad.size() > 0)
          {
            paramEvent = (Source)pendingSourcesToLoad.remove(0);
            Video localVideo = (Video)sourceToVideoMapping.remove(paramEvent);
            EventUtil.emit(eventEmitter, "setSource", localVideo, paramEvent);
          }
        }
      }
    }
  }
  
  class OnProgressUpdateListener
    implements EventListener
  {
    private OnProgressUpdateListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      int i = paramEvent.getIntegerProperty("playheadPosition");
      if ((currentTime != -1) && (currentTime < i))
      {
        int j = currentTime;
        VideoPlaybackController.access$002(VideoPlaybackController.this, i);
        VideoPlaybackController.this.emitCuePoints(j, currentTime);
      }
    }
  }
  
  public class OnRemoveCuePointListener
    implements EventListener
  {
    protected OnRemoveCuePointListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      paramEvent = properties.get("cue_point");
      if ((paramEvent != null) && ((paramEvent instanceof CuePoint)))
      {
        paramEvent = (CuePoint)paramEvent;
        cuePoints.remove(paramEvent);
        return;
      }
      paramEvent = VideoPlaybackController.TAG;
    }
  }
  
  public class OnSetCuePointListener
    implements EventListener
  {
    protected OnSetCuePointListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      paramEvent = properties.get("cue_point");
      if ((paramEvent != null) && ((paramEvent instanceof CuePoint)))
      {
        paramEvent = (CuePoint)paramEvent;
        cuePoints.add(paramEvent);
        return;
      }
      paramEvent = VideoPlaybackController.TAG;
    }
  }
  
  public class OnSetCuePointsListener
    implements EventListener
  {
    protected OnSetCuePointsListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      paramEvent = properties.get("cue_points");
      if ((paramEvent != null) && ((paramEvent instanceof List)))
      {
        paramEvent = (List)paramEvent;
        cuePoints.clear();
        cuePoints.addAll(paramEvent);
        return;
      }
      paramEvent = VideoPlaybackController.TAG;
    }
  }
  
  public class OnSetVideoListener
    implements EventListener
  {
    protected OnSetVideoListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      paramEvent = (Video)properties.get("video");
      Object localObject1 = VideoPlaybackController.TAG;
      new StringBuilder("OnSetVideoListener: ").append(paramEvent);
      localObject1 = paramEvent.getProperties().get("stillImageUri");
      if ((localObject1 != null) && ((localObject1 instanceof URI)))
      {
        localObject1 = (URI)localObject1;
        localObject2 = new HashMap();
        ((Map)localObject2).put("video_still", localObject1);
        eventEmitter.emit("setVideoStill", (Map)localObject2);
      }
      localObject1 = paramEvent.getCuePoints();
      if (localObject1 != null) {
        cuePoints.addAll((Collection)localObject1);
      }
      localObject1 = new HashMap();
      ((Map)localObject1).put("video", paramEvent);
      Object localObject2 = new VideoPlaybackController.OnSourceSelectedListener(VideoPlaybackController.this);
      currentVideo = paramEvent;
      eventEmitter.request("selectSource", (Map)localObject1, (EventListener)localObject2);
    }
  }
  
  public class OnSourceSelectedListener
    implements EventListener
  {
    public Video currentVideo;
    
    protected OnSourceSelectedListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      String str = VideoPlaybackController.TAG;
      paramEvent = (Source)properties.get("source");
      sourceToVideoMapping.put(paramEvent, currentVideo);
      EventUtil.emit(eventEmitter, "didSelectSource", currentVideo, paramEvent);
      if (hasSeenPlayerReadyEvent)
      {
        EventUtil.emit(eventEmitter, "setSource", currentVideo, paramEvent);
        return;
      }
      pendingSourcesToLoad.add(paramEvent);
    }
  }
  
  public class OnVideoCompletedListener
    implements EventListener
  {
    protected OnVideoCompletedListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      Object localObject1 = VideoPlaybackController.TAG;
      new StringBuilder("OnVideoCompletedListener: ").append(paramEvent);
      VideoPlaybackController.access$002(VideoPlaybackController.this, 0);
      if (properties.containsKey("skipCuePoints")) {}
      do
      {
        return;
        localObject1 = new ArrayList();
        localObject2 = cuePoints.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          CuePoint localCuePoint = (CuePoint)((Iterator)localObject2).next();
          if (localCuePoint.getPositionType().equals(CuePoint.PositionType.AFTER)) {
            ((ArrayList)localObject1).add(localCuePoint);
          }
        }
      } while (((ArrayList)localObject1).isEmpty());
      paramEvent.preventDefault();
      paramEvent.stopPropagation();
      properties.put("skipCuePoints", Boolean.valueOf(true));
      Object localObject2 = new HashMap();
      ((Map)localObject2).put("cue_points", localObject1);
      ((Map)localObject2).put("endTime", Integer.valueOf(0));
      ((Map)localObject2).put("startTime", Integer.valueOf(0));
      ((Map)localObject2).put("original", paramEvent);
      eventEmitter.emit("cuePoint", (Map)localObject2);
    }
  }
  
  public class OnWillChangeVideoListener
    implements EventListener
  {
    protected OnWillChangeVideoListener() {}
    
    @Default
    public void processEvent(Event paramEvent)
    {
      cuePoints.clear();
      VideoPlaybackController.access$002(VideoPlaybackController.this, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
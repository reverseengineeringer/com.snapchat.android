package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.CuePoint.PositionType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class VideoPlaybackController$OnPlayListener
  implements EventListener
{
  protected VideoPlaybackController$OnPlayListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(final Event paramEvent)
  {
    Object localObject1 = VideoPlaybackController.TAG;
    new StringBuilder("OnPlayListener: playEvent = ").append(paramEvent).append(", currentTime = ").append(VideoPlaybackController.access$000(this$0));
    if ((VideoPlaybackController.access$000(this$0) != 0) || (properties.containsKey("skipCuePoints"))) {}
    do
    {
      return;
      localObject1 = VideoPlaybackController.TAG;
      new StringBuilder("cuePoints = ").append(VideoPlaybackController.access$100(this$0));
      localObject1 = new ArrayList();
      localObject2 = VideoPlaybackController.access$100(this$0).iterator();
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
    VideoPlaybackController.access$300(this$0).once("cuePoint", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        if (localObject2.equals(properties.get("uuid"))) {
          VideoPlaybackController.access$200(this$0).emit(paramEvent.getType(), paramEventproperties);
        }
      }
    });
    Object localObject3 = new HashMap();
    ((Map)localObject3).put("cue_points", localObject1);
    ((Map)localObject3).put("endTime", Integer.valueOf(0));
    ((Map)localObject3).put("startTime", Integer.valueOf(0));
    ((Map)localObject3).put("original", paramEvent);
    ((Map)localObject3).put("uuid", localObject2);
    VideoPlaybackController.access$400(this$0).emit("cuePoint", (Map)localObject3);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnPlayListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
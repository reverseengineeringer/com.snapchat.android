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

public class VideoPlaybackController$OnVideoCompletedListener
  implements EventListener
{
  protected VideoPlaybackController$OnVideoCompletedListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Object localObject1 = VideoPlaybackController.TAG;
    new StringBuilder("OnVideoCompletedListener: ").append(paramEvent);
    VideoPlaybackController.access$002(this$0, 0);
    if (properties.containsKey("skipCuePoints")) {}
    do
    {
      return;
      localObject1 = new ArrayList();
      localObject2 = VideoPlaybackController.access$100(this$0).iterator();
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
    VideoPlaybackController.access$1500(this$0).emit("cuePoint", (Map)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnVideoCompletedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
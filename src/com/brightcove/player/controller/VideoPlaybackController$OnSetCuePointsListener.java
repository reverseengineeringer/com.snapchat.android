package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.List;
import java.util.Map;

public class VideoPlaybackController$OnSetCuePointsListener
  implements EventListener
{
  protected VideoPlaybackController$OnSetCuePointsListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    paramEvent = properties.get("cue_points");
    if ((paramEvent != null) && ((paramEvent instanceof List)))
    {
      paramEvent = (List)paramEvent;
      VideoPlaybackController.access$100(this$0).clear();
      VideoPlaybackController.access$100(this$0).addAll(paramEvent);
      return;
    }
    paramEvent = VideoPlaybackController.TAG;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnSetCuePointsListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
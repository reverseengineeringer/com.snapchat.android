package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.CuePoint;
import java.util.List;
import java.util.Map;

public class VideoPlaybackController$OnRemoveCuePointListener
  implements EventListener
{
  protected VideoPlaybackController$OnRemoveCuePointListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    paramEvent = properties.get("cue_point");
    if ((paramEvent != null) && ((paramEvent instanceof CuePoint)))
    {
      paramEvent = (CuePoint)paramEvent;
      VideoPlaybackController.access$100(this$0).remove(paramEvent);
      return;
    }
    paramEvent = VideoPlaybackController.TAG;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnRemoveCuePointListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
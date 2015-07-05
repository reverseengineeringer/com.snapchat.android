package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.List;
import java.util.Map;

public class VideoPlaybackController$OnPlayerReadyListener
  implements EventListener
{
  protected VideoPlaybackController$OnPlayerReadyListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    if (!VideoPlaybackController.access$900(this$0))
    {
      VideoPlaybackController.access$902(this$0, true);
      if (VideoPlaybackController.access$1100(this$0).size() > 0) {
        while (VideoPlaybackController.access$1100(this$0).size() > 0)
        {
          paramEvent = (Source)VideoPlaybackController.access$1100(this$0).remove(0);
          Video localVideo = (Video)VideoPlaybackController.access$700(this$0).remove(paramEvent);
          EventUtil.emit(VideoPlaybackController.access$1300(this$0), "setSource", localVideo, paramEvent);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnPlayerReadyListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
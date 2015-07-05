package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

public class VideoPlaybackController$OnDidSetSourceListener
  implements EventListener
{
  protected VideoPlaybackController$OnDidSetSourceListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Video localVideo = (Video)properties.get("video");
    paramEvent = (Source)properties.get("source");
    if ((localVideo != null) && (paramEvent != null)) {
      EventUtil.emit(VideoPlaybackController.access$1200(this$0), "didSetVideo", localVideo);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnDidSetSourceListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
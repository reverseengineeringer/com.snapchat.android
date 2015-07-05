package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.List;
import java.util.Map;

public class VideoPlaybackController$OnSourceSelectedListener
  implements EventListener
{
  public Video currentVideo;
  
  protected VideoPlaybackController$OnSourceSelectedListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    String str = VideoPlaybackController.TAG;
    paramEvent = (Source)properties.get("source");
    VideoPlaybackController.access$700(this$0).put(paramEvent, currentVideo);
    EventUtil.emit(VideoPlaybackController.access$800(this$0), "didSelectSource", currentVideo, paramEvent);
    if (VideoPlaybackController.access$900(this$0))
    {
      EventUtil.emit(VideoPlaybackController.access$1000(this$0), "setSource", currentVideo, paramEvent);
      return;
    }
    VideoPlaybackController.access$1100(this$0).add(paramEvent);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnSourceSelectedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
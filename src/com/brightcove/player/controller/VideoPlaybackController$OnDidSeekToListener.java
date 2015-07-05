package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

public class VideoPlaybackController$OnDidSeekToListener
  implements EventListener
{
  protected VideoPlaybackController$OnDidSeekToListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    int i = VideoPlaybackController.access$000(this$0);
    VideoPlaybackController.access$002(this$0, paramEvent.getIntegerProperty("seekPosition"));
    if (i < VideoPlaybackController.access$000(this$0))
    {
      VideoPlaybackController.access$1400(this$0, i, VideoPlaybackController.access$000(this$0));
      return;
    }
    VideoPlaybackController.access$1400(this$0, VideoPlaybackController.access$000(this$0), i);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnDidSeekToListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
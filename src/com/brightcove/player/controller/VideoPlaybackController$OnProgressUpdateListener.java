package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class VideoPlaybackController$OnProgressUpdateListener
  implements EventListener
{
  private VideoPlaybackController$OnProgressUpdateListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    int i = paramEvent.getIntegerProperty("playheadPosition");
    if ((VideoPlaybackController.access$000(this$0) != -1) && (VideoPlaybackController.access$000(this$0) < i))
    {
      int j = VideoPlaybackController.access$000(this$0);
      VideoPlaybackController.access$002(this$0, i);
      VideoPlaybackController.access$1400(this$0, j, VideoPlaybackController.access$000(this$0));
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnProgressUpdateListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
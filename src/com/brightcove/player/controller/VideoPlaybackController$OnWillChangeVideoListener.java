package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.List;

public class VideoPlaybackController$OnWillChangeVideoListener
  implements EventListener
{
  protected VideoPlaybackController$OnWillChangeVideoListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoPlaybackController.access$100(this$0).clear();
    VideoPlaybackController.access$002(this$0, 0);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnWillChangeVideoListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
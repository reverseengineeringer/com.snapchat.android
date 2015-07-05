package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BaseVideoView$2
  implements EventListener
{
  BaseVideoView$2(BaseVideoView paramBaseVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    int i = paramEvent.getIntegerProperty("duration");
    if (i > 0)
    {
      BaseVideoView.access$000();
      String.format("videoDurationChanged: changing duration to %d.", new Object[] { Integer.valueOf(i) });
      this$0.duration = i;
      this$0.showMediaController();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
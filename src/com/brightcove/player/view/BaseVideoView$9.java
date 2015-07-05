package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BaseVideoView$9
  implements EventListener
{
  BaseVideoView$9(BaseVideoView paramBaseVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    BaseVideoView.access$700(this$0, true);
    this$0.showMediaController();
    BaseVideoView.access$900(this$0);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
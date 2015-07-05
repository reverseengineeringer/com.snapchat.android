package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BaseVideoView$6
  implements EventListener
{
  BaseVideoView$6(BaseVideoView paramBaseVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    BaseVideoView.access$802(this$0, paramEvent.getIntegerProperty("percentComplete"));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
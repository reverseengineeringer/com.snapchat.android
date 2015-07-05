package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class BaseVideoView$1
  implements EventListener
{
  BaseVideoView$1(BaseVideoView paramBaseVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.eventEmitter.emit("stop");
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
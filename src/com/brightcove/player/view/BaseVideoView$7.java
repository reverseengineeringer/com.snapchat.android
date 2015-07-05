package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BaseVideoView$7
  implements EventListener
{
  BaseVideoView$7(BaseVideoView paramBaseVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    int i = paramEvent.getIntegerProperty("seekPosition");
    if (i >= 0) {
      this$0.playheadPosition = i;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
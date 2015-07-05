package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcoveClosedCaptioningView$1
  implements EventListener
{
  BrightcoveClosedCaptioningView$1(BrightcoveClosedCaptioningView paramBrightcoveClosedCaptioningView) {}
  
  public void processEvent(Event paramEvent)
  {
    int i = paramEvent.getIntegerProperty("playheadPosition");
    this$0.doUpdateCaption(Integer.valueOf(i));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveClosedCaptioningView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
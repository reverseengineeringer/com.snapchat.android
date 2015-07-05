package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class BrightcoveClosedCaptioningView$4
  implements EventListener
{
  BrightcoveClosedCaptioningView$4(BrightcoveClosedCaptioningView paramBrightcoveClosedCaptioningView) {}
  
  public void processEvent(Event paramEvent)
  {
    if (((Boolean)properties.get("boolean")).booleanValue())
    {
      this$0.setMode(BrightcoveClosedCaptioningView.ClosedCaptioningMode.ON);
      this$0.setVisibility(0);
      this$0.bringToFront();
      this$0.registerProgressListener();
      return;
    }
    this$0.setMode(BrightcoveClosedCaptioningView.ClosedCaptioningMode.OFF);
    this$0.setVisibility(8);
    this$0.cancelProgressListener();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveClosedCaptioningView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
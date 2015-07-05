package com.brightcove.player.controller;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class BrightcoveClosedCaptioningController$2
  implements EventListener
{
  BrightcoveClosedCaptioningController$2(BrightcoveClosedCaptioningController paramBrightcoveClosedCaptioningController) {}
  
  public void processEvent(Event paramEvent)
  {
    paramEvent = (Boolean)properties.get("boolean");
    this$0.setVideoHasCaptions(paramEvent);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.BrightcoveClosedCaptioningController.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
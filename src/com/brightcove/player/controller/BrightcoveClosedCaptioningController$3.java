package com.brightcove.player.controller;

import android.os.Build.VERSION;
import com.brightcove.player.captioning.LoadCaptionsService;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Map;

class BrightcoveClosedCaptioningController$3
  implements EventListener
{
  BrightcoveClosedCaptioningController$3(BrightcoveClosedCaptioningController paramBrightcoveClosedCaptioningController) {}
  
  public void processEvent(Event paramEvent)
  {
    paramEvent = (Video)properties.get("video");
    paramEvent = this$0.checkIfCaptionsExist(paramEvent);
    if (paramEvent != null)
    {
      new LoadCaptionsService(BrightcoveClosedCaptioningController.access$100(this$0)).loadCaptions(paramEvent);
      if (Build.VERSION.SDK_INT >= 19) {
        BrightcoveClosedCaptioningController.access$200(this$0);
      }
    }
    else
    {
      return;
    }
    BrightcoveClosedCaptioningController.access$300(this$0);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.BrightcoveClosedCaptioningController.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.model.WebVTTDocument;
import java.util.Map;

class BrightcoveClosedCaptioningView$2
  implements EventListener
{
  BrightcoveClosedCaptioningView$2(BrightcoveClosedCaptioningView paramBrightcoveClosedCaptioningView) {}
  
  public void processEvent(Event paramEvent)
  {
    TTMLDocument localTTMLDocument = (TTMLDocument)properties.get("ttmlDocument");
    if (localTTMLDocument != null)
    {
      this$0.prepareDFXPCaptions(localTTMLDocument);
      return;
    }
    paramEvent = (WebVTTDocument)properties.get("webvttDocument");
    if (paramEvent != null)
    {
      this$0.prepareWebVTTCaptions(paramEvent);
      return;
    }
    paramEvent = BrightcoveClosedCaptioningView.TAG;
    this$0.clear();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveClosedCaptioningView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
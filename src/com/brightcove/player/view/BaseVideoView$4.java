package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Map;

class BaseVideoView$4
  implements EventListener
{
  BaseVideoView$4(BaseVideoView paramBaseVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    paramEvent = (Video)properties.get("video");
    this$0.setupClosedCaptioningRendering(paramEvent);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
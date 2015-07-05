package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class BaseVideoView$13
  implements EventListener
{
  BaseVideoView$13(BaseVideoView paramBaseVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    if ((properties.containsKey("ttmlDocument")) || (properties.containsKey("webvttDocument"))) {
      this$0.addView(BaseVideoView.access$1000(this$0));
    }
    while (BaseVideoView.access$1000(this$0) == null) {
      return;
    }
    this$0.removeView(BaseVideoView.access$1000(this$0));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
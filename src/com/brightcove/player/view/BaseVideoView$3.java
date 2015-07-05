package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.ArrayList;
import java.util.Map;

class BaseVideoView$3
  implements EventListener
{
  BaseVideoView$3(BaseVideoView paramBaseVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.onPrepared();
    this$0.attachMediaController();
    paramEvent = (Video)properties.get("video");
    if ((paramEvent != null) && (!paramEvent.equals(BaseVideoView.access$100(this$0))) && (BaseVideoView.access$200(this$0).indexOf(paramEvent) >= 0)) {
      BaseVideoView.access$308(this$0);
    }
    BaseVideoView.access$402(this$0, true);
    if (BaseVideoView.access$500(this$0))
    {
      BaseVideoView.access$502(this$0, false);
      this$0.eventEmitter.emit("play");
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
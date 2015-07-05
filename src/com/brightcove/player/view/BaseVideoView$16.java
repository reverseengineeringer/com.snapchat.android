package com.brightcove.player.view;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

class BaseVideoView$16
  implements EventListener
{
  BaseVideoView$16(BaseVideoView paramBaseVideoView, Video paramVideo) {}
  
  public void processEvent(Event paramEvent)
  {
    paramEvent = (Source)properties.get("source");
    BaseVideoView.access$1100(this$0).put(val$video, paramEvent);
    EventUtil.emit(this$0.eventEmitter, "didSelectSource", val$video, paramEvent);
    EventUtil.emit(this$0.eventEmitter, "prebufferNextVideo", val$video, paramEvent);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;
import java.util.UUID;

class BaseVideoView$15
  implements EventListener
{
  BaseVideoView$15(BaseVideoView paramBaseVideoView, UUID paramUUID, int paramInt) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    if (properties.get("uuid").equals(val$uniqueKey))
    {
      this$0.resetMetaData();
      BaseVideoView.access$302(this$0, val$index);
      paramEvent = (Video)properties.get("nextVideo");
      if (paramEvent != null) {
        EventUtil.emit(this$0.eventEmitter, "setVideo", paramEvent);
      }
    }
    else
    {
      return;
    }
    this$0.eventEmitter.emit("setSource");
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
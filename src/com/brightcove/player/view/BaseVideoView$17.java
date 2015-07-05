package com.brightcove.player.view;

import android.util.Pair;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Video;
import java.util.Map;

class BaseVideoView$17
  implements EventListener
{
  BaseVideoView$17(BaseVideoView paramBaseVideoView, Pair paramPair) {}
  
  public void processEvent(Event paramEvent)
  {
    paramEvent = (Video)properties.get("nextVideo");
    if (paramEvent != null) {
      BaseVideoView.access$1200(this$0, paramEvent, val$pair);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
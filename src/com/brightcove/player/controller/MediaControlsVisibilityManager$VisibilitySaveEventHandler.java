package com.brightcove.player.controller;

import android.os.Bundle;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class MediaControlsVisibilityManager$VisibilitySaveEventHandler
  implements EventListener
{
  private MediaControlsVisibilityManager$VisibilitySaveEventHandler(MediaControlsVisibilityManager paramMediaControlsVisibilityManager) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    MediaControlsVisibilityManager.access$400();
    paramEvent = properties.get("instanceState");
    if ((paramEvent != null) && ((paramEvent instanceof Bundle))) {}
    for (paramEvent = (Bundle)paramEvent;; paramEvent = null)
    {
      if ((paramEvent != null) && (MediaControlsVisibilityManager.access$300(this$0).size() > 0)) {
        MediaControlsVisibilityManager.access$500(this$0, paramEvent);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.MediaControlsVisibilityManager.VisibilitySaveEventHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
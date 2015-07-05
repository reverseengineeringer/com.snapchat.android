package com.brightcove.player.controller;

import android.os.Bundle;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class MediaControlsVisibilityManager$VisibilityRestoreEventHandler
  implements EventListener
{
  private MediaControlsVisibilityManager$VisibilityRestoreEventHandler(MediaControlsVisibilityManager paramMediaControlsVisibilityManager) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    MediaControlsVisibilityManager.access$400();
    paramEvent = properties.get("instanceState");
    if ((paramEvent != null) && ((paramEvent instanceof Bundle)))
    {
      paramEvent = (Bundle)paramEvent;
      if (paramEvent == null) {
        break label61;
      }
    }
    label61:
    for (paramEvent = paramEvent.getBundle("mediaControlsVisibilityState");; paramEvent = null)
    {
      if (paramEvent == null) {
        break label66;
      }
      MediaControlsVisibilityManager.access$600(this$0, paramEvent);
      return;
      paramEvent = null;
      break;
    }
    label66:
    MediaControlsVisibilityManager.access$400();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.MediaControlsVisibilityManager.VisibilityRestoreEventHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
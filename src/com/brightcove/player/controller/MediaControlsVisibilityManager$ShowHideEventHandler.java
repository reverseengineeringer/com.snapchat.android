package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class MediaControlsVisibilityManager$ShowHideEventHandler
  implements EventListener
{
  private MediaControlsVisibilityManager$ShowHideEventHandler(MediaControlsVisibilityManager paramMediaControlsVisibilityManager) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    paramEvent = properties.get("seekControlsVisibility");
    if ((paramEvent != null) && ((paramEvent instanceof Map)))
    {
      paramEvent = (Map)paramEvent;
      MediaControlsVisibilityManager.access$300(this$0).clear();
      MediaControlsVisibilityManager.access$300(this$0).putAll(paramEvent);
      this$0.setVisibilityState();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.MediaControlsVisibilityManager.ShowHideEventHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
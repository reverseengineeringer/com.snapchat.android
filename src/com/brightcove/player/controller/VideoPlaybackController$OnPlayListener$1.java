package com.brightcove.player.controller;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.Map;
import java.util.UUID;

class VideoPlaybackController$OnPlayListener$1
  implements EventListener
{
  VideoPlaybackController$OnPlayListener$1(VideoPlaybackController.OnPlayListener paramOnPlayListener, UUID paramUUID, Event paramEvent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    if (val$cuePointUniqueKey.equals(properties.get("uuid"))) {
      VideoPlaybackController.access$200(this$1.this$0).emit(val$playEvent.getType(), val$playEvent.properties);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnPlayListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
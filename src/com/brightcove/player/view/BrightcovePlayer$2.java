package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class BrightcovePlayer$2
  implements EventListener
{
  BrightcovePlayer$2(BrightcovePlayer paramBrightcovePlayer) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    BrightcovePlayer.access$200(this$0).off();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcovePlayer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
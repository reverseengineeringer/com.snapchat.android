package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class BrightcovePlayerFragment$1
  implements EventListener
{
  BrightcovePlayerFragment$1(BrightcovePlayerFragment paramBrightcovePlayerFragment) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    BrightcovePlayerFragment.access$000(this$0).off();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcovePlayerFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
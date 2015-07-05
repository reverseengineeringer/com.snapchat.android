package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BrightcovePlayer$1
  implements EventListener
{
  BrightcovePlayer$1(BrightcovePlayer paramBrightcovePlayer) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    if (BrightcovePlayer.access$000(this$0) > 0)
    {
      this$0.brightcoveVideoView.seekTo(BrightcovePlayer.access$000(this$0));
      BrightcovePlayer.access$002(this$0, -1);
    }
    if (BrightcovePlayer.access$100(this$0))
    {
      this$0.brightcoveVideoView.start();
      BrightcovePlayer.access$102(this$0, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcovePlayer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
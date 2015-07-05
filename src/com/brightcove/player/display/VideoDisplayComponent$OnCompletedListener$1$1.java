package com.brightcove.player.display;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class VideoDisplayComponent$OnCompletedListener$1$1
  implements EventListener
{
  VideoDisplayComponent$OnCompletedListener$1$1(VideoDisplayComponent.OnCompletedListener.1 param1) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$2400(this$2.this$1.this$0).emit("play");
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnCompletedListener.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
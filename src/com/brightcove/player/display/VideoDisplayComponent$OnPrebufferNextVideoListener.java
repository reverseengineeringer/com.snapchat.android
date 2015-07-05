package com.brightcove.player.display;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import java.util.Map;

class VideoDisplayComponent$OnPrebufferNextVideoListener
  implements EventListener
{
  private VideoDisplayComponent$OnPrebufferNextVideoListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.nextVideo = ((Video)properties.get("video"));
    this$0.nextSource = ((Source)properties.get("source"));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnPrebufferNextVideoListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
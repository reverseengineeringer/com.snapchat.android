package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.HashMap;
import java.util.Map;

public class VideoDisplayComponent$OnStopListener
  implements EventListener
{
  protected VideoDisplayComponent$OnStopListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$1200();
    if (VideoDisplayComponent.access$700(this$0) != null)
    {
      paramEvent = new HashMap();
      paramEvent.put("playheadPosition", Integer.valueOf(VideoDisplayComponent.access$700(this$0).getCurrentPosition()));
      VideoDisplayComponent.access$2300(this$0).emit("didStop", paramEvent);
    }
    this$0.destroyPlayer();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnStopListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
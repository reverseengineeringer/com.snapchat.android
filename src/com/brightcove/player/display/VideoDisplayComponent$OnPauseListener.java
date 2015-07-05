package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.HashMap;
import java.util.Map;

class VideoDisplayComponent$OnPauseListener
  implements EventListener
{
  private VideoDisplayComponent$OnPauseListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$1200();
    if ((VideoDisplayComponent.access$700(this$0) != null) && (VideoDisplayComponent.access$800(this$0)) && (this$0.hasSurface) && (VideoDisplayComponent.access$700(this$0).isPlaying()))
    {
      VideoDisplayComponent.access$700(this$0).pause();
      paramEvent = new HashMap();
      paramEvent.put("playheadPosition", Integer.valueOf(VideoDisplayComponent.access$700(this$0).getCurrentPosition()));
      VideoDisplayComponent.access$2200(this$0).emit("didPause", paramEvent);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnPauseListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
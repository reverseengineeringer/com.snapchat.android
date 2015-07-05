package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class VideoDisplayComponent$OnSetVolumeListener
  implements EventListener
{
  private VideoDisplayComponent$OnSetVolumeListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$1200();
    new StringBuilder("OnSetVolumeListener: mediaPlayer = ").append(VideoDisplayComponent.access$700(this$0));
    if ((!properties.containsKey("leftVolume")) || (!properties.containsKey("rightVolume")))
    {
      VideoDisplayComponent.access$1200();
      return;
    }
    float f1 = ((Float)properties.get("leftVolume")).floatValue();
    float f2 = ((Float)properties.get("rightVolume")).floatValue();
    VideoDisplayComponent.access$1200();
    new StringBuilder("OnSetVolumeListener: leftVolume = ").append(f1).append(" rightVolume = ").append(f2);
    if ((f1 < 0.0F) || (f1 > 1.0F) || (f2 < 0.0F) || (f2 > 1.0F))
    {
      VideoDisplayComponent.access$1200();
      new StringBuilder("LEFT_VOLUME and RIGHT_VOLUME must be between 0.0f and 1.0f: ").append(f1).append(", ").append(f2);
      return;
    }
    VideoDisplayComponent.access$700(this$0).setVolume(f1, f2);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnSetVolumeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
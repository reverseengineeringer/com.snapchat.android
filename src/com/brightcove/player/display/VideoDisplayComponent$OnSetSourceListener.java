package com.brightcove.player.display;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.util.Map;

public class VideoDisplayComponent$OnSetSourceListener
  implements EventListener
{
  protected VideoDisplayComponent$OnSetSourceListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$1200();
    this$0.destroyPlayer();
    this$0.currentVideo = ((Video)properties.get("video"));
    this$0.currentSource = ((Source)properties.get("source"));
    if ((this$0.currentSource != null) && (this$0.currentSource.getUrl() != null))
    {
      if ((this$0.currentSource.getDeliveryType() != DeliveryType.HLS) && (this$0.currentSource.getDeliveryType() != DeliveryType.WVM)) {
        this$0.openVideo(this$0.currentVideo, this$0.currentSource);
      }
    }
    else {
      return;
    }
    EventUtil.emit(VideoDisplayComponent.access$1600(this$0), "didSetSource", this$0.currentVideo, this$0.currentSource);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnSetSourceListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
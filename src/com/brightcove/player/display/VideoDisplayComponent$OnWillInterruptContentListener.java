package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.view.RenderView;

class VideoDisplayComponent$OnWillInterruptContentListener
  implements EventListener
{
  private VideoDisplayComponent$OnWillInterruptContentListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$1200();
    new StringBuilder("OnWillInterruptContentListener: mediaPlayer = ").append(VideoDisplayComponent.access$700(this$0)).append(", hasPrepared = ").append(VideoDisplayComponent.access$800(this$0)).append(", hasSurface = ").append(this$0.hasSurface).append(", currentSource = ").append(this$0.currentSource);
    if ((VideoDisplayComponent.access$700(this$0) != null) && (VideoDisplayComponent.access$800(this$0)) && (this$0.hasSurface) && (VideoDisplayComponent.access$700(this$0).isPlaying()))
    {
      VideoDisplayComponent.access$1200();
      if ((this$0.currentSource == null) || (this$0.currentSource.getDeliveryType() == DeliveryType.HLS)) {
        break label180;
      }
      VideoDisplayComponent.access$700(this$0).pause();
    }
    for (;;)
    {
      this$0.renderView.setVisibility(4);
      VideoDisplayComponent.access$3000(this$0).emit("didInterruptContent");
      return;
      label180:
      this$0.destroyPlayer();
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnWillInterruptContentListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
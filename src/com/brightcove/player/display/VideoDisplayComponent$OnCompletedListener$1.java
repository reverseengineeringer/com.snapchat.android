package com.brightcove.player.display;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.Map;
import java.util.UUID;

class VideoDisplayComponent$OnCompletedListener$1
  implements EventListener
{
  VideoDisplayComponent$OnCompletedListener$1(VideoDisplayComponent.OnCompletedListener paramOnCompletedListener, UUID paramUUID) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$1200();
    if (properties.get("uuid").equals(val$uniqueKey))
    {
      this$1.this$0.destroyPlayer();
      VideoDisplayComponent.access$1200();
      new StringBuilder("OnCompletedListener: currentSource = ").append(this$1.this$0.currentSource).append(", nextSource = ").append(this$1.this$0.nextSource);
      this$1.this$0.currentVideo = this$1.this$0.nextVideo;
      this$1.this$0.nextVideo = null;
      this$1.this$0.currentSource = this$1.this$0.nextSource;
      this$1.this$0.nextSource = null;
      VideoDisplayComponent.access$2500(this$1.this$0).once("didSetSource", new EventListener()
      {
        @Default
        public void processEvent(Event paramAnonymousEvent)
        {
          VideoDisplayComponent.access$2400(this$1.this$0).emit("play");
        }
      });
      this$1.this$0.openVideo(this$1.this$0.currentVideo, this$1.this$0.currentSource);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnCompletedListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
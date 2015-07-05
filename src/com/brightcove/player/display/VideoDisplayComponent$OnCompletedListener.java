package com.brightcove.player.display;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

class VideoDisplayComponent$OnCompletedListener
  implements EventListener
{
  private VideoDisplayComponent$OnCompletedListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(final Event paramEvent)
  {
    if (this$0.nextSource != null)
    {
      paramEvent = UUID.randomUUID();
      VideoDisplayComponent.access$2600(this$0).once("willChangeVideo", new EventListener()
      {
        @Default
        public void processEvent(Event paramAnonymousEvent)
        {
          VideoDisplayComponent.access$1200();
          if (properties.get("uuid").equals(paramEvent))
          {
            this$0.destroyPlayer();
            VideoDisplayComponent.access$1200();
            new StringBuilder("OnCompletedListener: currentSource = ").append(this$0.currentSource).append(", nextSource = ").append(this$0.nextSource);
            this$0.currentVideo = this$0.nextVideo;
            this$0.nextVideo = null;
            this$0.currentSource = this$0.nextSource;
            this$0.nextSource = null;
            VideoDisplayComponent.access$2500(this$0).once("didSetSource", new EventListener()
            {
              @Default
              public void processEvent(Event paramAnonymous2Event)
              {
                VideoDisplayComponent.access$2400(this$0).emit("play");
              }
            });
            this$0.openVideo(this$0.currentVideo, this$0.currentSource);
          }
        }
      });
      HashMap localHashMap = new HashMap();
      localHashMap.put("currentVideo", this$0.currentVideo);
      localHashMap.put("nextVideo", this$0.nextVideo);
      localHashMap.put("uuid", paramEvent);
      VideoDisplayComponent.access$2700(this$0).emit("willChangeVideo", localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnCompletedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
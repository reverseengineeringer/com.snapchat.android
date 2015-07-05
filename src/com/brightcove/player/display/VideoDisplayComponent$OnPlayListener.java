package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.Map;

class VideoDisplayComponent$OnPlayListener
  implements EventListener
{
  private VideoDisplayComponent$OnPlayListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    VideoDisplayComponent.access$1200();
    new StringBuilder("OnPlayListener: mediaPlayer = ").append(VideoDisplayComponent.access$700(this$0)).append(", hasPrepared = ").append(VideoDisplayComponent.access$800(this$0)).append(", hasSurface = ").append(this$0.hasSurface);
    VideoDisplayComponent.access$1002(this$0, false);
    if (this$0.currentSource != null)
    {
      final int i;
      if (properties.containsKey("playheadPosition")) {
        i = paramEvent.getIntegerProperty("playheadPosition");
      }
      while (VideoDisplayComponent.access$700(this$0) != null) {
        if (VideoDisplayComponent.access$800(this$0))
        {
          if (this$0.hasSurface)
          {
            if (!VideoDisplayComponent.access$700(this$0).isPlaying())
            {
              VideoDisplayComponent.access$1700(this$0, i);
              return;
              VideoDisplayComponent.access$1200();
              new StringBuilder("OnPlayListener: playheadPosition = ").append(this$0.playheadPosition);
              i = this$0.playheadPosition;
            }
            else
            {
              VideoDisplayComponent.access$1200();
            }
          }
          else
          {
            VideoDisplayComponent.access$1200();
            VideoDisplayComponent.access$1800(this$0).once("readyToPlay", new EventListener()
            {
              @Default
              public void processEvent(Event paramAnonymousEvent)
              {
                VideoDisplayComponent.access$1700(this$0, i);
              }
            });
          }
        }
        else
        {
          VideoDisplayComponent.access$1200();
          VideoDisplayComponent.access$1900(this$0).once("didSetSource", new EventListener()
          {
            @Default
            public void processEvent(Event paramAnonymousEvent)
            {
              VideoDisplayComponent.access$1700(this$0, i);
            }
          });
          return;
        }
      }
      this$0.playheadPosition = 0;
      VideoDisplayComponent.access$1200();
      VideoDisplayComponent.access$2000(this$0).once("videoDurationChanged", new EventListener()
      {
        @Default
        public void processEvent(Event paramAnonymousEvent)
        {
          VideoDisplayComponent.access$1700(this$0, i);
        }
      });
      this$0.openVideo(this$0.currentVideo, this$0.currentSource);
      return;
    }
    VideoDisplayComponent.access$1200();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnPlayListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
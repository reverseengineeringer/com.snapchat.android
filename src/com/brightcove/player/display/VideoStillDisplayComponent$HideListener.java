package com.brightcove.player.display;

import android.widget.ImageView;
import com.brightcove.player.display.tasks.LoadImageTask;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class VideoStillDisplayComponent$HideListener
  implements EventListener
{
  private VideoStillDisplayComponent$HideListener(VideoStillDisplayComponent paramVideoStillDisplayComponent) {}
  
  public void processEvent(Event paramEvent)
  {
    paramEvent = VideoStillDisplayComponent.TAG;
    VideoStillDisplayComponent.access$100(this$0).setVisibility(4);
    if (VideoStillDisplayComponent.access$200(this$0) != null)
    {
      VideoStillDisplayComponent.access$200(this$0).cancel(true);
      VideoStillDisplayComponent.access$202(this$0, null);
    }
    VideoStillDisplayComponent.access$300(this$0);
    VideoStillDisplayComponent.access$500(this$0).off("cuePoint", VideoStillDisplayComponent.access$400(this$0));
    VideoStillDisplayComponent.access$700(this$0).off("didPlay", VideoStillDisplayComponent.access$600(this$0));
    VideoStillDisplayComponent.access$900(this$0).off("didSeekTo", VideoStillDisplayComponent.access$800(this$0));
    VideoStillDisplayComponent.access$1100(this$0).off("willInterruptContent", VideoStillDisplayComponent.access$1000(this$0));
    VideoStillDisplayComponent.access$1300(this$0).off("activityStopped", VideoStillDisplayComponent.access$1200(this$0));
    VideoStillDisplayComponent.access$1500(this$0).off("fragmentStopped", VideoStillDisplayComponent.access$1400(this$0));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoStillDisplayComponent.HideListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
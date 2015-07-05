package com.brightcove.player.display;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.view.RenderView;
import java.util.Map;

class VideoDisplayComponent$OnWillResumeContentListener
  implements EventListener
{
  private VideoDisplayComponent$OnWillResumeContentListener(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    this$0.renderView.setVisibility(0);
    paramEvent = (Event)properties.get("original");
    VideoDisplayComponent.access$1200();
    new StringBuilder("OnWillResumeContentListener: originalEvent = ").append(paramEvent);
    if (paramEvent != null) {
      VideoDisplayComponent.access$2800(this$0).emit(paramEvent.getType(), properties);
    }
    VideoDisplayComponent.access$2900(this$0).emit("didResumeContent");
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.OnWillResumeContentListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
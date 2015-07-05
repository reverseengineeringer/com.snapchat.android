package com.brightcove.player.view;

import android.widget.MediaController;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;

class BaseVideoView$12
  implements EventListener
{
  BaseVideoView$12(BaseVideoView paramBaseVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    if (this$0.mediaController != null)
    {
      this$0.mediaController.hide();
      this$0.eventEmitter.once("progress", new EventListener()
      {
        public void processEvent(Event paramAnonymousEvent)
        {
          this$0.mediaController.show();
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.brightcove.player.view;

import android.media.MediaPlayer.OnCompletionListener;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

class BaseVideoView$5
  implements EventListener
{
  BaseVideoView$5(BaseVideoView paramBaseVideoView) {}
  
  public void processEvent(Event paramEvent)
  {
    if (BaseVideoView.access$600(this$0) != null) {
      BaseVideoView.access$600(this$0).onCompletion(null);
    }
    this$0.playheadPosition = 0;
    BaseVideoView.access$700(this$0, false);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
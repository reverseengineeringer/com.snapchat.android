package com.brightcove.player.view;

import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;

public class BaseVideoView$OnProgressListener
  implements EventListener
{
  protected BaseVideoView$OnProgressListener(BaseVideoView paramBaseVideoView) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    if (this$0.isPlaying())
    {
      int i = paramEvent.getIntegerProperty("duration");
      if ((i >= 0) && (i != this$0.duration))
      {
        BaseVideoView.access$000();
        String.format("Changing duration to %d.", new Object[] { Integer.valueOf(i) });
        this$0.duration = i;
        this$0.showMediaController();
      }
      i = paramEvent.getIntegerProperty("playheadPosition");
      if ((i >= 0) && (i != this$0.playheadPosition))
      {
        BaseVideoView.access$000();
        String.format("Changing playheadPosition to %d.", new Object[] { Integer.valueOf(i) });
        this$0.playheadPosition = i;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BaseVideoView.OnProgressListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
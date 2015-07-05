package com.brightcove.player.view;

import android.media.SubtitleTrack.RenderingWidget;
import android.media.SubtitleTrack.RenderingWidget.OnChangedListener;

class BrightcoveClosedCaptioningSurfaceView$1
  implements SubtitleTrack.RenderingWidget.OnChangedListener
{
  BrightcoveClosedCaptioningSurfaceView$1(BrightcoveClosedCaptioningSurfaceView paramBrightcoveClosedCaptioningSurfaceView) {}
  
  public void onChanged(SubtitleTrack.RenderingWidget paramRenderingWidget)
  {
    this$0.invalidate();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.BrightcoveClosedCaptioningSurfaceView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
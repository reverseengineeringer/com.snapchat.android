package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;

class VideoDisplayComponent$8
  implements MediaPlayer.OnVideoSizeChangedListener
{
  VideoDisplayComponent$8(VideoDisplayComponent paramVideoDisplayComponent) {}
  
  public void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if ((paramInt1 != 0) && (paramInt2 != 0)) {
      this$0.emitVideoSize(paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.display.VideoDisplayComponent.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;

final class TextureVideoView$1
  implements MediaPlayer.OnVideoSizeChangedListener
{
  TextureVideoView$1(TextureVideoView paramTextureVideoView) {}
  
  public final void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    TextureVideoView.a(a, paramMediaPlayer);
    if ((a.a != 0) && (a.b != 0)) {
      a.requestLayout();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
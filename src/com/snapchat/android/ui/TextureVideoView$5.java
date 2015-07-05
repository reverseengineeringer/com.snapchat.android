package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;

final class TextureVideoView$5
  implements MediaPlayer.OnInfoListener
{
  TextureVideoView$5(TextureVideoView paramTextureVideoView) {}
  
  public final boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (TextureVideoView.m(a) != null) {
      TextureVideoView.m(a).onInfo(paramMediaPlayer, paramInt1, paramInt2);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
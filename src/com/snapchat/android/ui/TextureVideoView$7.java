package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

final class TextureVideoView$7
  implements MediaPlayer.OnBufferingUpdateListener
{
  TextureVideoView$7(TextureVideoView paramTextureVideoView) {}
  
  public final void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    TextureVideoView.c(a, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
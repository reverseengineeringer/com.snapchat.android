package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.widget.MediaController;

final class TextureVideoView$6
  implements MediaPlayer.OnErrorListener
{
  TextureVideoView$6(TextureVideoView paramTextureVideoView) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (TextureVideoView.f(a) == null) {}
    do
    {
      return true;
      TextureVideoView.a(a, -1);
      TextureVideoView.b(a, -1);
      if (TextureVideoView.g(a) != null) {
        TextureVideoView.g(a).hide();
      }
    } while ((TextureVideoView.n(a) == null) || (!TextureVideoView.n(a).onError(TextureVideoView.f(a), paramInt1, paramInt2)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
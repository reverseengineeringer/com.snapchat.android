package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.widget.MediaController;

final class TextureVideoView$3
  implements MediaPlayer.OnCompletionListener
{
  TextureVideoView$3(TextureVideoView paramTextureVideoView) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (!TextureVideoView.j(a)) {}
    do
    {
      return;
      TextureVideoView.a(a, 5);
      TextureVideoView.b(a, 5);
      if (TextureVideoView.g(a) != null) {
        TextureVideoView.g(a).hide();
      }
    } while (TextureVideoView.k(a) == null);
    TextureVideoView.k(a).onCompletion(TextureVideoView.f(a));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
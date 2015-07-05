package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.MediaController;

final class TextureVideoView$2
  implements MediaPlayer.OnPreparedListener
{
  TextureVideoView$2(TextureVideoView paramTextureVideoView) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    if (TextureVideoView.a(a) != 1) {}
    label228:
    do
    {
      int i;
      do
      {
        do
        {
          return;
          TextureVideoView.a(a, 2);
          TextureVideoView.b(a);
          TextureVideoView.c(a);
          TextureVideoView.d(a);
          if (TextureVideoView.e(a) != null) {
            TextureVideoView.e(a).onPrepared(TextureVideoView.f(a));
          }
          if (TextureVideoView.g(a) != null) {
            TextureVideoView.g(a).setEnabled(true);
          }
          TextureVideoView.a(a, paramMediaPlayer);
          i = TextureVideoView.h(a);
          if (i != 0) {
            a.seekTo(i);
          }
          if ((a.a == 0) || (a.b == 0)) {
            break label228;
          }
          if (TextureVideoView.i(a) != 3) {
            break;
          }
          a.start();
        } while (TextureVideoView.g(a) == null);
        TextureVideoView.g(a).show();
        return;
      } while ((a.isPlaying()) || ((i == 0) && (a.getCurrentPosition() <= 0)) || (TextureVideoView.g(a) == null));
      TextureVideoView.g(a).show(0);
      return;
    } while (TextureVideoView.i(a) != 3);
    a.start();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
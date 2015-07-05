package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;

final class TextureVideoView$4
  implements MediaPlayer.OnSeekCompleteListener
{
  TextureVideoView$4(TextureVideoView paramTextureVideoView) {}
  
  public final void onSeekComplete(MediaPlayer paramMediaPlayer)
  {
    if (TextureVideoView.l(a) != null) {
      TextureVideoView.l(a).onSeekComplete(paramMediaPlayer);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.TextureVideoView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;

final class SnapEditorView$2
  implements MediaPlayer.OnPreparedListener
{
  SnapEditorView$2(SnapEditorView paramSnapEditorView) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    SnapEditorView.a(a, paramMediaPlayer);
    paramMediaPlayer.setLooping(true);
    paramMediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener()
    {
      public final void onSeekComplete(MediaPlayer paramAnonymousMediaPlayer) {}
    });
    SnapEditorView.b(a, paramMediaPlayer);
    SnapEditorView.c(a).requestLayout();
    a.setAudible(SnapEditorView.d(a));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapEditorView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
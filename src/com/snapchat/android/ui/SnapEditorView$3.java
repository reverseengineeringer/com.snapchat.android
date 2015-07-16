package com.snapchat.android.ui;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import aok;
import com.snapchat.android.model.Mediabryo;

final class SnapEditorView$3
  implements MediaPlayer.OnErrorListener
{
  SnapEditorView$3(SnapEditorView paramSnapEditorView, int paramInt, Mediabryo paramMediabryo) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    aok.a(paramInt1);
    paramInt1 = a;
    if (a > 0)
    {
      SnapEditorView.c(c).stopPlayback();
      SnapEditorView.c(c).postDelayed(new Runnable()
      {
        public final void run()
        {
          SnapEditorView.a(c, b, a - 1);
        }
      }, 500L);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SnapEditorView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
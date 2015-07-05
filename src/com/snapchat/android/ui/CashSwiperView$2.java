package com.snapchat.android.ui;

import android.animation.ValueAnimator;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

public final class CashSwiperView$2
  implements MediaPlayer.OnPreparedListener
{
  public CashSwiperView$2(CashSwiperView paramCashSwiperView) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    CashSwiperView.m(a);
    CashSwiperView.n(a).start();
    if (CashSwiperView.b(a) != null)
    {
      CashSwiperView.b(a).start();
      if (CashSwiperView.b(a).getDuration() > 5000) {
        CashSwiperView.o(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
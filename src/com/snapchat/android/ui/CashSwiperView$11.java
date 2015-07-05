package com.snapchat.android.ui;

import android.os.Handler;

final class CashSwiperView$11
  implements Runnable
{
  CashSwiperView$11(CashSwiperView paramCashSwiperView) {}
  
  public final void run()
  {
    CashSwiperView.i(a);
    CashSwiperView.k(a).postDelayed(new Runnable()
    {
      public final void run()
      {
        CashSwiperView.j(a);
      }
    }, 3000L);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
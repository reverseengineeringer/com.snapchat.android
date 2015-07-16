package com.snapchat.android.ui;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import awf;

final class CashSwiperView$c
  extends GestureDetector.SimpleOnGestureListener
{
  private CashSwiperView$c(CashSwiperView paramCashSwiperView) {}
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (awf.b(paramFloat2, a.getContext()) < -1500.0F) {
      CashSwiperView.a(a, paramFloat2);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CashSwiperView.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui.caption;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class FatCenterCaptionView$1
  implements ViewTreeObserver.OnPreDrawListener
{
  FatCenterCaptionView$1(FatCenterCaptionView paramFatCenterCaptionView, ViewTreeObserver paramViewTreeObserver) {}
  
  public final boolean onPreDraw()
  {
    int i = ((FatCaptionEditText)b.b).getWidth();
    b.setCaptionPositionX((b.d - i) / 2);
    if (a.isAlive()) {
      a.removeOnPreDrawListener(this);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCenterCaptionView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
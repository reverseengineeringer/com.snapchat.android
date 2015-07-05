package com.snapchat.android.ui.caption;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;

final class FatCaptionEditText$2
  implements ScaleGestureDetector.OnScaleGestureListener
{
  FatCaptionEditText$2(FatCaptionEditText paramFatCaptionEditText) {}
  
  public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    a.w = true;
    a.x = true;
    a.m = false;
    FatCaptionEditText.a(a, a.u * paramScaleGestureDetector.getScaleFactor());
    return true;
  }
  
  public final boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    FatCaptionEditText.a(a, true);
    return true;
  }
  
  public final void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
  {
    FatCaptionEditText.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCaptionEditText.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
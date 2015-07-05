package com.snapchat.android.ui.caption;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class FatCaptionEditText$1
  extends GestureDetector.SimpleOnGestureListener
{
  FatCaptionEditText$1(FatCaptionEditText paramFatCaptionEditText) {}
  
  public final void onLongPress(MotionEvent paramMotionEvent)
  {
    if ((a.k) && (!a.y))
    {
      FatCaptionEditText.a(a);
      a.y = true;
      a.performLongClick();
    }
  }
  
  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    a.y = false;
    FatCaptionEditText.a(a);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCaptionEditText.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
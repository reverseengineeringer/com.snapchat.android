package android.support.v4.view;

import android.content.Context;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

final class GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2
  implements GestureDetectorCompat.GestureDetectorCompatImpl
{
  private final GestureDetector mDetector;
  
  public GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    mDetector = new GestureDetector(paramContext, paramOnGestureListener, null);
  }
  
  public final boolean isLongpressEnabled()
  {
    return mDetector.isLongpressEnabled();
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return mDetector.onTouchEvent(paramMotionEvent);
  }
  
  public final void setIsLongpressEnabled(boolean paramBoolean)
  {
    mDetector.setIsLongpressEnabled(paramBoolean);
  }
  
  public final void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    mDetector.setOnDoubleTapListener(paramOnDoubleTapListener);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.GestureDetectorCompat.GestureDetectorCompatImplJellybeanMr2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v4.view;

import android.view.MotionEvent;

final class MotionEventCompat$EclairMotionEventVersionImpl
  implements MotionEventCompat.MotionEventVersionImpl
{
  public final int findPointerIndex(MotionEvent paramMotionEvent, int paramInt)
  {
    return MotionEventCompatEclair.findPointerIndex(paramMotionEvent, paramInt);
  }
  
  public final int getPointerCount(MotionEvent paramMotionEvent)
  {
    return MotionEventCompatEclair.getPointerCount(paramMotionEvent);
  }
  
  public final int getPointerId(MotionEvent paramMotionEvent, int paramInt)
  {
    return MotionEventCompatEclair.getPointerId(paramMotionEvent, paramInt);
  }
  
  public final float getX(MotionEvent paramMotionEvent, int paramInt)
  {
    return MotionEventCompatEclair.getX(paramMotionEvent, paramInt);
  }
  
  public final float getY(MotionEvent paramMotionEvent, int paramInt)
  {
    return MotionEventCompatEclair.getY(paramMotionEvent, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.MotionEventCompat.EclairMotionEventVersionImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
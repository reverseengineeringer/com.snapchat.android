package android.support.v4.widget;

import android.content.Context;
import android.view.animation.Interpolator;

class ScrollerCompat$ScrollerCompatImplGingerbread
  implements ScrollerCompat.ScrollerCompatImpl
{
  public final void abortAnimation(Object paramObject)
  {
    ScrollerCompatGingerbread.abortAnimation(paramObject);
  }
  
  public final boolean computeScrollOffset(Object paramObject)
  {
    return ScrollerCompatGingerbread.computeScrollOffset(paramObject);
  }
  
  public final Object createScroller(Context paramContext, Interpolator paramInterpolator)
  {
    return ScrollerCompatGingerbread.createScroller(paramContext, paramInterpolator);
  }
  
  public final void fling(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    ScrollerCompatGingerbread.fling(paramObject, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
  }
  
  public final void fling(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
  {
    ScrollerCompatGingerbread.fling(paramObject, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
  }
  
  public float getCurrVelocity(Object paramObject)
  {
    return 0.0F;
  }
  
  public final int getCurrX(Object paramObject)
  {
    return ScrollerCompatGingerbread.getCurrX(paramObject);
  }
  
  public final int getCurrY(Object paramObject)
  {
    return ScrollerCompatGingerbread.getCurrY(paramObject);
  }
  
  public final int getFinalX(Object paramObject)
  {
    return ScrollerCompatGingerbread.getFinalX(paramObject);
  }
  
  public final int getFinalY(Object paramObject)
  {
    return ScrollerCompatGingerbread.getFinalY(paramObject);
  }
  
  public final boolean isFinished(Object paramObject)
  {
    return ScrollerCompatGingerbread.isFinished(paramObject);
  }
  
  public final boolean isOverScrolled(Object paramObject)
  {
    return ScrollerCompatGingerbread.isOverScrolled(paramObject);
  }
  
  public final void notifyHorizontalEdgeReached(Object paramObject, int paramInt1, int paramInt2, int paramInt3)
  {
    ScrollerCompatGingerbread.notifyHorizontalEdgeReached(paramObject, paramInt1, paramInt2, paramInt3);
  }
  
  public final void notifyVerticalEdgeReached(Object paramObject, int paramInt1, int paramInt2, int paramInt3)
  {
    ScrollerCompatGingerbread.notifyVerticalEdgeReached(paramObject, paramInt1, paramInt2, paramInt3);
  }
  
  public final void startScroll(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ScrollerCompatGingerbread.startScroll(paramObject, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public final void startScroll(Object paramObject, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    ScrollerCompatGingerbread.startScroll(paramObject, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ScrollerCompat.ScrollerCompatImplGingerbread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
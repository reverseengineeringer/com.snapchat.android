package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;

final class EdgeEffectCompat$BaseEdgeEffectImpl
  implements EdgeEffectCompat.EdgeEffectImpl
{
  public final boolean draw(Object paramObject, Canvas paramCanvas)
  {
    return false;
  }
  
  public final void finish(Object paramObject) {}
  
  public final boolean isFinished(Object paramObject)
  {
    return true;
  }
  
  public final Object newEdgeEffect(Context paramContext)
  {
    return null;
  }
  
  public final boolean onAbsorb(Object paramObject, int paramInt)
  {
    return false;
  }
  
  public final boolean onPull(Object paramObject, float paramFloat)
  {
    return false;
  }
  
  public final boolean onRelease(Object paramObject)
  {
    return false;
  }
  
  public final void setSize(Object paramObject, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     android.support.v4.widget.EdgeEffectCompat.BaseEdgeEffectImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
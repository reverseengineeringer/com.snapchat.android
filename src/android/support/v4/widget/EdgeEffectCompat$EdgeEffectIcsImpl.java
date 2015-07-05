package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;

final class EdgeEffectCompat$EdgeEffectIcsImpl
  implements EdgeEffectCompat.EdgeEffectImpl
{
  public final boolean draw(Object paramObject, Canvas paramCanvas)
  {
    return EdgeEffectCompatIcs.draw(paramObject, paramCanvas);
  }
  
  public final void finish(Object paramObject)
  {
    EdgeEffectCompatIcs.finish(paramObject);
  }
  
  public final boolean isFinished(Object paramObject)
  {
    return EdgeEffectCompatIcs.isFinished(paramObject);
  }
  
  public final Object newEdgeEffect(Context paramContext)
  {
    return EdgeEffectCompatIcs.newEdgeEffect(paramContext);
  }
  
  public final boolean onAbsorb(Object paramObject, int paramInt)
  {
    return EdgeEffectCompatIcs.onAbsorb(paramObject, paramInt);
  }
  
  public final boolean onPull(Object paramObject, float paramFloat)
  {
    return EdgeEffectCompatIcs.onPull(paramObject, paramFloat);
  }
  
  public final boolean onRelease(Object paramObject)
  {
    return EdgeEffectCompatIcs.onRelease(paramObject);
  }
  
  public final void setSize(Object paramObject, int paramInt1, int paramInt2)
  {
    EdgeEffectCompatIcs.setSize(paramObject, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.EdgeEffectCompat.EdgeEffectIcsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
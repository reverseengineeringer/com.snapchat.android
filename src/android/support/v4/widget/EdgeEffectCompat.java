package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public final class EdgeEffectCompat
{
  private static final EdgeEffectImpl IMPL = new BaseEdgeEffectImpl();
  private Object mEdgeEffect;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new EdgeEffectIcsImpl();
      return;
    }
  }
  
  public EdgeEffectCompat(Context paramContext)
  {
    mEdgeEffect = IMPL.newEdgeEffect(paramContext);
  }
  
  public final boolean draw(Canvas paramCanvas)
  {
    return IMPL.draw(mEdgeEffect, paramCanvas);
  }
  
  public final void finish()
  {
    IMPL.finish(mEdgeEffect);
  }
  
  public final boolean isFinished()
  {
    return IMPL.isFinished(mEdgeEffect);
  }
  
  public final boolean onAbsorb(int paramInt)
  {
    return IMPL.onAbsorb(mEdgeEffect, paramInt);
  }
  
  public final boolean onPull(float paramFloat)
  {
    return IMPL.onPull(mEdgeEffect, paramFloat);
  }
  
  public final boolean onRelease()
  {
    return IMPL.onRelease(mEdgeEffect);
  }
  
  public final void setSize(int paramInt1, int paramInt2)
  {
    IMPL.setSize(mEdgeEffect, paramInt1, paramInt2);
  }
  
  static final class BaseEdgeEffectImpl
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
  
  static final class EdgeEffectIcsImpl
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
  
  static abstract interface EdgeEffectImpl
  {
    public abstract boolean draw(Object paramObject, Canvas paramCanvas);
    
    public abstract void finish(Object paramObject);
    
    public abstract boolean isFinished(Object paramObject);
    
    public abstract Object newEdgeEffect(Context paramContext);
    
    public abstract boolean onAbsorb(Object paramObject, int paramInt);
    
    public abstract boolean onPull(Object paramObject, float paramFloat);
    
    public abstract boolean onRelease(Object paramObject);
    
    public abstract void setSize(Object paramObject, int paramInt1, int paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.EdgeEffectCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
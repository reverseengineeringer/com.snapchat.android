package android.support.v4.view;

import android.os.Build.VERSION;

public final class ScaleGestureDetectorCompat
{
  static final ScaleGestureDetectorImpl IMPL = new BaseScaleGestureDetectorImpl((byte)0);
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      IMPL = new ScaleGestureDetectorCompatKitKatImpl((byte)0);
      return;
    }
  }
  
  private static boolean isQuickScaleEnabled(Object paramObject)
  {
    return IMPL.isQuickScaleEnabled(paramObject);
  }
  
  private static void setQuickScaleEnabled(Object paramObject, boolean paramBoolean)
  {
    IMPL.setQuickScaleEnabled(paramObject, paramBoolean);
  }
  
  static final class BaseScaleGestureDetectorImpl
    implements ScaleGestureDetectorCompat.ScaleGestureDetectorImpl
  {
    public final boolean isQuickScaleEnabled(Object paramObject)
    {
      return false;
    }
    
    public final void setQuickScaleEnabled(Object paramObject, boolean paramBoolean) {}
  }
  
  static final class ScaleGestureDetectorCompatKitKatImpl
    implements ScaleGestureDetectorCompat.ScaleGestureDetectorImpl
  {
    public final boolean isQuickScaleEnabled(Object paramObject)
    {
      return ScaleGestureDetectorCompatKitKat.isQuickScaleEnabled(paramObject);
    }
    
    public final void setQuickScaleEnabled(Object paramObject, boolean paramBoolean)
    {
      ScaleGestureDetectorCompatKitKat.setQuickScaleEnabled(paramObject, paramBoolean);
    }
  }
  
  static abstract interface ScaleGestureDetectorImpl
  {
    public abstract boolean isQuickScaleEnabled(Object paramObject);
    
    public abstract void setQuickScaleEnabled(Object paramObject, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ScaleGestureDetectorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
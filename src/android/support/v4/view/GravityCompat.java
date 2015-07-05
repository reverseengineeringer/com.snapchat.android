package android.support.v4.view;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.Gravity;

public final class GravityCompat
{
  public static final int END = 8388613;
  static final GravityCompatImpl IMPL = new GravityCompatImplBase();
  public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
  public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
  public static final int START = 8388611;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      IMPL = new GravityCompatImplJellybeanMr1();
      return;
    }
  }
  
  private static void apply(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, int paramInt4, int paramInt5, Rect paramRect2, int paramInt6)
  {
    IMPL.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramInt4, paramInt5, paramRect2, paramInt6);
  }
  
  public static void apply$1d198dab(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2)
  {
    IMPL.apply$1d198dab(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2);
  }
  
  private static void applyDisplay(int paramInt1, Rect paramRect1, Rect paramRect2, int paramInt2)
  {
    IMPL.applyDisplay(paramInt1, paramRect1, paramRect2, paramInt2);
  }
  
  public static int getAbsoluteGravity(int paramInt1, int paramInt2)
  {
    return IMPL.getAbsoluteGravity(paramInt1, paramInt2);
  }
  
  static abstract interface GravityCompatImpl
  {
    public abstract void apply(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, int paramInt4, int paramInt5, Rect paramRect2, int paramInt6);
    
    public abstract void apply$1d198dab(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2);
    
    public abstract void applyDisplay(int paramInt1, Rect paramRect1, Rect paramRect2, int paramInt2);
    
    public abstract int getAbsoluteGravity(int paramInt1, int paramInt2);
  }
  
  static final class GravityCompatImplBase
    implements GravityCompat.GravityCompatImpl
  {
    public final void apply(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, int paramInt4, int paramInt5, Rect paramRect2, int paramInt6)
    {
      Gravity.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramInt4, paramInt5, paramRect2);
    }
    
    public final void apply$1d198dab(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2)
    {
      Gravity.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2);
    }
    
    public final void applyDisplay(int paramInt1, Rect paramRect1, Rect paramRect2, int paramInt2)
    {
      Gravity.applyDisplay(paramInt1, paramRect1, paramRect2);
    }
    
    public final int getAbsoluteGravity(int paramInt1, int paramInt2)
    {
      return 0xFF7FFFFF & paramInt1;
    }
  }
  
  static final class GravityCompatImplJellybeanMr1
    implements GravityCompat.GravityCompatImpl
  {
    public final void apply(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, int paramInt4, int paramInt5, Rect paramRect2, int paramInt6)
    {
      GravityCompatJellybeanMr1.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramInt4, paramInt5, paramRect2, paramInt6);
    }
    
    public final void apply$1d198dab(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2)
    {
      GravityCompatJellybeanMr1.apply$1d198dab(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2);
    }
    
    public final void applyDisplay(int paramInt1, Rect paramRect1, Rect paramRect2, int paramInt2)
    {
      GravityCompatJellybeanMr1.applyDisplay(paramInt1, paramRect1, paramRect2, paramInt2);
    }
    
    public final int getAbsoluteGravity(int paramInt1, int paramInt2)
    {
      return GravityCompatJellybeanMr1.getAbsoluteGravity(paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.GravityCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
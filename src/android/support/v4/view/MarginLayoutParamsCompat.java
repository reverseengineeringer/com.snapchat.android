package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;

public final class MarginLayoutParamsCompat
{
  static final MarginLayoutParamsCompatImpl IMPL = new MarginLayoutParamsCompatImplBase();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      IMPL = new MarginLayoutParamsCompatImplJbMr1();
      return;
    }
  }
  
  private static int getLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return IMPL.getLayoutDirection(paramMarginLayoutParams);
  }
  
  private static int getMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return IMPL.getMarginEnd(paramMarginLayoutParams);
  }
  
  private static int getMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return IMPL.getMarginStart(paramMarginLayoutParams);
  }
  
  private static boolean isMarginRelative(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return IMPL.isMarginRelative(paramMarginLayoutParams);
  }
  
  private static void resolveLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
  {
    IMPL.resolveLayoutDirection(paramMarginLayoutParams, paramInt);
  }
  
  private static void setLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
  {
    IMPL.setLayoutDirection(paramMarginLayoutParams, paramInt);
  }
  
  private static void setMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
  {
    IMPL.setMarginEnd(paramMarginLayoutParams, paramInt);
  }
  
  private static void setMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
  {
    IMPL.setMarginStart(paramMarginLayoutParams, paramInt);
  }
  
  static abstract interface MarginLayoutParamsCompatImpl
  {
    public abstract int getLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams);
    
    public abstract int getMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams);
    
    public abstract int getMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams);
    
    public abstract boolean isMarginRelative(ViewGroup.MarginLayoutParams paramMarginLayoutParams);
    
    public abstract void resolveLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt);
    
    public abstract void setLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt);
    
    public abstract void setMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt);
    
    public abstract void setMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt);
  }
  
  static final class MarginLayoutParamsCompatImplBase
    implements MarginLayoutParamsCompat.MarginLayoutParamsCompatImpl
  {
    public final int getLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return 0;
    }
    
    public final int getMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return rightMargin;
    }
    
    public final int getMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return leftMargin;
    }
    
    public final boolean isMarginRelative(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return false;
    }
    
    public final void resolveLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {}
    
    public final void setLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt) {}
    
    public final void setMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      rightMargin = paramInt;
    }
    
    public final void setMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      leftMargin = paramInt;
    }
  }
  
  static final class MarginLayoutParamsCompatImplJbMr1
    implements MarginLayoutParamsCompat.MarginLayoutParamsCompatImpl
  {
    public final int getLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return MarginLayoutParamsCompatJellybeanMr1.getLayoutDirection(paramMarginLayoutParams);
    }
    
    public final int getMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return MarginLayoutParamsCompatJellybeanMr1.getMarginEnd(paramMarginLayoutParams);
    }
    
    public final int getMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return MarginLayoutParamsCompatJellybeanMr1.getMarginStart(paramMarginLayoutParams);
    }
    
    public final boolean isMarginRelative(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      return MarginLayoutParamsCompatJellybeanMr1.isMarginRelative(paramMarginLayoutParams);
    }
    
    public final void resolveLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      MarginLayoutParamsCompatJellybeanMr1.resolveLayoutDirection(paramMarginLayoutParams, paramInt);
    }
    
    public final void setLayoutDirection(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      MarginLayoutParamsCompatJellybeanMr1.setLayoutDirection(paramMarginLayoutParams, paramInt);
    }
    
    public final void setMarginEnd(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      MarginLayoutParamsCompatJellybeanMr1.setMarginEnd(paramMarginLayoutParams, paramInt);
    }
    
    public final void setMarginStart(ViewGroup.MarginLayoutParams paramMarginLayoutParams, int paramInt)
    {
      MarginLayoutParamsCompatJellybeanMr1.setMarginStart(paramMarginLayoutParams, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.MarginLayoutParamsCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
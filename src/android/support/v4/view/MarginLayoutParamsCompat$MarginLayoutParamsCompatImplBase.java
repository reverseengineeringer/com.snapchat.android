package android.support.v4.view;

import android.view.ViewGroup.MarginLayoutParams;

final class MarginLayoutParamsCompat$MarginLayoutParamsCompatImplBase
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

/* Location:
 * Qualified Name:     android.support.v4.view.MarginLayoutParamsCompat.MarginLayoutParamsCompatImplBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
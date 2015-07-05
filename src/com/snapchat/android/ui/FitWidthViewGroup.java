package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import md.a;

public class FitWidthViewGroup
  extends ViewGroup
{
  private final String a = "FitWidthViewGroup";
  private final int b = View.MeasureSpec.makeMeasureSpec(0, 0);
  private int c;
  
  public FitWidthViewGroup(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public FitWidthViewGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FitWidthViewGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, md.a.FitWidthViewGroup);
    setGravity(paramContext.getInt(0, 0));
    paramContext.recycle();
  }
  
  public int getGravity()
  {
    return c;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt4 - paramInt2;
    int j = getChildCount();
    paramInt4 = 0;
    if (paramInt4 < j)
    {
      View localView = getChildAt(paramInt4);
      int k = localView.getMeasuredHeight();
      int m = localView.getMeasuredWidth();
      int n = (paramInt3 - paramInt1 - m) / 2;
      switch (c)
      {
      case 1: 
      default: 
        paramInt2 = 0;
      }
      for (;;)
      {
        localView.layout(n, paramInt2, m + n, k + paramInt2);
        paramInt4 += 1;
        break;
        paramInt2 = (i - k) / 2;
        continue;
        paramInt2 = i - k;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    super.onMeasure(paramInt1, paramInt2);
    int k = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1), 1073741824);
    int m = getChildCount();
    int j = 0;
    while (i < m)
    {
      View localView = getChildAt(i);
      localView.measure(k, b);
      j = Math.max(j, localView.getMeasuredHeight());
      i += 1;
    }
    paramInt2 = Math.min(View.MeasureSpec.getSize(paramInt2), j);
    setMeasuredDimension(View.MeasureSpec.getSize(paramInt1), paramInt2);
  }
  
  public void setGravity(int paramInt)
  {
    if ((paramInt > 2) || (paramInt < 0)) {
      throw new IllegalStateException("FitWidthViewGroup cannot have gravity: " + paramInt);
    }
    c = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FitWidthViewGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class SquareRelativeLayout
  extends RelativeLayout
{
  public SquareRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public SquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SquareRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt1);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SquareRelativeLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
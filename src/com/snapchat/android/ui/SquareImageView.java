package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class SquareImageView
  extends ImageView
{
  public SquareImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public SquareImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SquareImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SquareImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;

public class FitWidthImageView
  extends ImageView
{
  public FitWidthImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FitWidthImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FitWidthImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    Drawable localDrawable = getDrawable();
    if (localDrawable != null)
    {
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      paramInt2 = localDrawable.getIntrinsicWidth();
      if (paramInt2 > 0)
      {
        float f = paramInt1;
        setMeasuredDimension(paramInt1, (int)(localDrawable.getIntrinsicHeight() * f / paramInt2));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FitWidthImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
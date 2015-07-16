package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import apx;

public class FitWidthImageResourceView
  extends ImageResourceView
{
  public FitWidthImageResourceView(Context paramContext)
  {
    super(paramContext);
  }
  
  public FitWidthImageResourceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FitWidthImageResourceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    Object localObject;
    if ((a != null) && (a.c() == SnapchatResource.ResourceStatus.LOADED))
    {
      localObject = getDrawable();
      if (localObject != null)
      {
        paramInt1 = View.MeasureSpec.getSize(paramInt1);
        paramInt2 = ((Drawable)localObject).getIntrinsicWidth();
        if (paramInt2 > 0) {
          setMeasuredDimension(paramInt1, ((Drawable)localObject).getIntrinsicHeight() * paramInt1 / paramInt2);
        }
        return;
      }
    }
    paramInt2 = View.MeasureSpec.getSize(paramInt1);
    if ((b != 0) && (c != 0)) {}
    for (paramInt1 = (int)(paramInt2 * c / b);; paramInt1 = (int)(paramInt2 * heightPixels / widthPixels))
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      localObject = getResources().getDisplayMetrics();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FitWidthImageResourceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
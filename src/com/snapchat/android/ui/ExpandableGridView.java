package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.GridView;

public class ExpandableGridView
  extends GridView
{
  public ExpandableGridView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ExpandableGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ExpandableGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    getLayoutParamsheight = getMeasuredHeight();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.ExpandableGridView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
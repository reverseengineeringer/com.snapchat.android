package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.TextView;

public class WideTextView
  extends TextView
{
  private boolean a = false;
  
  public WideTextView(Context paramContext)
  {
    super(paramContext);
  }
  
  public WideTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public WideTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    paramInt1 = Math.max(widthPixels, heightPixels);
    paramInt2 = Math.min(widthPixels, heightPixels);
    if (a)
    {
      setMeasuredDimension(paramInt1, getMeasuredHeight());
      return;
    }
    setMeasuredDimension(paramInt2, getMeasuredHeight());
  }
  
  public void setLandscapeMode(boolean paramBoolean)
  {
    a = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.WideTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
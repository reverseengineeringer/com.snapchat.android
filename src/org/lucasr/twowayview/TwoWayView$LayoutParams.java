package org.lucasr.twowayview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class TwoWayView$LayoutParams
  extends ViewGroup.LayoutParams
{
  boolean forceAdd;
  long id = -1L;
  int scrappedFromPosition;
  int viewType;
  
  public TwoWayView$LayoutParams(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    if (width == -1) {
      width = -2;
    }
    if (height == -1) {
      height = -2;
    }
  }
  
  public TwoWayView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (width == -1) {
      width = -1;
    }
    if (height == -1) {
      height = -2;
    }
  }
  
  public TwoWayView$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
    if (width == -1) {
      width = -2;
    }
    if (height == -1) {
      height = -2;
    }
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
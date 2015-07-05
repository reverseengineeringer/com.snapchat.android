package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class RecyclerView$LayoutParams
  extends ViewGroup.MarginLayoutParams
{
  public RecyclerView.s c;
  final Rect d = new Rect();
  boolean e = true;
  boolean f = false;
  
  public RecyclerView$LayoutParams()
  {
    super(-2, -2);
  }
  
  public RecyclerView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public RecyclerView$LayoutParams(LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public RecyclerView$LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
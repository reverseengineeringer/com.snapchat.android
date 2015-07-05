package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;

class WrapperView
  extends ViewGroup
{
  Drawable mDivider;
  int mDividerHeight;
  View mHeader;
  View mItem;
  int mItemTop;
  
  public WrapperView(Context paramContext)
  {
    super(paramContext);
  }
  
  private void update(View paramView1, View paramView2, Drawable paramDrawable, int paramInt)
  {
    if (paramView1 == null) {
      throw new NullPointerException("List view item must not be null.");
    }
    if (mItem != paramView1)
    {
      removeView(mItem);
      mItem = paramView1;
      ViewParent localViewParent = paramView1.getParent();
      if ((localViewParent != null) && (localViewParent != this) && ((localViewParent instanceof ViewGroup))) {
        ((ViewGroup)localViewParent).removeView(paramView1);
      }
      addView(paramView1);
    }
    if (mHeader != paramView2)
    {
      if (mHeader != null) {
        removeView(mHeader);
      }
      mHeader = paramView2;
      if (paramView2 != null) {
        addView(paramView2);
      }
    }
    if (mDivider != paramDrawable)
    {
      mDivider = paramDrawable;
      mDividerHeight = paramInt;
      invalidate();
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((mHeader == null) && (mDivider != null))
    {
      if (Build.VERSION.SDK_INT < 11) {
        paramCanvas.clipRect(0, 0, getWidth(), mDividerHeight);
      }
      mDivider.draw(paramCanvas);
    }
  }
  
  final boolean hasHeader()
  {
    return mHeader != null;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getWidth();
    paramInt2 = getHeight();
    if (mHeader != null)
    {
      paramInt3 = mHeader.getMeasuredHeight();
      mHeader.layout(0, 0, paramInt1, paramInt3);
      mItemTop = paramInt3;
      mItem.layout(0, paramInt3, paramInt1, paramInt2);
      return;
    }
    if (mDivider != null)
    {
      mDivider.setBounds(0, 0, paramInt1, mDividerHeight);
      mItemTop = mDividerHeight;
      mItem.layout(0, mDividerHeight, paramInt1, paramInt2);
      return;
    }
    mItemTop = 0;
    mItem.layout(0, 0, paramInt1, paramInt2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = View.MeasureSpec.getSize(paramInt1);
    int i = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
    ViewGroup.LayoutParams localLayoutParams;
    if (mHeader != null)
    {
      localLayoutParams = mHeader.getLayoutParams();
      if ((localLayoutParams != null) && (height > 0))
      {
        mHeader.measure(i, View.MeasureSpec.makeMeasureSpec(height, 1073741824));
        paramInt1 = mHeader.getMeasuredHeight() + 0;
      }
    }
    for (;;)
    {
      label69:
      localLayoutParams = mItem.getLayoutParams();
      if ((localLayoutParams != null) && (height > 0)) {
        mItem.measure(i, View.MeasureSpec.makeMeasureSpec(height, 1073741824));
      }
      for (;;)
      {
        setMeasuredDimension(paramInt2, paramInt1 + mItem.getMeasuredHeight());
        return;
        mHeader.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
        break;
        if (mDivider == null) {
          break label173;
        }
        paramInt1 = mDividerHeight + 0;
        break label69;
        mItem.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
      }
      label173:
      paramInt1 = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.WrapperView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
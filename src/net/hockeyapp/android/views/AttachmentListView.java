package net.hockeyapp.android.views;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;

public class AttachmentListView
  extends ViewGroup
{
  private int b;
  
  static
  {
    if (!AttachmentListView.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public AttachmentListView(Context paramContext)
  {
    super(paramContext);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof ViewGroup.LayoutParams;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.LayoutParams(1, 1);
  }
  
  public ArrayList<Uri> getAttachments()
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < getChildCount())
    {
      localArrayList.add(((AttachmentView)getChildAt(i)).getAttachmentUri());
      i += 1;
    }
    return localArrayList;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int m = getChildCount();
    paramInt4 = getPaddingLeft();
    paramInt2 = getPaddingTop();
    int j = 0;
    while (j < m)
    {
      View localView = getChildAt(j);
      int i = paramInt2;
      int k = paramInt4;
      if (localView.getVisibility() != 8)
      {
        localView.invalidate();
        int n = localView.getMeasuredWidth();
        int i1 = localView.getMeasuredHeight();
        ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
        i = paramInt2;
        k = paramInt4;
        if (paramInt4 + n > paramInt3 - paramInt1)
        {
          k = getPaddingLeft();
          i = paramInt2 + b;
        }
        localView.layout(k, i, k + n, i1 + i);
        paramInt2 = width;
        k += ((AttachmentView)localView).getGap() + (n + paramInt2);
      }
      j += 1;
      paramInt2 = i;
      paramInt4 = k;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k = 0;
    if ((!a) && (View.MeasureSpec.getMode(paramInt1) == 0)) {
      throw new AssertionError();
    }
    int n = View.MeasureSpec.getSize(paramInt1);
    int i1 = getChildCount();
    int i = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int m = 0;
    int j = 0;
    if (m < i1)
    {
      View localView = getChildAt(m);
      Object localObject = (AttachmentView)localView;
      k = ((AttachmentView)localObject).getEffectiveMaxHeight() + ((AttachmentView)localObject).getPaddingTop();
      if (localView.getVisibility() == 8) {
        break label263;
      }
      localObject = localView.getLayoutParams();
      localView.measure(View.MeasureSpec.makeMeasureSpec(n, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE));
      int i2 = localView.getMeasuredWidth();
      j = Math.max(j, localView.getMeasuredHeight() + height);
      if (i + i2 <= n) {
        break label260;
      }
      i = getPaddingLeft();
      paramInt1 += j;
      label167:
      i += width + i2;
    }
    label260:
    label263:
    for (;;)
    {
      m += 1;
      break;
      b = j;
      if (View.MeasureSpec.getMode(paramInt2) == 0) {
        i = paramInt1 + j + getPaddingBottom();
      }
      for (;;)
      {
        setMeasuredDimension(n, i);
        return;
        i = k;
        if (View.MeasureSpec.getMode(paramInt2) == Integer.MIN_VALUE)
        {
          i = k;
          if (paramInt1 + j + getPaddingBottom() < k) {
            i = paramInt1 + j + getPaddingBottom();
          }
        }
      }
      break label167;
    }
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.views.AttachmentListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
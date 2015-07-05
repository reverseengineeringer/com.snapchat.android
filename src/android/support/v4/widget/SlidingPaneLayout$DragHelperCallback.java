package android.support.v4.widget;

import android.view.View;

final class SlidingPaneLayout$DragHelperCallback
  extends ViewDragHelper.Callback
{
  private SlidingPaneLayout$DragHelperCallback(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  public final int clampViewPositionHorizontal$17e143b0(View paramView, int paramInt)
  {
    paramView = (SlidingPaneLayout.LayoutParams)SlidingPaneLayout.access$400(this$0).getLayoutParams();
    if (SlidingPaneLayout.access$700(this$0))
    {
      i = this$0.getWidth();
      j = this$0.getPaddingRight();
      i -= rightMargin + j + SlidingPaneLayout.access$400(this$0).getWidth();
      j = SlidingPaneLayout.access$800(this$0);
      return Math.max(Math.min(paramInt, i), i - j);
    }
    int i = this$0.getPaddingLeft();
    i = leftMargin + i;
    int j = SlidingPaneLayout.access$800(this$0);
    return Math.min(Math.max(paramInt, i), j + i);
  }
  
  public final int clampViewPositionVertical$17e143b0(View paramView)
  {
    return paramView.getTop();
  }
  
  public final int getViewHorizontalDragRange(View paramView)
  {
    return SlidingPaneLayout.access$800(this$0);
  }
  
  public final void onEdgeDragStarted(int paramInt1, int paramInt2)
  {
    SlidingPaneLayout.access$200(this$0).captureChildView(SlidingPaneLayout.access$400(this$0), paramInt2);
  }
  
  public final void onViewCaptured$5359dc9a(View paramView)
  {
    this$0.setAllChildrenVisible();
  }
  
  public final void onViewDragStateChanged(int paramInt)
  {
    if (access$200this$0).mDragState == 0)
    {
      if (SlidingPaneLayout.access$300(this$0) == 0.0F)
      {
        this$0.updateObscuredViewsVisibility(SlidingPaneLayout.access$400(this$0));
        localSlidingPaneLayout = this$0;
        SlidingPaneLayout.access$400(this$0);
        localSlidingPaneLayout.sendAccessibilityEvent(32);
        SlidingPaneLayout.access$502(this$0, false);
      }
    }
    else {
      return;
    }
    SlidingPaneLayout localSlidingPaneLayout = this$0;
    SlidingPaneLayout.access$400(this$0);
    localSlidingPaneLayout.sendAccessibilityEvent(32);
    SlidingPaneLayout.access$502(this$0, true);
  }
  
  public final void onViewPositionChanged$5b6f797d(View paramView, int paramInt)
  {
    SlidingPaneLayout.access$600(this$0, paramInt);
    this$0.invalidate();
  }
  
  public final void onViewReleased$17e2ac03(View paramView, float paramFloat)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i;
    int j;
    if (SlidingPaneLayout.access$700(this$0))
    {
      i = this$0.getPaddingRight();
      j = rightMargin + i;
      if (paramFloat >= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (SlidingPaneLayout.access$300(this$0) <= 0.5F) {}
        }
      }
      else
      {
        i = j + SlidingPaneLayout.access$800(this$0);
      }
      j = SlidingPaneLayout.access$400(this$0).getWidth();
      i = this$0.getWidth() - i - j;
    }
    for (;;)
    {
      SlidingPaneLayout.access$200(this$0).settleCapturedViewAt(i, paramView.getTop());
      this$0.invalidate();
      return;
      i = this$0.getPaddingLeft();
      j = leftMargin + i;
      if (paramFloat <= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (SlidingPaneLayout.access$300(this$0) <= 0.5F) {}
        }
      }
      else
      {
        i = j + SlidingPaneLayout.access$800(this$0);
      }
    }
  }
  
  public final boolean tryCaptureView$5359dc96(View paramView)
  {
    if (SlidingPaneLayout.access$100(this$0)) {
      return false;
    }
    return getLayoutParamsslideable;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout.DragHelperCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
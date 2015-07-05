package android.support.v4.widget;

import android.view.View;

public abstract class ViewDragHelper$Callback
{
  private static int getOrderedChildIndex(int paramInt)
  {
    return paramInt;
  }
  
  private static int getViewVerticalDragRange$3c7ec8d0()
  {
    return 0;
  }
  
  public int clampViewPositionHorizontal$17e143b0(View paramView, int paramInt)
  {
    return 0;
  }
  
  public int clampViewPositionVertical$17e143b0(View paramView)
  {
    return 0;
  }
  
  public int getViewHorizontalDragRange(View paramView)
  {
    return 0;
  }
  
  public void onEdgeDragStarted(int paramInt1, int paramInt2) {}
  
  public boolean onEdgeLock$134632()
  {
    return false;
  }
  
  public void onEdgeTouched$255f295() {}
  
  public void onViewCaptured$5359dc9a(View paramView) {}
  
  public void onViewDragStateChanged(int paramInt) {}
  
  public void onViewPositionChanged$5b6f797d(View paramView, int paramInt) {}
  
  public void onViewReleased$17e2ac03(View paramView, float paramFloat) {}
  
  public abstract boolean tryCaptureView$5359dc96(View paramView);
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ViewDragHelper.Callback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
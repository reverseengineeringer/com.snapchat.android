package org.lucasr.twowayview;

public abstract interface TwoWayView$OnScrollListener
{
  public static final int SCROLL_STATE_FLING = 2;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_TOUCH_SCROLL = 1;
  
  public abstract void onScroll(TwoWayView paramTwoWayView, int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void onScrollStateChanged(TwoWayView paramTwoWayView, int paramInt);
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.OnScrollListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
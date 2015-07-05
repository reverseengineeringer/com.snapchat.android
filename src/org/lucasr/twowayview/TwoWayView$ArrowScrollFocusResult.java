package org.lucasr.twowayview;

class TwoWayView$ArrowScrollFocusResult
{
  private int mAmountToScroll;
  private int mSelectedPosition;
  
  public int getAmountToScroll()
  {
    return mAmountToScroll;
  }
  
  public int getSelectedPosition()
  {
    return mSelectedPosition;
  }
  
  void populate(int paramInt1, int paramInt2)
  {
    mSelectedPosition = paramInt1;
    mAmountToScroll = paramInt2;
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.ArrowScrollFocusResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
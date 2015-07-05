package org.lucasr.twowayview;

class TwoWayView$WindowRunnnable
{
  private int mOriginalAttachCount;
  
  private TwoWayView$WindowRunnnable(TwoWayView paramTwoWayView) {}
  
  public void rememberWindowAttachCount()
  {
    mOriginalAttachCount = TwoWayView.access$3000(this$0);
  }
  
  public boolean sameWindow()
  {
    return (this$0.hasWindowFocus()) && (TwoWayView.access$3100(this$0) == mOriginalAttachCount);
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.WindowRunnnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
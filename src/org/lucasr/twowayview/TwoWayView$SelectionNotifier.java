package org.lucasr.twowayview;

class TwoWayView$SelectionNotifier
  implements Runnable
{
  private TwoWayView$SelectionNotifier(TwoWayView paramTwoWayView) {}
  
  public void run()
  {
    if (TwoWayView.access$500(this$0))
    {
      if (TwoWayView.access$1400(this$0) != null) {
        this$0.post(this);
      }
      return;
    }
    TwoWayView.access$2800(this$0);
    TwoWayView.access$2900(this$0);
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.SelectionNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
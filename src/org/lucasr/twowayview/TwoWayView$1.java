package org.lucasr.twowayview;

import android.view.View;

class TwoWayView$1
  implements Runnable
{
  TwoWayView$1(TwoWayView paramTwoWayView, View paramView, TwoWayView.PerformClick paramPerformClick) {}
  
  public void run()
  {
    TwoWayView.access$402(this$0, -1);
    this$0.setPressed(false);
    val$child.setPressed(false);
    if (!TwoWayView.access$500(this$0)) {
      val$performClick.run();
    }
    TwoWayView.access$602(this$0, null);
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
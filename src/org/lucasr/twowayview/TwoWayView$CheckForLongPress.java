package org.lucasr.twowayview;

import android.view.View;
import android.widget.ListAdapter;

class TwoWayView$CheckForLongPress
  extends TwoWayView.WindowRunnnable
  implements Runnable
{
  private TwoWayView$CheckForLongPress(TwoWayView paramTwoWayView)
  {
    super(paramTwoWayView, null);
  }
  
  public void run()
  {
    int i = TwoWayView.access$3400(this$0);
    View localView = this$0.getChildAt(i - TwoWayView.access$3300(this$0));
    long l;
    if (localView != null)
    {
      l = TwoWayView.access$1400(this$0).getItemId(TwoWayView.access$3400(this$0));
      if ((!sameWindow()) || (TwoWayView.access$500(this$0))) {
        break label120;
      }
    }
    label120:
    for (boolean bool = TwoWayView.access$4000(this$0, localView, i, l);; bool = false)
    {
      if (bool)
      {
        TwoWayView.access$402(this$0, -1);
        this$0.setPressed(false);
        localView.setPressed(false);
        return;
      }
      TwoWayView.access$402(this$0, 2);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.CheckForLongPress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
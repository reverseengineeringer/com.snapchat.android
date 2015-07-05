package org.lucasr.twowayview;

import android.view.View;
import android.widget.ListAdapter;

class TwoWayView$PerformClick
  extends TwoWayView.WindowRunnnable
  implements Runnable
{
  int mClickMotionPosition;
  
  private TwoWayView$PerformClick(TwoWayView paramTwoWayView)
  {
    super(paramTwoWayView, null);
  }
  
  public void run()
  {
    if (TwoWayView.access$500(this$0)) {}
    ListAdapter localListAdapter;
    int i;
    View localView;
    do
    {
      do
      {
        return;
        localListAdapter = TwoWayView.access$1400(this$0);
        i = mClickMotionPosition;
      } while ((localListAdapter == null) || (TwoWayView.access$1800(this$0) <= 0) || (i == -1) || (i >= localListAdapter.getCount()) || (!sameWindow()));
      localView = this$0.getChildAt(i - TwoWayView.access$3300(this$0));
    } while (localView == null);
    this$0.performItemClick(localView, i, localListAdapter.getItemId(i));
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.PerformClick
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
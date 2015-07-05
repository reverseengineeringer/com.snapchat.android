package org.lucasr.twowayview;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.widget.ListAdapter;

class TwoWayView$AdapterDataSetObserver
  extends DataSetObserver
{
  private Parcelable mInstanceState = null;
  
  private TwoWayView$AdapterDataSetObserver(TwoWayView paramTwoWayView) {}
  
  public void onChanged()
  {
    TwoWayView.access$502(this$0, true);
    TwoWayView.access$1702(this$0, TwoWayView.access$1800(this$0));
    TwoWayView.access$1802(this$0, this$0.getAdapter().getCount());
    if ((TwoWayView.access$1900(this$0)) && (mInstanceState != null) && (TwoWayView.access$1700(this$0) == 0) && (TwoWayView.access$1800(this$0) > 0))
    {
      this$0.onRestoreInstanceState(mInstanceState);
      mInstanceState = null;
    }
    for (;;)
    {
      TwoWayView.access$2100(this$0);
      this$0.requestLayout();
      return;
      TwoWayView.access$2000(this$0);
    }
  }
  
  public void onInvalidated()
  {
    TwoWayView.access$502(this$0, true);
    if (TwoWayView.access$1900(this$0)) {
      mInstanceState = this$0.onSaveInstanceState();
    }
    TwoWayView.access$1702(this$0, TwoWayView.access$1800(this$0));
    TwoWayView.access$1802(this$0, 0);
    TwoWayView.access$2202(this$0, -1);
    TwoWayView.access$2302(this$0, Long.MIN_VALUE);
    TwoWayView.access$2402(this$0, -1);
    TwoWayView.access$2502(this$0, Long.MIN_VALUE);
    TwoWayView.access$2602(this$0, false);
    TwoWayView.access$2100(this$0);
    this$0.requestLayout();
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.AdapterDataSetObserver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package xyz.danoz.recyclerviewfastscroller;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.j;
import cku;
import ckv;

final class AbsRecyclerViewFastScroller$1
  extends RecyclerView.j
{
  AbsRecyclerViewFastScroller$1(AbsRecyclerViewFastScroller paramAbsRecyclerViewFastScroller) {}
  
  public final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    float f = 0.0F;
    ckv localckv = a.getScrollProgressCalculator();
    if (localckv != null) {
      f = localckv.a(paramRecyclerView);
    }
    a.a(f);
  }
}

/* Location:
 * Qualified Name:     xyz.danoz.recyclerviewfastscroller.AbsRecyclerViewFastScroller.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
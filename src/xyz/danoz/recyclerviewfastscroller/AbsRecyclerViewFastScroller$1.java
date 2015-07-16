package xyz.danoz.recyclerviewfastscroller;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.j;
import clv;
import clw;

final class AbsRecyclerViewFastScroller$1
  extends RecyclerView.j
{
  AbsRecyclerViewFastScroller$1(AbsRecyclerViewFastScroller paramAbsRecyclerViewFastScroller) {}
  
  public final void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2)
  {
    float f = 0.0F;
    clw localclw = a.getScrollProgressCalculator();
    if (localclw != null) {
      f = localclw.a(paramRecyclerView);
    }
    a.a(f);
  }
}

/* Location:
 * Qualified Name:     xyz.danoz.recyclerviewfastscroller.AbsRecyclerViewFastScroller.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
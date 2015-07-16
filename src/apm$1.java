import org.lucasr.twowayview.TwoWayView;
import org.lucasr.twowayview.TwoWayView.OnScrollListener;

final class apm$1
  implements TwoWayView.OnScrollListener
{
  apm$1(apm paramapm) {}
  
  public final void onScroll(TwoWayView paramTwoWayView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt1 += paramInt2;
    if ((a.f != -1) && (a.f == paramInt1)) {
      return;
    }
    a.f = paramInt1;
    a.m();
  }
  
  public final void onScrollStateChanged(TwoWayView paramTwoWayView, int paramInt)
  {
    if (paramInt != 0) {
      return;
    }
    a.d();
  }
}

/* Location:
 * Qualified Name:     apm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
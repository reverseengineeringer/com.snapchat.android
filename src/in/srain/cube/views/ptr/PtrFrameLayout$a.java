package in.srain.cube.views.ptr;

import android.widget.Scroller;
import in.srain.cube.util.CLog;

final class PtrFrameLayout$a
  implements Runnable
{
  private int b;
  private Scroller c;
  private boolean d = false;
  private int e;
  private int f;
  
  public PtrFrameLayout$a(PtrFrameLayout paramPtrFrameLayout)
  {
    c = new Scroller(paramPtrFrameLayout.getContext());
  }
  
  private void b()
  {
    d = false;
    b = 0;
    a.removeCallbacks(this);
  }
  
  public final void a()
  {
    if (d)
    {
      if (!c.isFinished()) {
        c.forceFinished(true);
      }
      a.c();
      b();
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if (PtrFrameLayout.c(a) == paramInt1) {
      return;
    }
    e = PtrFrameLayout.c(a);
    f = paramInt1;
    int i = paramInt1 - e;
    if (PtrFrameLayout.a) {
      CLog.d(a.b, "tryToScrollTo: start: %s, distance:%s, to:%s", new Object[] { Integer.valueOf(e), Integer.valueOf(i), Integer.valueOf(paramInt1) });
    }
    a.removeCallbacks(this);
    b = 0;
    c = new Scroller(a.getContext());
    c.startScroll(0, 0, 0, i, paramInt2);
    a.post(this);
    d = true;
  }
  
  public final void run()
  {
    if ((!c.computeScrollOffset()) || (c.isFinished())) {}
    for (boolean bool = true;; bool = false)
    {
      int i = c.getCurrY();
      int j = i - b;
      if ((PtrFrameLayout.a) && (j != 0)) {
        CLog.v(a.b, "scroll: %s, start: %s, to: %s, mCurrentPos: %s, current :%s, last: %s, delta: %s", new Object[] { Boolean.valueOf(bool), Integer.valueOf(e), Integer.valueOf(f), Integer.valueOf(PtrFrameLayout.c(a)), Integer.valueOf(i), Integer.valueOf(b), Integer.valueOf(j) });
      }
      if (bool) {
        break;
      }
      b = i;
      PtrFrameLayout.a(a, j);
      a.post(this);
      return;
    }
    if (PtrFrameLayout.a) {
      CLog.v(a.b, "finish, mCurrentPos:%s", new Object[] { Integer.valueOf(PtrFrameLayout.c(a)) });
    }
    b();
    a.d();
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.PtrFrameLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v7.widget;

import ac;
import android.support.v4.view.ViewCompat;
import java.util.ArrayList;

final class RecyclerView$n
  extends RecyclerView.c
{
  private RecyclerView$n(RecyclerView paramRecyclerView) {}
  
  private void b()
  {
    if ((RecyclerView.n(a)) && (RecyclerView.o(a)) && (RecyclerView.p(a)))
    {
      ViewCompat.postOnAnimation(a, RecyclerView.q(a));
      return;
    }
    RecyclerView.r(a);
    a.requestLayout();
  }
  
  public final void a()
  {
    a.a(null);
    if (ga).b)
    {
      a.m.h = true;
      RecyclerView.m(a);
    }
    for (;;)
    {
      if (!a.b.d()) {
        a.requestLayout();
      }
      return;
      a.m.h = true;
      RecyclerView.m(a);
    }
  }
  
  public final void a(int paramInt)
  {
    int i = 1;
    a.a(null);
    ac localac = a.b;
    a.add(localac.a(0, paramInt, 1));
    if (a.size() == 1) {}
    for (paramInt = i;; paramInt = 0)
    {
      if (paramInt != 0) {
        b();
      }
      return;
    }
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    int i = 1;
    a.a(null);
    ac localac = a.b;
    a.add(localac.a(2, paramInt1, paramInt2));
    if (a.size() == 1) {}
    for (paramInt1 = i;; paramInt1 = 0)
    {
      if (paramInt1 != 0) {
        b();
      }
      return;
    }
  }
  
  public final void b(int paramInt)
  {
    int i = 1;
    a.a(null);
    ac localac = a.b;
    a.add(localac.a(1, paramInt, 1));
    if (a.size() == 1) {}
    for (paramInt = i;; paramInt = 0)
    {
      if (paramInt != 0) {
        b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v7.widget;

import ac;
import ad;

final class RecyclerView$1
  implements Runnable
{
  RecyclerView$1(RecyclerView paramRecyclerView) {}
  
  public final void run()
  {
    if (!RecyclerView.a(a)) {}
    do
    {
      return;
      if (RecyclerView.b(a))
      {
        a.g();
        return;
      }
    } while (!a.b.d());
    a.a();
    a.b.b();
    if (!RecyclerView.c(a))
    {
      RecyclerView localRecyclerView = a;
      int j = c.a();
      int i = 0;
      if (i < j)
      {
        RecyclerView.s locals = RecyclerView.b(c.b(i));
        if ((locals != null) && (!locals.b()))
        {
          if ((!locals.m()) && (!locals.i())) {
            break label146;
          }
          localRecyclerView.requestLayout();
        }
        for (;;)
        {
          i += 1;
          break;
          label146:
          if (locals.j())
          {
            int k = e.a(b);
            if (e == k)
            {
              if ((!locals.k()) || (!localRecyclerView.f())) {
                e.b(locals, b);
              } else {
                localRecyclerView.requestLayout();
              }
            }
            else
            {
              locals.a(4);
              localRecyclerView.requestLayout();
            }
          }
        }
      }
    }
    a.a(true);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
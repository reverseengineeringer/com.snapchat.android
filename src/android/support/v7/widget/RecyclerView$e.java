package android.support.v7.widget;

final class RecyclerView$e
  implements RecyclerView.d.a
{
  private RecyclerView$e(RecyclerView paramRecyclerView) {}
  
  public final void a(RecyclerView.s params)
  {
    params.a(true);
    if ((!RecyclerView.e(a, a)) && (params.n())) {
      a.removeDetachedView(a, false);
    }
  }
  
  public final void b(RecyclerView.s params)
  {
    params.a(true);
    if (params.p()) {
      RecyclerView.e(a, a);
    }
  }
  
  public final void c(RecyclerView.s params)
  {
    params.a(true);
    if (params.p()) {
      RecyclerView.e(a, a);
    }
  }
  
  public final void d(RecyclerView.s params)
  {
    params.a(true);
    if ((g != null) && (h == null))
    {
      g = null;
      params.a(-65, i);
    }
    h = null;
    if (params.p()) {
      RecyclerView.e(a, a);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package android.support.v7.widget;

import java.util.ArrayList;

public abstract class RecyclerView$d
{
  private ArrayList<Object> a = new ArrayList();
  a h = null;
  public long i = 120L;
  public long j = 120L;
  public long k = 250L;
  public long l = 250L;
  boolean m = false;
  
  public abstract void a();
  
  public abstract boolean a(RecyclerView.s params);
  
  public abstract boolean a(RecyclerView.s params, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean a(RecyclerView.s params1, RecyclerView.s params2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public abstract boolean b();
  
  public abstract boolean b(RecyclerView.s params);
  
  public abstract void c(RecyclerView.s params);
  
  public abstract void d();
  
  public final void d(RecyclerView.s params)
  {
    if (h != null) {
      h.a(params);
    }
  }
  
  public final void e()
  {
    int i1 = a.size();
    int n = 0;
    while (n < i1)
    {
      a.get(n);
      n += 1;
    }
    a.clear();
  }
  
  public final void e(RecyclerView.s params)
  {
    if (h != null) {
      h.c(params);
    }
  }
  
  public final void f(RecyclerView.s params)
  {
    if (h != null) {
      h.b(params);
    }
  }
  
  public final void g(RecyclerView.s params)
  {
    if (h != null) {
      h.d(params);
    }
  }
  
  static abstract interface a
  {
    public abstract void a(RecyclerView.s params);
    
    public abstract void b(RecyclerView.s params);
    
    public abstract void c(RecyclerView.s params);
    
    public abstract void d(RecyclerView.s params);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
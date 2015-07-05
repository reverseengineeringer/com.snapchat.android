package android.support.v7.widget;

import android.view.ViewGroup;

public abstract class RecyclerView$a<VH extends RecyclerView.s>
{
  public final RecyclerView.b a = new RecyclerView.b();
  public boolean b = false;
  
  public abstract int a();
  
  public int a(int paramInt)
  {
    return 0;
  }
  
  public abstract VH a(ViewGroup paramViewGroup, int paramInt);
  
  public final void a(RecyclerView.c paramc)
  {
    a.registerObserver(paramc);
  }
  
  public abstract void a(VH paramVH, int paramInt);
  
  public long b(int paramInt)
  {
    return -1L;
  }
  
  public final void b(RecyclerView.c paramc)
  {
    a.unregisterObserver(paramc);
  }
  
  public final void b(VH paramVH, int paramInt)
  {
    b = paramInt;
    if (b) {
      d = b(paramInt);
    }
    a(paramVH, paramInt);
    paramVH.a(1, 7);
  }
  
  public final void c(int paramInt)
  {
    a.a(paramInt, 1);
  }
  
  public final void d(int paramInt)
  {
    a.b(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
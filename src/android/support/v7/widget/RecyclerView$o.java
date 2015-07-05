package android.support.v7.widget;

import android.view.View;
import android.view.animation.Interpolator;

public abstract class RecyclerView$o
{
  int a;
  boolean b;
  boolean c;
  View d;
  private RecyclerView e;
  private RecyclerView.h f;
  private final a g;
  
  protected final void a()
  {
    if (!c) {
      return;
    }
    e.m.a = -1;
    d = null;
    a = -1;
    b = false;
    c = false;
    RecyclerView.h.a(f, this);
    f = null;
    e = null;
  }
  
  public static final class a
  {
    private int a;
    private int b;
    private int c;
    private Interpolator d;
    private boolean e;
    private int f;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
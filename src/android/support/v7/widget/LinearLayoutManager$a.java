package android.support.v7.widget;

import ah;
import android.view.View;

final class LinearLayoutManager$a
{
  int a;
  int b;
  boolean c;
  
  LinearLayoutManager$a(LinearLayoutManager paramLinearLayoutManager) {}
  
  final void a()
  {
    if (c) {}
    for (int i = d.j.c();; i = d.j.b())
    {
      b = i;
      return;
    }
  }
  
  public final void a(View paramView)
  {
    if (c) {}
    for (b = (d.j.b(paramView) + d.j.a());; b = d.j.a(paramView))
    {
      a = LinearLayoutManager.a(paramView);
      return;
    }
  }
  
  public final String toString()
  {
    return "AnchorInfo{mPosition=" + a + ", mCoordinate=" + b + ", mLayoutFromEnd=" + c + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
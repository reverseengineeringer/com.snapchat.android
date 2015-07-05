package android.support.v7.widget;

import ah;
import android.view.View;
import java.util.ArrayList;

final class StaggeredGridLayoutManager$b
{
  ArrayList<View> a;
  int b;
  int c;
  int d;
  final int e;
  
  private void f()
  {
    Object localObject = (View)a.get(0);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)((View)localObject).getLayoutParams();
    b = f.a.a((View)localObject);
    if (b)
    {
      localObject = f.f.d(c.c());
      if ((localObject != null) && (b == -1)) {
        b -= ((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).a(e);
      }
    }
  }
  
  private void g()
  {
    Object localObject = (View)a.get(a.size() - 1);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)((View)localObject).getLayoutParams();
    c = f.a.b((View)localObject);
    if (b)
    {
      localObject = f.f.d(c.c());
      if ((localObject != null) && (b == 1))
      {
        int i = c;
        c = (((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject).a(e) + i);
      }
    }
  }
  
  final int a()
  {
    if (b != Integer.MIN_VALUE) {
      return b;
    }
    f();
    return b;
  }
  
  final int a(int paramInt)
  {
    if (b != Integer.MIN_VALUE) {
      paramInt = b;
    }
    while (a.size() == 0) {
      return paramInt;
    }
    f();
    return b;
  }
  
  final void a(View paramView)
  {
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    a = this;
    a.add(0, paramView);
    b = Integer.MIN_VALUE;
    if (a.size() == 1) {
      c = Integer.MIN_VALUE;
    }
    if ((c.m()) || (c.k())) {
      d += f.a.c(paramView);
    }
  }
  
  final int b()
  {
    if (c != Integer.MIN_VALUE) {
      return c;
    }
    g();
    return c;
  }
  
  final int b(int paramInt)
  {
    if (c != Integer.MIN_VALUE) {
      paramInt = c;
    }
    while (a.size() == 0) {
      return paramInt;
    }
    g();
    return c;
  }
  
  final void b(View paramView)
  {
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)paramView.getLayoutParams();
    a = this;
    a.add(paramView);
    c = Integer.MIN_VALUE;
    if (a.size() == 1) {
      b = Integer.MIN_VALUE;
    }
    if ((c.m()) || (c.k())) {
      d += f.a.c(paramView);
    }
  }
  
  final void c()
  {
    a.clear();
    b = Integer.MIN_VALUE;
    c = Integer.MIN_VALUE;
    d = 0;
  }
  
  final void c(int paramInt)
  {
    b = paramInt;
    c = paramInt;
  }
  
  final void d()
  {
    int i = a.size();
    View localView = (View)a.remove(i - 1);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
    a = null;
    if ((c.m()) || (c.k())) {
      d -= f.a.c(localView);
    }
    if (i == 1) {
      b = Integer.MIN_VALUE;
    }
    c = Integer.MIN_VALUE;
  }
  
  final void d(int paramInt)
  {
    if (b != Integer.MIN_VALUE) {
      b += paramInt;
    }
    if (c != Integer.MIN_VALUE) {
      c += paramInt;
    }
  }
  
  final void e()
  {
    View localView = (View)a.remove(0);
    StaggeredGridLayoutManager.LayoutParams localLayoutParams = (StaggeredGridLayoutManager.LayoutParams)localView.getLayoutParams();
    a = null;
    if (a.size() == 0) {
      c = Integer.MIN_VALUE;
    }
    if ((c.m()) || (c.k())) {
      d -= f.a.c(localView);
    }
    b = Integer.MIN_VALUE;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
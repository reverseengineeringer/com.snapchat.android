package android.support.v7.widget;

import ac.a;
import ac.b;
import ad;
import android.view.View;
import java.util.ArrayList;

final class RecyclerView$5
  implements ac.a
{
  RecyclerView$5(RecyclerView paramRecyclerView) {}
  
  private void c(ac.b paramb)
  {
    switch (a)
    {
    default: 
      return;
    case 0: 
      RecyclerView.e(a).a(b, c);
      return;
    case 1: 
      RecyclerView.e(a).b(b, c);
      return;
    case 2: 
      RecyclerView.e(a).c(b, c);
      return;
    }
    RecyclerView.e(a).d(b, c);
  }
  
  public final RecyclerView.s a(int paramInt)
  {
    return a.a(paramInt, true);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2, true);
    a.n = true;
    RecyclerView.p localp = a.m;
    g += paramInt2;
  }
  
  public final void a(ac.b paramb)
  {
    c(paramb);
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2, false);
    a.n = true;
  }
  
  public final void b(ac.b paramb)
  {
    c(paramb);
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    int j = 0;
    Object localObject1 = a;
    int k = c.b();
    int i = 0;
    Object localObject2;
    while (i < k)
    {
      localObject2 = c.c(i);
      RecyclerView.s locals = RecyclerView.b((View)localObject2);
      if ((locals != null) && (!locals.b()) && (b >= paramInt1) && (b < paramInt1 + paramInt2))
      {
        locals.a(2);
        if (((RecyclerView)localObject1).f()) {
          locals.a(64);
        }
        getLayoutParamse = true;
      }
      i += 1;
    }
    localObject1 = a;
    k = c.size();
    i = j;
    while (i < k)
    {
      localObject2 = (RecyclerView.s)c.get(i);
      if (localObject2 != null)
      {
        j = ((RecyclerView.s)localObject2).c();
        if ((j >= paramInt1) && (j < paramInt1 + paramInt2)) {
          ((RecyclerView.s)localObject2).a(2);
        }
      }
      i += 1;
    }
    a.o = true;
  }
  
  public final void d(int paramInt1, int paramInt2)
  {
    RecyclerView localRecyclerView = a;
    int j = c.b();
    int i = 0;
    while (i < j)
    {
      localObject = RecyclerView.b(c.c(i));
      if ((localObject != null) && (!((RecyclerView.s)localObject).b()) && (b >= paramInt1))
      {
        ((RecyclerView.s)localObject).a(paramInt2, false);
        m.h = true;
      }
      i += 1;
    }
    Object localObject = a;
    j = c.size();
    i = 0;
    while (i < j)
    {
      RecyclerView.s locals = (RecyclerView.s)c.get(i);
      if ((locals != null) && (locals.c() >= paramInt1)) {
        locals.a(paramInt2, true);
      }
      i += 1;
    }
    localRecyclerView.requestLayout();
    a.n = true;
  }
  
  public final void e(int paramInt1, int paramInt2)
  {
    int n = -1;
    RecyclerView localRecyclerView = a;
    int i1 = c.b();
    int i;
    int j;
    int k;
    int m;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
      k = paramInt1;
      m = 0;
      label35:
      if (m >= i1) {
        break label139;
      }
      localObject = RecyclerView.b(c.c(m));
      if ((localObject != null) && (b >= k) && (b <= j))
      {
        if (b != paramInt1) {
          break label129;
        }
        ((RecyclerView.s)localObject).a(paramInt2 - paramInt1, false);
      }
    }
    for (;;)
    {
      m.h = true;
      m += 1;
      break label35;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label129:
      ((RecyclerView.s)localObject).a(i, false);
    }
    label139:
    Object localObject = a;
    label173:
    RecyclerView.s locals;
    if (paramInt1 < paramInt2)
    {
      j = paramInt2;
      k = paramInt1;
      i = n;
      n = c.size();
      m = 0;
      if (m >= n) {
        break label268;
      }
      locals = (RecyclerView.s)c.get(m);
      if ((locals != null) && (b >= k) && (b <= j))
      {
        if (b != paramInt1) {
          break label258;
        }
        locals.a(paramInt2 - paramInt1, false);
      }
    }
    for (;;)
    {
      m += 1;
      break label173;
      i = 1;
      j = paramInt1;
      k = paramInt2;
      break;
      label258:
      locals.a(i, false);
    }
    label268:
    localRecyclerView.requestLayout();
    a.n = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
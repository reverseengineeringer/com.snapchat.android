package android.support.v7.widget;

import ac;
import ad;
import ad.b;
import ai;
import android.support.v4.view.ViewCompat;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class RecyclerView$l
{
  final ArrayList<RecyclerView.s> a = new ArrayList();
  ArrayList<RecyclerView.s> b = null;
  final ArrayList<RecyclerView.s> c = new ArrayList();
  final List<RecyclerView.s> d = Collections.unmodifiableList(a);
  int e = 2;
  RecyclerView.k f;
  RecyclerView.q g;
  
  public RecyclerView$l(RecyclerView paramRecyclerView) {}
  
  private RecyclerView.s a(long paramLong, int paramInt)
  {
    int i = a.size() - 1;
    RecyclerView.s locals;
    while (i >= 0)
    {
      locals = (RecyclerView.s)a.get(i);
      if ((d == paramLong) && (!locals.f()))
      {
        if (paramInt == e)
        {
          locals.a(32);
          if ((locals.m()) && (!h.m.i)) {
            locals.a(2, 14);
          }
          return locals;
        }
        a.remove(i);
        h.removeDetachedView(a, false);
        b(a);
      }
      i -= 1;
    }
    i = c.size() - 1;
    while (i >= 0)
    {
      locals = (RecyclerView.s)c.get(i);
      if (d == paramLong)
      {
        if (paramInt == e)
        {
          c.remove(i);
          return locals;
        }
        c(i);
      }
      i -= 1;
    }
    return null;
  }
  
  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i = paramViewGroup.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ViewGroup)) {
        a((ViewGroup)localView, true);
      }
      i -= 1;
    }
    if (!paramBoolean) {
      return;
    }
    if (paramViewGroup.getVisibility() == 4)
    {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    }
    i = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(i);
  }
  
  private void c(RecyclerView.s params)
  {
    if (RecyclerView.u(h) != null) {
      RecyclerView.u(h);
    }
    if (RecyclerView.g(h) != null) {
      RecyclerView.g(h);
    }
    if (h.m != null) {
      h.m.a(params);
    }
  }
  
  private RecyclerView.s d(int paramInt)
  {
    int j = 0;
    int k;
    if (b != null)
    {
      k = b.size();
      if (k != 0) {}
    }
    else
    {
      return null;
    }
    int i = 0;
    RecyclerView.s locals;
    while (i < k)
    {
      locals = (RecyclerView.s)b.get(i);
      if ((!locals.f()) && (locals.c() == paramInt))
      {
        locals.a(32);
        return locals;
      }
      i += 1;
    }
    if (gh).b)
    {
      paramInt = h.b.a(paramInt, 0);
      if ((paramInt > 0) && (paramInt < RecyclerView.g(h).a()))
      {
        long l = RecyclerView.g(h).b(paramInt);
        paramInt = j;
        while (paramInt < k)
        {
          locals = (RecyclerView.s)b.get(paramInt);
          if ((!locals.f()) && (d == l))
          {
            locals.a(32);
            return locals;
          }
          paramInt += 1;
        }
      }
    }
    return null;
  }
  
  private RecyclerView.s e(int paramInt)
  {
    int j = 0;
    int k = a.size();
    int i = 0;
    Object localObject;
    while (i < k)
    {
      localObject = (RecyclerView.s)a.get(i);
      if ((!((RecyclerView.s)localObject).f()) && (((RecyclerView.s)localObject).c() == paramInt) && (!((RecyclerView.s)localObject).i()) && ((h.m.i) || (!((RecyclerView.s)localObject).m())))
      {
        ((RecyclerView.s)localObject).a(32);
        return (RecyclerView.s)localObject;
      }
      i += 1;
    }
    ad localad = h.c;
    k = c.size();
    i = 0;
    if (i < k)
    {
      localObject = (View)c.get(i);
      RecyclerView.s locals = a.b((View)localObject);
      if ((locals.c() == paramInt) && (!locals.i()))
      {
        label171:
        if (localObject != null) {
          h.k.c(h.a((View)localObject));
        }
        k = c.size();
        i = j;
      }
    }
    for (;;)
    {
      if (i >= k) {
        break label274;
      }
      localObject = (RecyclerView.s)c.get(i);
      if ((!((RecyclerView.s)localObject).i()) && (((RecyclerView.s)localObject).c() == paramInt))
      {
        c.remove(i);
        return (RecyclerView.s)localObject;
        i += 1;
        break;
        localObject = null;
        break label171;
      }
      i += 1;
    }
    label274:
    return null;
  }
  
  public final int a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= h.m.a())) {
      throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + h.m.a());
    }
    if (!h.m.i) {
      return paramInt;
    }
    return h.b.a(paramInt);
  }
  
  public final void a()
  {
    a.clear();
    int i = c.size() - 1;
    while (i >= 0)
    {
      c(i);
      i -= 1;
    }
    c.clear();
  }
  
  final void a(RecyclerView.s params)
  {
    boolean bool = true;
    int j = 0;
    if ((params.d()) || (a.getParent() != null))
    {
      StringBuilder localStringBuilder = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:").append(params.d()).append(" isAttached:");
      if (a.getParent() != null) {}
      for (;;)
      {
        throw new IllegalArgumentException(bool);
        bool = false;
      }
    }
    if (params.n()) {
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + params);
    }
    if (params.b()) {
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    }
    if (params.p())
    {
      int i = j;
      if (!params.i()) {
        if (!h.m.i)
        {
          i = j;
          if (params.m()) {}
        }
        else
        {
          i = j;
          if (!params.k())
          {
            if ((c.size() == e) && (!c.isEmpty()))
            {
              i = 0;
              while ((i < c.size()) && (!c(i))) {
                i += 1;
              }
            }
            i = j;
            if (c.size() < e)
            {
              c.add(params);
              i = 1;
            }
          }
        }
      }
      if (i == 0)
      {
        b().a(params);
        c(params);
      }
    }
    h.m.a(params);
  }
  
  public final void a(View paramView)
  {
    RecyclerView.s locals = RecyclerView.b(paramView);
    if (locals.n()) {
      h.removeDetachedView(paramView, false);
    }
    if (locals.d()) {
      locals.e();
    }
    for (;;)
    {
      a(locals);
      return;
      if (locals.f()) {
        locals.g();
      }
    }
  }
  
  final RecyclerView.k b()
  {
    if (f == null) {
      f = new RecyclerView.k();
    }
    return f;
  }
  
  public final View b(int paramInt)
  {
    boolean bool = true;
    if ((paramInt < 0) || (paramInt >= h.m.a())) {
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + h.m.a());
    }
    Object localObject2;
    int i;
    if (h.m.i)
    {
      localObject2 = d(paramInt);
      if (localObject2 != null) {
        i = 1;
      }
    }
    for (int j = i;; j = 0)
    {
      Object localObject1 = localObject2;
      i = j;
      if (localObject2 == null)
      {
        localObject2 = e(paramInt);
        localObject1 = localObject2;
        i = j;
        if (localObject2 != null)
        {
          if (((RecyclerView.s)localObject2).m()) {
            break label414;
          }
          if ((b < 0) || (b >= RecyclerView.g(h).a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject2);
            i = 0;
            break;
          }
          if ((h.m.i) || (RecyclerView.g(h).a(b) == e)) {
            break label372;
          }
          i = 0;
          if (i != 0) {
            break label435;
          }
          ((RecyclerView.s)localObject2).a(4);
          if (!((RecyclerView.s)localObject2).d()) {
            break label419;
          }
          h.removeDetachedView(a, false);
          ((RecyclerView.s)localObject2).e();
          label272:
          a((RecyclerView.s)localObject2);
          localObject1 = null;
          i = j;
        }
      }
      for (;;)
      {
        if (localObject1 == null)
        {
          j = h.b.a(paramInt);
          if ((j < 0) || (j >= RecyclerView.g(h).a()))
          {
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + j + ").state:" + h.m.a());
            label372:
            if ((gh).b) && (d != RecyclerView.g(h).b(b)))
            {
              i = 0;
              break;
            }
            label414:
            i = 1;
            break;
            label419:
            if (!((RecyclerView.s)localObject2).f()) {
              break label272;
            }
            ((RecyclerView.s)localObject2).g();
            break label272;
            label435:
            i = 1;
            localObject1 = localObject2;
            continue;
          }
          int k = RecyclerView.g(h).a(j);
          if (gh).b)
          {
            localObject2 = a(RecyclerView.g(h).b(j), k);
            localObject1 = localObject2;
            if (localObject2 != null)
            {
              b = j;
              i = 1;
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = localObject2;
                if (g != null)
                {
                  View localView = g.a();
                  localObject1 = localObject2;
                  if (localView != null)
                  {
                    localObject2 = h.a(localView);
                    if (localObject2 == null) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                    }
                    localObject1 = localObject2;
                    if (((RecyclerView.s)localObject2).b()) {
                      throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                    }
                  }
                }
              }
              localObject2 = localObject1;
              if (localObject1 == null)
              {
                localObject1 = b();
                k = RecyclerView.g(h).a(j);
                localObject2 = (ArrayList)a.get(k);
                if ((localObject2 != null) && (!((ArrayList)localObject2).isEmpty()))
                {
                  k = ((ArrayList)localObject2).size() - 1;
                  localObject1 = (RecyclerView.s)((ArrayList)localObject2).get(k);
                  ((ArrayList)localObject2).remove(k);
                  if (localObject1 != null)
                  {
                    ((RecyclerView.s)localObject1).o();
                    if ((RecyclerView.i()) && ((a instanceof ViewGroup))) {
                      a((ViewGroup)a, false);
                    }
                  }
                  localObject2 = localObject1;
                }
              }
              else
              {
                localObject1 = localObject2;
                if (localObject2 == null)
                {
                  localObject1 = RecyclerView.g(h);
                  localObject2 = h;
                  j = RecyclerView.g(h).a(j);
                  localObject1 = ((RecyclerView.a)localObject1).a((ViewGroup)localObject2, j);
                  e = j;
                }
              }
            }
          }
        }
      }
      for (localObject2 = localObject1;; localObject2 = localObject1)
      {
        if ((h.m.i) && (((RecyclerView.s)localObject2).l()))
        {
          f = paramInt;
          paramInt = 0;
        }
        for (;;)
        {
          label808:
          localObject1 = a.getLayoutParams();
          if (localObject1 == null)
          {
            localObject1 = (RecyclerView.LayoutParams)h.generateDefaultLayoutParams();
            a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
            label845:
            c = ((RecyclerView.s)localObject2);
            if ((i == 0) || (paramInt == 0)) {
              break label1068;
            }
          }
          for (;;)
          {
            f = bool;
            return a;
            localObject1 = null;
            break;
            if ((((RecyclerView.s)localObject2).l()) && (!((RecyclerView.s)localObject2).j()) && (!((RecyclerView.s)localObject2).i())) {
              break label1074;
            }
            j = h.b.a(paramInt);
            RecyclerView.g(h).b((RecyclerView.s)localObject2, j);
            localObject1 = a;
            if ((RecyclerView.s(h) != null) && (RecyclerView.s(h).isEnabled()))
            {
              if (ViewCompat.getImportantForAccessibility((View)localObject1) == 0) {
                ViewCompat.setImportantForAccessibility((View)localObject1, 1);
              }
              if (!ViewCompat.hasAccessibilityDelegate((View)localObject1)) {
                ViewCompat.setAccessibilityDelegate((View)localObject1, th).b);
              }
            }
            if (h.m.i) {
              f = paramInt;
            }
            paramInt = 1;
            break label808;
            if (!h.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
            {
              localObject1 = (RecyclerView.LayoutParams)h.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
              a.setLayoutParams((ViewGroup.LayoutParams)localObject1);
              break label845;
            }
            localObject1 = (RecyclerView.LayoutParams)localObject1;
            break label845;
            label1068:
            bool = false;
          }
          label1074:
          paramInt = 0;
        }
        localObject2 = localObject1;
        break;
      }
      localObject2 = null;
    }
  }
  
  final void b(RecyclerView.s params)
  {
    if ((!params.k()) || (!RecyclerView.h(h)) || (b == null)) {
      a.remove(params);
    }
    for (;;)
    {
      j = null;
      params.g();
      return;
      b.remove(params);
    }
  }
  
  final void b(View paramView)
  {
    paramView = RecyclerView.b(paramView);
    j = null;
    paramView.g();
    a(paramView);
  }
  
  final boolean c(int paramInt)
  {
    RecyclerView.s locals = (RecyclerView.s)c.get(paramInt);
    if (locals.p())
    {
      b().a(locals);
      c(locals);
      c.remove(paramInt);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
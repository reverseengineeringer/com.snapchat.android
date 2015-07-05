package android.support.v7.widget;

import ad;
import ad.a;
import ad.b;
import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;
import r;

public abstract class RecyclerView$h
{
  ad p;
  public RecyclerView q;
  @r
  RecyclerView.o r;
  boolean s = false;
  
  public static int a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int j = 1073741824;
    int i = Math.max(0, paramInt1 - paramInt2);
    if (paramBoolean) {
      if (paramInt3 >= 0)
      {
        paramInt1 = paramInt3;
        paramInt2 = j;
      }
    }
    for (;;)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      paramInt2 = 0;
      paramInt1 = 0;
      continue;
      paramInt2 = j;
      paramInt1 = paramInt3;
      if (paramInt3 < 0) {
        if (paramInt3 == -1)
        {
          paramInt1 = i;
          paramInt2 = j;
        }
        else if (paramInt3 == -2)
        {
          paramInt2 = Integer.MIN_VALUE;
          paramInt1 = i;
        }
        else
        {
          paramInt2 = 0;
          paramInt1 = 0;
        }
      }
    }
  }
  
  public static int a(View paramView)
  {
    return getLayoutParamsc.c();
  }
  
  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = getLayoutParamsd;
    paramView.layout(left + paramInt1, top + paramInt2, paramInt3 - right, paramInt4 - bottom);
  }
  
  public static int b(View paramView)
  {
    Rect localRect = getLayoutParamsd;
    int i = paramView.getMeasuredWidth();
    int j = left;
    return right + (i + j);
  }
  
  public static int c(View paramView)
  {
    Rect localRect = getLayoutParamsd;
    int i = paramView.getMeasuredHeight();
    int j = top;
    return bottom + (i + j);
  }
  
  public static int d(View paramView)
  {
    return getLayoutParamsd.top;
  }
  
  public static int e(View paramView)
  {
    return getLayoutParamsd.bottom;
  }
  
  public static int f(View paramView)
  {
    return getLayoutParamsd.left;
  }
  
  public static int g(View paramView)
  {
    return getLayoutParamsd.right;
  }
  
  private void g(int paramInt)
  {
    if (c(paramInt) != null)
    {
      ad localad = p;
      paramInt = localad.a(paramInt);
      View localView = a.b(paramInt);
      if (localView != null)
      {
        a.a(paramInt);
        if (b.c(paramInt)) {
          c.remove(localView);
        }
      }
    }
  }
  
  private void h(int paramInt)
  {
    c(paramInt);
    ad localad = p;
    paramInt = localad.a(paramInt);
    a.c(paramInt);
    b.c(paramInt);
  }
  
  public int a(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    return 0;
  }
  
  public int a(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if ((q == null) || (RecyclerView.g(q) == null)) {}
    while (!f()) {
      return 1;
    }
    return RecyclerView.g(q).a();
  }
  
  public int a(RecyclerView.p paramp)
  {
    return 0;
  }
  
  public RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new RecyclerView.LayoutParams(paramContext, paramAttributeSet);
  }
  
  public RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof RecyclerView.LayoutParams)) {
      return new RecyclerView.LayoutParams((RecyclerView.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new RecyclerView.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new RecyclerView.LayoutParams(paramLayoutParams);
  }
  
  public View a(int paramInt)
  {
    int j = l();
    int i = 0;
    while (i < j)
    {
      View localView = c(i);
      RecyclerView.s locals = RecyclerView.b(localView);
      if ((locals != null) && (locals.c() == paramInt) && (!locals.b()) && ((q.m.i) || (!locals.m()))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  public void a() {}
  
  public void a(int paramInt1, int paramInt2) {}
  
  public final void a(int paramInt, RecyclerView.l paraml)
  {
    View localView = c(paramInt);
    g(paramInt);
    paraml.a(localView);
  }
  
  public void a(Parcelable paramParcelable) {}
  
  public final void a(RecyclerView.l paraml)
  {
    int i = l() - 1;
    if (i >= 0)
    {
      Object localObject = c(i);
      RecyclerView.s locals = RecyclerView.b((View)localObject);
      if (!locals.b())
      {
        if ((!locals.i()) || (locals.m()) || (locals.k()) || (gq).b)) {
          break label86;
        }
        g(i);
        paraml.a(locals);
      }
      for (;;)
      {
        i -= 1;
        break;
        label86:
        h(i);
        localObject = RecyclerView.b((View)localObject);
        j = paraml;
        if ((!((RecyclerView.s)localObject).k()) || (!RecyclerView.h(h)))
        {
          if ((((RecyclerView.s)localObject).i()) && (!((RecyclerView.s)localObject).m()) && (!gh).b)) {
            throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
          }
          a.add(localObject);
        }
        else
        {
          if (b == null) {
            b = new ArrayList();
          }
          b.add(localObject);
        }
      }
    }
  }
  
  public void a(RecyclerView.l paraml, RecyclerView.p paramp, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    int i;
    if (f())
    {
      i = a(paramView);
      if (!e()) {
        break label48;
      }
    }
    label48:
    for (int j = a(paramView);; j = 0)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain$430787b1(i, 1, j, 1, false));
      return;
      i = 0;
      break;
    }
  }
  
  final void a(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      q = null;
      p = null;
      return;
    }
    q = paramRecyclerView;
    p = c;
  }
  
  public void a(RecyclerView paramRecyclerView, RecyclerView.l paraml) {}
  
  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    RecyclerView.s locals1 = RecyclerView.b(paramView);
    RecyclerView.LayoutParams localLayoutParams1;
    if ((paramBoolean) || (locals1.m()))
    {
      RecyclerView.c(q, paramView);
      localLayoutParams1 = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      if ((!locals1.f()) && (!locals1.d())) {
        break label120;
      }
      if (!locals1.d()) {
        break label112;
      }
      locals1.e();
      label64:
      p.a(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    for (;;)
    {
      if (f)
      {
        a.invalidate();
        f = false;
      }
      return;
      RecyclerView.d(q, paramView);
      break;
      label112:
      locals1.g();
      break label64;
      label120:
      Object localObject;
      if (paramView.getParent() == q)
      {
        localObject = p;
        int i = a.a(paramView);
        if (i == -1) {
          i = -1;
        }
        int j;
        for (;;)
        {
          j = paramInt;
          if (paramInt == -1) {
            j = p.a();
          }
          if (i != -1) {
            break;
          }
          throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + q.indexOfChild(paramView));
          if (b.b(i)) {
            i = -1;
          } else {
            i -= b.d(i);
          }
        }
        if (i != j)
        {
          paramView = RecyclerView.e(q);
          localObject = paramView.c(i);
          if (localObject == null) {
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i);
          }
          paramView.h(i);
          RecyclerView.LayoutParams localLayoutParams2 = (RecyclerView.LayoutParams)((View)localObject).getLayoutParams();
          RecyclerView.s locals2 = RecyclerView.b((View)localObject);
          if (locals2.m()) {
            RecyclerView.c(q, (View)localObject);
          }
          for (;;)
          {
            p.a((View)localObject, j, localLayoutParams2, locals2.m());
            break;
            RecyclerView.d(q, (View)localObject);
          }
        }
      }
      else
      {
        p.a(paramView, paramInt, false);
        e = true;
        if ((r != null) && (r.c))
        {
          localObject = r;
          if (RecyclerView.c(paramView) == a) {
            d = paramView;
          }
        }
      }
    }
  }
  
  public final void a(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    RecyclerView.s locals = RecyclerView.b(paramView);
    if ((locals != null) && (!locals.m())) {
      a(q.a, q.m, paramView, paramAccessibilityNodeInfoCompat);
    }
  }
  
  public final void a(View paramView, RecyclerView.l paraml)
  {
    ad localad = p;
    int i = a.a(paramView);
    if (i >= 0)
    {
      a.a(i);
      if (b.c(i)) {
        c.remove(paramView);
      }
    }
    paraml.a(paramView);
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = true;
    Object localObject = q.a;
    localObject = q.m;
    paramAccessibilityEvent = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
    if (q == null) {
      return;
    }
    boolean bool1 = bool2;
    if (!ViewCompat.canScrollVertically(q, 1))
    {
      bool1 = bool2;
      if (!ViewCompat.canScrollVertically(q, -1))
      {
        bool1 = bool2;
        if (!ViewCompat.canScrollHorizontally(q, -1)) {
          if (!ViewCompat.canScrollHorizontally(q, 1)) {
            break label115;
          }
        }
      }
    }
    label115:
    for (bool1 = bool2;; bool1 = false)
    {
      paramAccessibilityEvent.setScrollable(bool1);
      if (RecyclerView.g(q) == null) {
        break;
      }
      paramAccessibilityEvent.setItemCount(RecyclerView.g(q).a());
      return;
    }
  }
  
  public void a(String paramString)
  {
    if (q != null) {
      q.a(paramString);
    }
  }
  
  public boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams != null;
  }
  
  public int b(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    return 0;
  }
  
  public int b(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if ((q == null) || (RecyclerView.g(q) == null)) {}
    while (!e()) {
      return 1;
    }
    return RecyclerView.g(q).a();
  }
  
  public int b(RecyclerView.p paramp)
  {
    return 0;
  }
  
  public abstract RecyclerView.LayoutParams b();
  
  public void b(int paramInt) {}
  
  public void b(int paramInt1, int paramInt2) {}
  
  final void b(RecyclerView.l paraml)
  {
    int j = a.size();
    int i = 0;
    while (i < j)
    {
      View localView = a.get(i)).a;
      RecyclerView.s locals = RecyclerView.b(localView);
      if (!locals.b())
      {
        if (locals.n()) {
          q.removeDetachedView(localView, false);
        }
        paraml.b(localView);
      }
      i += 1;
    }
    a.clear();
    if (j > 0) {
      q.invalidate();
    }
  }
  
  public int c(RecyclerView.p paramp)
  {
    return 0;
  }
  
  public final View c(int paramInt)
  {
    if (p != null) {
      return p.b(paramInt);
    }
    return null;
  }
  
  public View c(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    return null;
  }
  
  public void c(int paramInt1, int paramInt2) {}
  
  public final void c(RecyclerView.l paraml)
  {
    int i = l() - 1;
    while (i >= 0)
    {
      if (!RecyclerView.b(c(i)).b()) {
        a(i, paraml);
      }
      i -= 1;
    }
  }
  
  public void c(RecyclerView.l paraml, RecyclerView.p paramp) {}
  
  public boolean c()
  {
    return false;
  }
  
  public int d(RecyclerView.p paramp)
  {
    return 0;
  }
  
  public Parcelable d()
  {
    return null;
  }
  
  public void d(int paramInt)
  {
    if (q != null)
    {
      RecyclerView localRecyclerView = q;
      int j = c.a();
      int i = 0;
      while (i < j)
      {
        c.b(i).offsetLeftAndRight(paramInt);
        i += 1;
      }
    }
  }
  
  public void d(int paramInt1, int paramInt2) {}
  
  public int e(RecyclerView.p paramp)
  {
    return 0;
  }
  
  public void e(int paramInt)
  {
    if (q != null)
    {
      RecyclerView localRecyclerView = q;
      int j = c.a();
      int i = 0;
      while (i < j)
      {
        c.b(i).offsetTopAndBottom(paramInt);
        i += 1;
      }
    }
  }
  
  public boolean e()
  {
    return false;
  }
  
  public int f(RecyclerView.p paramp)
  {
    return 0;
  }
  
  public void f(int paramInt) {}
  
  public boolean f()
  {
    return false;
  }
  
  public final void i()
  {
    if (q != null) {
      q.requestLayout();
    }
  }
  
  public final boolean j()
  {
    return (q != null) && (RecyclerView.v(q));
  }
  
  public final boolean k()
  {
    return (r != null) && (r.c);
  }
  
  public final int l()
  {
    if (p != null) {
      return p.a();
    }
    return 0;
  }
  
  public final int m()
  {
    if (q != null) {
      return q.getWidth();
    }
    return 0;
  }
  
  public final int n()
  {
    if (q != null) {
      return q.getHeight();
    }
    return 0;
  }
  
  public final int o()
  {
    if (q != null) {
      return q.getPaddingLeft();
    }
    return 0;
  }
  
  public final int p()
  {
    if (q != null) {
      return q.getPaddingTop();
    }
    return 0;
  }
  
  public final int q()
  {
    if (q != null) {
      return q.getPaddingRight();
    }
    return 0;
  }
  
  public final int r()
  {
    if (q != null) {
      return q.getPaddingBottom();
    }
    return 0;
  }
  
  final void s()
  {
    if (r != null) {
      r.a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
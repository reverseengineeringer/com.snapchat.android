package android.support.v7.widget;

import ah;
import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.Arrays;

public final class GridLayoutManager
  extends LinearLayoutManager
{
  static final int a = View.MeasureSpec.makeMeasureSpec(0, 0);
  int b = -1;
  int c;
  View[] d;
  final SparseIntArray e = new SparseIntArray();
  final SparseIntArray f = new SparseIntArray();
  public b g = new a();
  final Rect h = new Rect();
  
  public GridLayoutManager()
  {
    h(3);
  }
  
  public GridLayoutManager(byte paramByte)
  {
    super((byte)0);
    h(6);
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int i;
    do
    {
      return paramInt1;
      i = View.MeasureSpec.getMode(paramInt1);
    } while ((i != Integer.MIN_VALUE) && (i != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, i);
  }
  
  private int a(RecyclerView.l paraml, RecyclerView.p paramp, int paramInt)
  {
    if (!i) {
      return g.c(paramInt, b);
    }
    paramInt = paraml.a(paramInt);
    if (paramInt == -1) {
      return 0;
    }
    return g.c(paramInt, b);
  }
  
  private void a(RecyclerView.l paraml, RecyclerView.p paramp, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    int k;
    int j;
    label41:
    LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i = 1;
      k = 0;
      j = paramInt1;
      paramInt1 = k;
      if ((this.i != 1) || (!g())) {
        break label147;
      }
      k = -1;
      paramInt2 -= 1;
      if (paramInt1 == j) {
        return;
      }
      View localView = d[paramInt1];
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      LayoutParams.a(localLayoutParams, b(paraml, paramp, a(localView)));
      if ((k != -1) || (LayoutParams.b(localLayoutParams) <= 1)) {
        break label156;
      }
      LayoutParams.b(localLayoutParams, paramInt2 - (LayoutParams.b(localLayoutParams) - 1));
    }
    for (;;)
    {
      paramInt2 += LayoutParams.b(localLayoutParams) * k;
      paramInt1 += i;
      break label41;
      paramInt1 -= 1;
      i = -1;
      j = -1;
      break;
      label147:
      k = 1;
      paramInt2 = 0;
      break label41;
      label156:
      LayoutParams.b(localLayoutParams, paramInt2);
    }
  }
  
  private void a(View paramView, int paramInt1, int paramInt2)
  {
    Object localObject = h;
    if (q == null) {
      ((Rect)localObject).set(0, 0, 0, 0);
    }
    for (;;)
    {
      localObject = (RecyclerView.LayoutParams)paramView.getLayoutParams();
      paramView.measure(a(paramInt1, leftMargin + h.left, rightMargin + h.right), a(paramInt2, topMargin + h.top, bottomMargin + h.bottom));
      return;
      ((Rect)localObject).set(q.d(paramView));
    }
  }
  
  private int b(RecyclerView.l paraml, RecyclerView.p paramp, int paramInt)
  {
    int i;
    if (!i) {
      i = g.a(paramInt);
    }
    int j;
    do
    {
      return i;
      j = e.get(paramInt, -1);
      i = j;
    } while (j != -1);
    paramInt = paraml.a(paramInt);
    if (paramInt == -1) {
      return 1;
    }
    return g.a(paramInt);
  }
  
  private static int g(int paramInt)
  {
    if (paramInt < 0) {
      return a;
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt, 1073741824);
  }
  
  private void h(int paramInt)
  {
    if (paramInt == b) {
      return;
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Span count should be at least 1. Provided " + paramInt);
    }
    b = paramInt;
    g.a.clear();
  }
  
  public final int a(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if (i == 0) {
      return b;
    }
    if (paramp.a() <= 0) {
      return 0;
    }
    return a(paraml, paramp, paramp.a() - 1);
  }
  
  public final RecyclerView.LayoutParams a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new LayoutParams(paramContext, paramAttributeSet);
  }
  
  public final RecyclerView.LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public final void a()
  {
    g.a.clear();
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    g.a.clear();
  }
  
  final void a(RecyclerView.l paraml, RecyclerView.p paramp, LinearLayoutManager.c paramc, LinearLayoutManager.b paramb)
  {
    boolean bool;
    int k;
    int m;
    int n;
    if (e == 1)
    {
      bool = true;
      k = 0;
      m = 0;
      i = b;
      n = k;
      j = m;
      if (!bool)
      {
        n = d;
        if (i) {
          break label192;
        }
        i = g.b(n, b);
        label64:
        i += b(paraml, paramp, d);
        j = m;
        n = k;
      }
    }
    label192:
    View localView;
    for (;;)
    {
      if ((n >= b) || (!paramc.a(paramp)) || (i <= 0)) {
        break label301;
      }
      m = d;
      k = b(paraml, paramp, m);
      if (k > b)
      {
        throw new IllegalArgumentException("Item at position " + m + " requires " + k + " spans but GridLayoutManager has only " + b + " spans.");
        bool = false;
        break;
        j = f.get(n, -1);
        i = j;
        if (j != -1) {
          break label64;
        }
        i = paraml.a(n);
        if (i == -1)
        {
          i = 0;
          break label64;
        }
        i = g.b(i, b);
        break label64;
      }
      i -= k;
      if (i < 0) {
        break label301;
      }
      localView = paramc.a(paraml);
      if (localView == null) {
        break label301;
      }
      j += k;
      d[n] = localView;
      n += 1;
    }
    label301:
    if (n == 0)
    {
      b = true;
      return;
    }
    a(paraml, paramp, n, j, bool);
    int j = 0;
    int i = 0;
    label367:
    LayoutParams localLayoutParams;
    if (j < n)
    {
      localView = d[j];
      if (j == null) {
        if (bool)
        {
          super.a(localView, -1, false);
          k = View.MeasureSpec.makeMeasureSpec(b(paraml, paramp, a(localView)) * c, 1073741824);
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (this.i != 1) {
            break label493;
          }
          a(localView, k, g(height));
          label424:
          k = this.j.c(localView);
          if (k <= i) {
            break label946;
          }
          i = k;
        }
      }
    }
    label493:
    label602:
    label687:
    label901:
    label937:
    label946:
    for (;;)
    {
      j += 1;
      break;
      super.a(localView, 0, false);
      break label367;
      if (bool)
      {
        super.a(localView, -1, true);
        break label367;
      }
      super.a(localView, 0, true);
      break label367;
      a(localView, g(width), k);
      break label424;
      k = g(i);
      j = 0;
      if (j < n)
      {
        localView = d[j];
        if (this.j.c(localView) != i)
        {
          m = View.MeasureSpec.makeMeasureSpec(b(paraml, paramp, a(localView)) * c, 1073741824);
          if (this.i != 1) {
            break label602;
          }
          a(localView, m, k);
        }
        for (;;)
        {
          j += 1;
          break;
          a(localView, k, m);
        }
      }
      a = i;
      m = 0;
      int i1;
      if (this.i == 1) {
        if (f == -1)
        {
          m = b;
          k = 0;
          i1 = 0;
          j = m - i;
          i = i1;
          int i3 = 0;
          i1 = j;
          int i2 = i;
          i = i3;
          j = k;
          k = i2;
          if (i >= n) {
            break label937;
          }
          paraml = d[i];
          paramp = (LayoutParams)paraml.getLayoutParams();
          if (this.i != 1) {
            break label901;
          }
          k = o() + c * LayoutParams.a(paramp);
          j = this.j.d(paraml) + k;
        }
      }
      for (;;)
      {
        a(paraml, leftMargin + k, topMargin + i1, j - rightMargin, m - bottomMargin);
        if ((c.m()) || (c.k())) {
          c = true;
        }
        d |= paraml.isFocusable();
        i += 1;
        break label687;
        j = b;
        m = j + i;
        i = 0;
        k = 0;
        break;
        if (f == -1)
        {
          k = b;
          i = k - i;
          j = 0;
          break;
        }
        i1 = b;
        j = 0;
        k = i + i1;
        i = i1;
        break;
        m = p();
        i1 = c * LayoutParams.a(paramp) + m;
        m = this.j.d(paraml) + i1;
      }
      Arrays.fill(d, null);
      return;
    }
  }
  
  public final void a(RecyclerView.l paraml, RecyclerView.p paramp, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    boolean bool2 = false;
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof LayoutParams))
    {
      super.a(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paramView = (LayoutParams)localLayoutParams;
    int i = a(paraml, paramp, c.c());
    if (this.i == 0)
    {
      j = a;
      k = b;
      if ((b > 1) && (b == b)) {}
      for (bool1 = true;; bool1 = false)
      {
        paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain$430787b1(j, k, i, 1, bool1));
        return;
      }
    }
    int j = a;
    int k = b;
    boolean bool1 = bool2;
    if (b > 1)
    {
      bool1 = bool2;
      if (b == b) {
        bool1 = true;
      }
    }
    paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain$430787b1(i, 1, j, k, bool1));
  }
  
  final void a(RecyclerView.p paramp, LinearLayoutManager.a parama)
  {
    super.a(paramp, parama);
    if (this.i == 1) {}
    for (int i = m() - q() - o();; i = n() - r() - p())
    {
      c = (i / b);
      if ((paramp.a() <= 0) || (i)) {
        break;
      }
      for (i = g.b(a, b); (i > 0) && (a > 0); i = g.b(a, b)) {
        a -= 1;
      }
    }
    if ((d == null) || (d.length != b)) {
      d = new View[b];
    }
  }
  
  public final boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public final int b(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if (i == 1) {
      return b;
    }
    if (paramp.a() <= 0) {
      return 0;
    }
    return a(paraml, paramp, paramp.a() - 1);
  }
  
  public final RecyclerView.LayoutParams b()
  {
    return new LayoutParams();
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    g.a.clear();
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    g.a.clear();
  }
  
  public final void c(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if (i)
    {
      int j = l();
      int i = 0;
      while (i < j)
      {
        LayoutParams localLayoutParams = (LayoutParams)c(i).getLayoutParams();
        int k = c.c();
        e.put(k, b);
        f.put(k, a);
        i += 1;
      }
    }
    super.c(paraml, paramp);
    e.clear();
    f.clear();
  }
  
  public final boolean c()
  {
    return n == null;
  }
  
  public final void d(int paramInt1, int paramInt2)
  {
    g.a.clear();
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    int a = -1;
    int b = 0;
    
    public LayoutParams() {}
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  public static final class a
    extends GridLayoutManager.b
  {
    public final int a(int paramInt)
    {
      return 1;
    }
    
    public final int a(int paramInt1, int paramInt2)
    {
      return paramInt1 % paramInt2;
    }
  }
  
  public static abstract class b
  {
    final SparseIntArray a = new SparseIntArray();
    private boolean b = false;
    
    public abstract int a(int paramInt);
    
    public int a(int paramInt1, int paramInt2)
    {
      int n = a(paramInt1);
      if (n == paramInt2) {
        return 0;
      }
      int j;
      int i;
      int k;
      if ((b) && (a.size() > 0))
      {
        j = a.size() - 1;
        i = 0;
        while (i <= j)
        {
          k = i + j >>> 1;
          if (a.keyAt(k) < paramInt1) {
            i = k + 1;
          } else {
            j = k - 1;
          }
        }
        i -= 1;
        if ((i >= 0) && (i < a.size()))
        {
          i = a.keyAt(i);
          if (i < 0) {
            break label216;
          }
          j = a.get(i) + a(i);
          k = i + 1;
          i = j;
          j = k;
        }
      }
      for (;;)
      {
        label149:
        if (j < paramInt1)
        {
          k = a(j);
          int m = i + k;
          if (m == paramInt2) {
            i = 0;
          }
          for (;;)
          {
            j += 1;
            break label149;
            i = -1;
            break;
            i = k;
            if (m <= paramInt2) {
              i = m;
            }
          }
        }
        if (i + n > paramInt2) {
          break;
        }
        return i;
        label216:
        j = 0;
        i = 0;
      }
    }
    
    final int b(int paramInt1, int paramInt2)
    {
      int i;
      if (!b) {
        i = a(paramInt1, paramInt2);
      }
      int j;
      do
      {
        return i;
        j = a.get(paramInt1, -1);
        i = j;
      } while (j != -1);
      paramInt2 = a(paramInt1, paramInt2);
      a.put(paramInt1, paramInt2);
      return paramInt2;
    }
    
    public final int c(int paramInt1, int paramInt2)
    {
      int n = a(paramInt1);
      int k = 0;
      int i = 0;
      int j = 0;
      int m;
      if (k < paramInt1)
      {
        m = a(k);
        j += m;
        if (j == paramInt2)
        {
          j = i + 1;
          i = 0;
        }
      }
      for (;;)
      {
        m = k + 1;
        k = i;
        i = j;
        j = k;
        k = m;
        break;
        if (j > paramInt2)
        {
          j = i + 1;
          i = m;
          continue;
          paramInt1 = i;
          if (j + n > paramInt2) {
            paramInt1 = i + 1;
          }
          return paramInt1;
        }
        else
        {
          m = j;
          j = i;
          i = m;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.GridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
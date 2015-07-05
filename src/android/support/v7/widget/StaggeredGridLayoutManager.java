package android.support.v7.widget;

import af;
import ah;
import aj;
import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
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
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

public final class StaggeredGridLayoutManager
  extends RecyclerView.h
{
  private boolean A;
  private final Runnable B;
  ah a;
  ah b;
  boolean c;
  int d;
  int e;
  LazySpanLookup f;
  private int g;
  private b[] h;
  private int i;
  private int j;
  private af k;
  private boolean l;
  private BitSet m;
  private int n;
  private boolean o;
  private boolean t;
  private SavedState u;
  private int v;
  private int w;
  private int x;
  private final a y;
  private boolean z;
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0)) {}
    int i1;
    do
    {
      return paramInt1;
      i1 = View.MeasureSpec.getMode(paramInt1);
    } while ((i1 != Integer.MIN_VALUE) && (i1 != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, i1);
  }
  
  private int a(RecyclerView.l paraml, af paramaf, RecyclerView.p paramp)
  {
    m.set(0, g, true);
    int i3;
    int i4;
    int i5;
    label84:
    int i1;
    label105:
    View localView;
    LayoutParams localLayoutParams;
    label169:
    label199:
    int i10;
    label237:
    int i6;
    if (d == 1)
    {
      i3 = a.c() + k.a;
      i4 = k.e + i3 + a.f();
      e(d, i4);
      if (!c) {
        break label448;
      }
      i5 = a.c();
      if ((b < 0) || (b >= paramp.a())) {
        break label460;
      }
      i1 = 1;
      if ((i1 == 0) || (m.isEmpty())) {
        break label1724;
      }
      localView = paraml.b(b);
      b += c;
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (d != 1) {
        break label466;
      }
      super.a(localView, -1, false);
      if (!b) {
        break label494;
      }
      if (i != 1) {
        break label477;
      }
      a(localView, v, x);
      i10 = c.c();
      localObject1 = f;
      if ((a != null) && (i10 < a.length)) {
        break label511;
      }
      i1 = -1;
      if (i1 != -1) {
        break label524;
      }
      i6 = 1;
      label246:
      if (i6 == 0) {
        break label828;
      }
      if (!b) {
        break label530;
      }
      localObject1 = h[0];
    }
    label267:
    Object localObject2;
    label293:
    label317:
    int i2;
    int i7;
    label448:
    label460:
    label466:
    label477:
    label494:
    label511:
    label524:
    label530:
    int i12;
    label552:
    label564:
    label583:
    int i11;
    int i8;
    label615:
    do
    {
      localObject2 = f;
      ((LazySpanLookup)localObject2).c(i10);
      a[i10] = e;
      if (d != 1) {
        break label969;
      }
      if (!b) {
        break label840;
      }
      i1 = h(i5);
      i2 = i1 + a.c(localView);
      if ((i6 == 0) || (!b)) {
        break label1795;
      }
      localObject2 = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
      c = new int[g];
      i7 = 0;
      while (i7 < g)
      {
        c[i7] = (i1 - h[i7].b(i1));
        i7 += 1;
      }
      i3 = a.b() - k.a;
      i4 = i3 - k.e - a.b();
      break;
      i5 = a.b();
      break label84;
      i1 = 0;
      break label105;
      super.a(localView, 0, false);
      break label169;
      a(localView, w, v);
      break label199;
      a(localView, w, x);
      break label199;
      i1 = a[i10];
      break label237;
      i6 = 0;
      break label246;
      i1 = d;
      if (i != 0) {
        break label681;
      }
      if (i1 != -1) {
        break label669;
      }
      i12 = 1;
      if (i12 == c) {
        break label675;
      }
      i1 = 1;
      if (i1 == 0) {
        break label735;
      }
      i1 = g - 1;
      i2 = -1;
      i7 = -1;
      if (d != 1) {
        break label750;
      }
      localObject2 = null;
      i9 = Integer.MAX_VALUE;
      i11 = a.b();
      i8 = i1;
      i1 = i9;
      localObject1 = localObject2;
    } while (i8 == i2);
    Object localObject1 = h[i8];
    int i9 = ((b)localObject1).b(i11);
    if (i9 < i1) {
      i1 = i9;
    }
    for (;;)
    {
      i8 += i7;
      localObject2 = localObject1;
      break label615;
      label669:
      i12 = 0;
      break label552;
      label675:
      i1 = 0;
      break label564;
      label681:
      if (i1 == -1)
      {
        i12 = 1;
        label690:
        if (i12 != c) {
          break label723;
        }
      }
      label723:
      for (i12 = 1;; i12 = 0)
      {
        if (i12 != t()) {
          break label729;
        }
        i1 = 1;
        break;
        i12 = 0;
        break label690;
      }
      label729:
      i1 = 0;
      break label564;
      label735:
      i1 = 0;
      i2 = g;
      i7 = 1;
      break label583;
      label750:
      localObject2 = null;
      i9 = Integer.MIN_VALUE;
      i11 = a.c();
      i8 = i1;
      i1 = i9;
      label774:
      localObject1 = localObject2;
      if (i8 == i2) {
        break label267;
      }
      localObject1 = h[i8];
      i9 = ((b)localObject1).a(i11);
      if (i9 > i1) {
        i1 = i9;
      }
      for (;;)
      {
        i8 += i7;
        localObject2 = localObject1;
        break label774;
        label828:
        localObject1 = h[i1];
        break label293;
        label840:
        i1 = ((b)localObject1).b(i5);
        break label317;
        b = -1;
        a = i10;
        f.a((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2);
        i7 = i2;
        i2 = i1;
        i1 = i7;
        for (;;)
        {
          if ((b) && (c == -1) && (i6 != 0)) {
            z = true;
          }
          a = ((b)localObject1);
          if (d == 1)
          {
            if (b)
            {
              i6 = g - 1;
              while (i6 >= 0)
              {
                h[i6].b(localView);
                i6 -= 1;
              }
              label969:
              if (b) {}
              for (i1 = g(i5);; i1 = ((b)localObject1).a(i5))
              {
                i7 = a.c(localView);
                if ((i6 == 0) || (!b)) {
                  break label1107;
                }
                localObject2 = new StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
                c = new int[g];
                i2 = 0;
                while (i2 < g)
                {
                  c[i2] = (h[i2].a(i1) - i1);
                  i2 += 1;
                }
              }
              b = 1;
              a = i10;
              f.a((StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem)localObject2);
              label1107:
              i2 = i1 - i7;
              continue;
            }
            a.b(localView);
            label1127:
            if (!b) {
              break label1332;
            }
            i6 = b.b();
            label1144:
            i7 = b.c(localView) + i6;
            if (i != 1) {
              break label1355;
            }
            b(localView, i6, i2, i7, i1);
            label1179:
            if (!b) {
              break label1371;
            }
            e(k.d, i4);
            label1200:
            if (k.d != -1) {
              break label1530;
            }
            i7 = ((b)localObject1).a();
            i1 = h[0].a(i7);
            i2 = 1;
            label1234:
            if (i2 >= g) {
              break label1389;
            }
            i6 = h[i2].a(i7);
            if (i6 <= i1) {
              break label1792;
            }
            i1 = i6;
          }
          label1332:
          label1355:
          label1371:
          label1389:
          label1528:
          label1530:
          label1553:
          label1722:
          label1724:
          label1789:
          label1792:
          for (;;)
          {
            i2 += 1;
            break label1234;
            if (b)
            {
              i6 = g - 1;
              while (i6 >= 0)
              {
                h[i6].a(localView);
                i6 -= 1;
              }
              break label1127;
            }
            a.a(localView);
            break label1127;
            i6 = e * j + b.b();
            break label1144;
            b(localView, i2, i6, i1, i7);
            break label1179;
            a((b)localObject1, k.d, i4);
            break label1200;
            i6 = Math.max(i3, i1);
            i7 = a.d();
            i8 = a.b();
            i1 = l() - 1;
            for (;;)
            {
              if (i1 < 0) {
                break label1528;
              }
              localObject1 = c(i1);
              if (a.a((View)localObject1) <= i6 + (i7 - i8)) {
                break;
              }
              localObject2 = (LayoutParams)((View)localObject1).getLayoutParams();
              if (b)
              {
                i2 = 0;
                while (i2 < g)
                {
                  h[i2].d();
                  i2 += 1;
                }
              }
              a.d();
              a((View)localObject1, paraml);
              i1 -= 1;
            }
            break;
            i7 = ((b)localObject1).b();
            i1 = h[0].b(i7);
            i2 = 1;
            if (i2 < g)
            {
              i6 = h[i2].b(i7);
              if (i6 >= i1) {
                break label1789;
              }
              i1 = i6;
            }
            for (;;)
            {
              i2 += 1;
              break label1553;
              i2 = Math.min(i3, i1);
              i6 = a.d();
              i7 = a.b();
              for (;;)
              {
                if (l() <= 0) {
                  break label1722;
                }
                localObject1 = c(0);
                if (a.b((View)localObject1) >= i2 - (i6 - i7)) {
                  break;
                }
                localObject2 = (LayoutParams)((View)localObject1).getLayoutParams();
                if (b)
                {
                  i1 = 0;
                  while (i1 < g)
                  {
                    h[i1].e();
                    i1 += 1;
                  }
                }
                a.e();
                a((View)localObject1, paraml);
              }
              break;
              if (k.d == -1) {
                return Math.max(0, i3 - g(a.b()) + k.a);
              }
              return Math.max(0, h(a.c()) - i3 + k.a);
            }
          }
          label1795:
          i7 = i1;
          i1 = i2;
          i2 = i7;
        }
        localObject1 = localObject2;
      }
      localObject1 = localObject2;
    }
  }
  
  private View a(boolean paramBoolean)
  {
    g();
    int i2 = a.b();
    int i3 = a.c();
    int i4 = l();
    int i1 = 0;
    while (i1 < i4)
    {
      View localView = c(i1);
      if (((!paramBoolean) || (a.a(localView) >= i2)) && (a.b(localView) <= i3)) {
        return localView;
      }
      i1 += 1;
    }
    return null;
  }
  
  private void a(int paramInt, RecyclerView.p paramp)
  {
    int i1 = 1;
    k.a = 0;
    k.b = paramInt;
    boolean bool1;
    if (k())
    {
      int i2 = a;
      boolean bool2 = c;
      if (i2 < paramInt)
      {
        bool1 = true;
        if (bool2 == bool1) {
          break label101;
        }
        k.e = a.e();
        label67:
        k.d = -1;
        paramp = k;
        if (!c) {
          break label112;
        }
      }
    }
    label101:
    label112:
    for (paramInt = i1;; paramInt = -1)
    {
      c = paramInt;
      return;
      bool1 = false;
      break;
      k.e = 0;
      break label67;
    }
  }
  
  private void a(RecyclerView.l paraml, RecyclerView.p paramp, boolean paramBoolean)
  {
    int i1 = h(a.c());
    i1 = a.c() - i1;
    if (i1 > 0)
    {
      i1 -= -d(-i1, paraml, paramp);
      if ((paramBoolean) && (i1 > 0)) {
        a.a(i1);
      }
    }
  }
  
  private void a(b paramb, int paramInt1, int paramInt2)
  {
    int i1 = d;
    if (paramInt1 == -1) {
      if (i1 + paramb.a() < paramInt2) {
        m.set(e, false);
      }
    }
    while (paramb.b() - i1 <= paramInt2) {
      return;
    }
    m.set(e, false);
  }
  
  private void a(View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = q.d(paramView);
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    paramView.measure(a(paramInt1, leftMargin + left, rightMargin + right), a(paramInt2, topMargin + top, bottomMargin + bottom));
  }
  
  private View b(boolean paramBoolean)
  {
    g();
    int i2 = a.b();
    int i3 = a.c();
    int i1 = l() - 1;
    while (i1 >= 0)
    {
      View localView = c(i1);
      if ((a.a(localView) >= i2) && ((!paramBoolean) || (a.b(localView) <= i3))) {
        return localView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  private void b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    if (c)
    {
      i1 = u();
      f.b(paramInt1);
      switch (paramInt3)
      {
      case 2: 
      default: 
        label52:
        if (paramInt1 + paramInt2 > i1) {
          break;
        }
      }
    }
    for (;;)
    {
      return;
      i1 = v();
      break;
      f.b(paramInt1, paramInt2);
      break label52;
      f.a(paramInt1, paramInt2);
      break label52;
      f.a(paramInt1, 1);
      f.b(paramInt2, 1);
      break label52;
      if (c) {}
      for (paramInt2 = v(); paramInt1 <= paramInt2; paramInt2 = u())
      {
        i();
        return;
      }
    }
  }
  
  private void b(int paramInt, RecyclerView.p paramp)
  {
    int i1 = 1;
    k.a = 0;
    k.b = paramInt;
    boolean bool1;
    if (k())
    {
      int i2 = a;
      boolean bool2 = c;
      if (i2 > paramInt)
      {
        bool1 = true;
        if (bool2 == bool1) {
          break label103;
        }
      }
    }
    label103:
    for (k.e = a.e();; k.e = 0)
    {
      k.d = 1;
      paramp = k;
      paramInt = i1;
      if (c) {
        paramInt = -1;
      }
      c = paramInt;
      return;
      bool1 = false;
      break;
    }
  }
  
  private void b(RecyclerView.l paraml, RecyclerView.p paramp, boolean paramBoolean)
  {
    int i1 = g(a.b()) - a.b();
    if (i1 > 0)
    {
      i1 -= d(i1, paraml, paramp);
      if ((paramBoolean) && (i1 > 0)) {
        a.a(-i1);
      }
    }
  }
  
  private static void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    a(paramView, leftMargin + paramInt1, topMargin + paramInt2, paramInt3 - rightMargin, paramInt4 - bottomMargin);
  }
  
  private int d(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    int i1 = 1;
    int i2 = -1;
    g();
    af localaf;
    if (paramInt > 0)
    {
      k.d = 1;
      localaf = k;
      if (c)
      {
        i1 = i2;
        c = i1;
        i1 = u();
        k.b = (i1 + k.c);
        int i3 = Math.abs(paramInt);
        k.a = i3;
        localaf = k;
        if (!k()) {
          break label214;
        }
        i1 = a.e();
        label106:
        e = i1;
        i2 = a(paraml, k, paramp);
        i1 = paramInt;
        if (i3 >= i2) {
          if (paramInt >= 0) {
            break label220;
          }
        }
      }
    }
    label214:
    label220:
    for (i1 = -i2;; i1 = i2)
    {
      a.a(-i1);
      o = c;
      return i1;
      i1 = 1;
      break;
      k.d = -1;
      localaf = k;
      if (c) {}
      for (;;)
      {
        c = i1;
        i1 = v();
        break;
        i1 = -1;
      }
      i1 = 0;
      break label106;
    }
  }
  
  private void e(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    while (i1 < g)
    {
      if (!h[i1].a.isEmpty()) {
        a(h[i1], paramInt1, paramInt2);
      }
      i1 += 1;
    }
  }
  
  private int g(int paramInt)
  {
    int i2 = h[0].a(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].a(paramInt);
      int i3 = i2;
      if (i4 < i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int g(RecyclerView.p paramp)
  {
    boolean bool2 = true;
    if (l() == 0) {
      return 0;
    }
    g();
    ah localah = a;
    View localView;
    if (!A)
    {
      bool1 = true;
      localView = a(bool1);
      if (A) {
        break label74;
      }
    }
    label74:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return aj.a(paramp, localah, localView, b(bool1), this, A, c);
      bool1 = false;
      break;
    }
  }
  
  private void g()
  {
    if (a == null)
    {
      a = ah.a(this, i);
      b = ah.a(this, 1 - i);
      k = new af();
    }
  }
  
  private int h(int paramInt)
  {
    int i2 = h[0].b(paramInt);
    int i1 = 1;
    while (i1 < g)
    {
      int i4 = h[i1].b(paramInt);
      int i3 = i2;
      if (i4 > i2) {
        i3 = i4;
      }
      i1 += 1;
      i2 = i3;
    }
    return i2;
  }
  
  private int h(RecyclerView.p paramp)
  {
    boolean bool2 = true;
    if (l() == 0) {
      return 0;
    }
    g();
    ah localah = a;
    View localView;
    if (!A)
    {
      bool1 = true;
      localView = a(bool1);
      if (A) {
        break label70;
      }
    }
    label70:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return aj.a(paramp, localah, localView, b(bool1), this, A);
      bool1 = false;
      break;
    }
  }
  
  private void h()
  {
    boolean bool = true;
    if ((i == 1) || (!t())) {
      bool = l;
    }
    for (;;)
    {
      c = bool;
      return;
      if (l) {
        bool = false;
      }
    }
  }
  
  private int i(RecyclerView.p paramp)
  {
    boolean bool2 = true;
    if (l() == 0) {
      return 0;
    }
    g();
    ah localah = a;
    View localView;
    if (!A)
    {
      bool1 = true;
      localView = a(bool1);
      if (A) {
        break label70;
      }
    }
    label70:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      return aj.b(paramp, localah, localView, b(bool1), this, A);
      bool1 = false;
      break;
    }
  }
  
  private boolean t()
  {
    return ViewCompat.getLayoutDirection(q) == 1;
  }
  
  private int u()
  {
    int i1 = l();
    if (i1 == 0) {
      return 0;
    }
    return a(c(i1 - 1));
  }
  
  private int v()
  {
    if (l() == 0) {
      return 0;
    }
    return a(c(0));
  }
  
  public final int a(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    return d(paramInt, paraml, paramp);
  }
  
  public final int a(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if (i == 0) {
      return g;
    }
    return super.a(paraml, paramp);
  }
  
  public final int a(RecyclerView.p paramp)
  {
    return g(paramp);
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
    f.a();
    i();
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 0);
  }
  
  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      u = ((SavedState)paramParcelable);
      i();
    }
  }
  
  public final void a(RecyclerView.l paraml, RecyclerView.p paramp, View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    int i3 = 1;
    int i1 = 1;
    int i2 = -1;
    paraml = paramView.getLayoutParams();
    if (!(paraml instanceof LayoutParams))
    {
      super.a(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    paraml = (LayoutParams)paraml;
    int i4;
    int i5;
    if (i == 0)
    {
      i4 = paraml.a();
      if (b) {
        i1 = g;
      }
      i5 = -1;
      i3 = i1;
      i1 = i5;
    }
    for (;;)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain$430787b1(i4, i3, i2, i1, b));
      return;
      i1 = paraml.a();
      if (b)
      {
        i5 = g;
        i4 = -1;
        i2 = i1;
        i3 = -1;
        i1 = i5;
      }
      else
      {
        i4 = -1;
        i2 = i1;
        i5 = -1;
        i1 = i3;
        i3 = i5;
      }
    }
  }
  
  public final void a(RecyclerView paramRecyclerView, RecyclerView.l paraml)
  {
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].c();
      i1 += 1;
    }
  }
  
  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    View localView1;
    View localView2;
    if (l() > 0)
    {
      paramAccessibilityEvent = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      localView1 = a(false);
      localView2 = b(false);
      if ((localView1 != null) && (localView2 != null)) {}
    }
    else
    {
      return;
    }
    int i1 = a(localView1);
    int i2 = a(localView2);
    if (i1 < i2)
    {
      paramAccessibilityEvent.setFromIndex(i1);
      paramAccessibilityEvent.setToIndex(i2);
      return;
    }
    paramAccessibilityEvent.setFromIndex(i2);
    paramAccessibilityEvent.setToIndex(i1);
  }
  
  public final void a(String paramString)
  {
    if (u == null) {
      super.a(paramString);
    }
  }
  
  public final boolean a(RecyclerView.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public final int b(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    return d(paramInt, paraml, paramp);
  }
  
  public final int b(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if (i == 1) {
      return g;
    }
    return super.b(paraml, paramp);
  }
  
  public final int b(RecyclerView.p paramp)
  {
    return g(paramp);
  }
  
  public final RecyclerView.LayoutParams b()
  {
    return new LayoutParams();
  }
  
  public final void b(int paramInt)
  {
    if ((u != null) && (u.a != paramInt))
    {
      SavedState localSavedState = u;
      d = null;
      c = 0;
      a = -1;
      b = -1;
    }
    d = paramInt;
    e = Integer.MIN_VALUE;
    i();
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 1);
  }
  
  public final int c(RecyclerView.p paramp)
  {
    return h(paramp);
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 2);
  }
  
  public final void c(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    g();
    a locala = y;
    a = -1;
    b = Integer.MIN_VALUE;
    c = false;
    d = false;
    int i3;
    int i1;
    label151:
    Object localObject;
    boolean bool;
    if (u != null)
    {
      if (u.c > 0) {
        if (u.c == g)
        {
          i2 = 0;
          if (i2 < g)
          {
            h[i2].c();
            i3 = u.d[i2];
            i1 = i3;
            if (i3 != Integer.MIN_VALUE) {
              if (!u.i) {
                break label151;
              }
            }
            for (i1 = i3 + a.c();; i1 = i3 + a.b())
            {
              h[i2].c(i1);
              i2 += 1;
              break;
            }
          }
        }
        else
        {
          localObject = u;
          d = null;
          c = 0;
          e = 0;
          f = null;
          g = null;
          u.a = u.b;
        }
      }
      t = u.j;
      bool = u.h;
      a(null);
      if ((u != null) && (u.h != bool)) {
        u.h = bool;
      }
      l = bool;
      i();
      h();
      if (u.a != -1)
      {
        d = u.a;
        c = u.i;
        if (u.e > 1)
        {
          f.a = u.f;
          f.b = u.g;
        }
        label355:
        if ((!i) && (d != -1)) {
          break label591;
        }
        i1 = 0;
        label372:
        if (i1 == 0)
        {
          if (!o) {
            break label1136;
          }
          i3 = paramp.a();
          i1 = l() - 1;
          label396:
          if (i1 < 0) {
            break label1131;
          }
          i2 = a(c(i1));
          if ((i2 < 0) || (i2 >= i3)) {
            break label1124;
          }
          i1 = i2;
        }
      }
    }
    label591:
    label680:
    label743:
    label773:
    label808:
    label943:
    label951:
    label978:
    label1024:
    label1029:
    label1035:
    label1124:
    label1131:
    label1136:
    int i4;
    for (;;)
    {
      a = i1;
      b = Integer.MIN_VALUE;
      if ((u == null) && ((c != o) || (t() != t)))
      {
        f.a();
        d = true;
      }
      if ((l() <= 0) || ((u != null) && (u.c > 0))) {
        break label1349;
      }
      if (!d) {
        break label1198;
      }
      i1 = 0;
      while (i1 < g)
      {
        h[i1].c();
        if (b != Integer.MIN_VALUE) {
          h[i1].c(b);
        }
        i1 += 1;
      }
      c = c;
      break;
      h();
      c = c;
      break label355;
      if ((d < 0) || (d >= paramp.a()))
      {
        d = -1;
        e = Integer.MIN_VALUE;
        i1 = 0;
        break label372;
      }
      if ((u == null) || (u.a == -1) || (u.c <= 0))
      {
        localObject = a(d);
        if (localObject != null)
        {
          if (c)
          {
            i1 = u();
            a = i1;
            if (e == Integer.MIN_VALUE) {
              break label773;
            }
            if (!c) {
              break label743;
            }
          }
          for (b = (a.c() - e - a.b((View)localObject));; b = (a.b() + e - a.a((View)localObject)))
          {
            i1 = 1;
            break;
            i1 = v();
            break label680;
          }
          if (a.c((View)localObject) > a.e()) {
            if (c)
            {
              i1 = a.c();
              b = i1;
            }
          }
        }
      }
      for (;;)
      {
        i1 = 1;
        break;
        i1 = a.b();
        break label808;
        i1 = a.a((View)localObject) - a.b();
        if (i1 < 0)
        {
          b = (-i1);
        }
        else
        {
          i1 = a.c() - a.b((View)localObject);
          if (i1 < 0)
          {
            b = i1;
          }
          else
          {
            b = Integer.MIN_VALUE;
            continue;
            a = d;
            if (e == Integer.MIN_VALUE)
            {
              i1 = a;
              if (l() == 0)
              {
                if (c) {
                  break label1024;
                }
                i1 = -1;
                if (i1 != 1) {
                  break label1029;
                }
                bool = true;
                c = bool;
                if (!c) {
                  break label1035;
                }
                i1 = e.a.c();
                b = i1;
              }
            }
            for (;;)
            {
              d = true;
              break;
              if (i1 < v()) {}
              for (bool = true;; bool = false)
              {
                if (bool == c) {
                  break label1024;
                }
                i1 = -1;
                break;
              }
              i1 = 1;
              break label943;
              bool = false;
              break label951;
              i1 = e.a.b();
              break label978;
              i1 = e;
              if (c) {
                b = (e.a.c() - i1);
              } else {
                b = (i1 + e.a.b());
              }
            }
            b = Integer.MIN_VALUE;
            a = d;
          }
        }
      }
      i1 -= 1;
      break label396;
      i1 = 0;
      continue;
      i4 = paramp.a();
      int i5 = l();
      i2 = 0;
      for (;;)
      {
        if (i2 >= i5) {
          break label1193;
        }
        i3 = a(c(i2));
        if (i3 >= 0)
        {
          i1 = i3;
          if (i3 < i4) {
            break;
          }
        }
        i2 += 1;
      }
      label1193:
      i1 = 0;
    }
    label1198:
    int i2 = 0;
    if (i2 < g)
    {
      localObject = h[i2];
      bool = c;
      i4 = b;
      if (bool)
      {
        i1 = ((b)localObject).b(Integer.MIN_VALUE);
        label1245:
        ((b)localObject).c();
        if ((i1 != Integer.MIN_VALUE) && ((!bool) || (i1 >= f.a.c())) && ((bool) || (i1 <= f.a.b()))) {
          break label1316;
        }
      }
      for (;;)
      {
        i2 += 1;
        break;
        i1 = ((b)localObject).a(Integer.MIN_VALUE);
        break label1245;
        label1316:
        i3 = i1;
        if (i4 != Integer.MIN_VALUE) {
          i3 = i1 + i4;
        }
        c = i3;
        b = i3;
      }
    }
    label1349:
    a(paraml);
    z = false;
    j = (b.e() / g);
    v = View.MeasureSpec.makeMeasureSpec(b.e(), 1073741824);
    if (i == 1)
    {
      w = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
      x = View.MeasureSpec.makeMeasureSpec(0, 0);
      if (!c) {
        break label1623;
      }
      a(a, paramp);
      a(paraml, k, paramp);
      b(a, paramp);
      localObject = k;
      b += k.c;
      a(paraml, k, paramp);
      label1495:
      if (l() > 0)
      {
        if (!c) {
          break label1692;
        }
        a(paraml, paramp, true);
        b(paraml, paramp, false);
      }
    }
    for (;;)
    {
      if (!i)
      {
        if ((l() > 0) && (d != -1) && (z)) {
          ViewCompat.postOnAnimation(c(0), B);
        }
        d = -1;
        e = Integer.MIN_VALUE;
      }
      o = c;
      t = t();
      u = null;
      return;
      x = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
      w = View.MeasureSpec.makeMeasureSpec(0, 0);
      break;
      label1623:
      b(a, paramp);
      a(paraml, k, paramp);
      a(a, paramp);
      localObject = k;
      b += k.c;
      a(paraml, k, paramp);
      break label1495;
      label1692:
      b(paraml, paramp, true);
      a(paraml, paramp, false);
    }
  }
  
  public final boolean c()
  {
    return u == null;
  }
  
  public final int d(RecyclerView.p paramp)
  {
    return h(paramp);
  }
  
  public final Parcelable d()
  {
    if (u != null) {
      return new SavedState(u);
    }
    SavedState localSavedState = new SavedState();
    h = l;
    i = o;
    j = t;
    int i1;
    label130:
    View localView;
    label150:
    label157:
    int i2;
    label185:
    int i3;
    if ((f != null) && (f.a != null))
    {
      f = f.a;
      e = f.length;
      g = f.b;
      if (l() <= 0) {
        break label314;
      }
      g();
      if (!o) {
        break label254;
      }
      i1 = u();
      a = i1;
      if (!c) {
        break label262;
      }
      localView = b(true);
      if (localView != null) {
        break label272;
      }
      i1 = -1;
      b = i1;
      c = g;
      d = new int[g];
      i2 = 0;
      if (i2 >= g) {
        break label332;
      }
      if (!o) {
        break label281;
      }
      i3 = h[i2].b(Integer.MIN_VALUE);
      i1 = i3;
      if (i3 != Integer.MIN_VALUE) {
        i1 = i3 - a.c();
      }
    }
    for (;;)
    {
      d[i2] = i1;
      i2 += 1;
      break label185;
      e = 0;
      break;
      label254:
      i1 = v();
      break label130;
      label262:
      localView = a(true);
      break label150;
      label272:
      i1 = a(localView);
      break label157;
      label281:
      i3 = h[i2].a(Integer.MIN_VALUE);
      i1 = i3;
      if (i3 != Integer.MIN_VALUE) {
        i1 = i3 - a.b();
      }
    }
    label314:
    a = -1;
    b = -1;
    c = 0;
    label332:
    return localSavedState;
  }
  
  public final void d(int paramInt)
  {
    super.d(paramInt);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  public final void d(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 3);
  }
  
  public final int e(RecyclerView.p paramp)
  {
    return i(paramp);
  }
  
  public final void e(int paramInt)
  {
    super.e(paramInt);
    int i1 = 0;
    while (i1 < g)
    {
      h[i1].d(paramInt);
      i1 += 1;
    }
  }
  
  public final boolean e()
  {
    return i == 0;
  }
  
  public final int f(RecyclerView.p paramp)
  {
    return i(paramp);
  }
  
  public final void f(int paramInt)
  {
    if ((paramInt != 0) || (l() == 0) || (n == 0)) {
      return;
    }
    int i2;
    int i1;
    label36:
    int i4;
    Object localObject2;
    int i3;
    label90:
    label105:
    int i5;
    label114:
    int i6;
    label117:
    Object localObject1;
    LayoutParams localLayoutParams;
    Object localObject3;
    if (c)
    {
      i2 = u();
      i1 = v();
      if (i2 != 0) {
        break label486;
      }
      i4 = l() - 1;
      localObject2 = new BitSet(g);
      ((BitSet)localObject2).set(0, g, true);
      if ((i != 1) || (!t())) {
        break label228;
      }
      i3 = 1;
      if (!c) {
        break label234;
      }
      paramInt = i4 - 1;
      i4 = -1;
      if (paramInt >= i4) {
        break label239;
      }
      i5 = 1;
      i6 = paramInt;
      if (i6 == i4) {
        break label480;
      }
      localObject1 = c(i6);
      localLayoutParams = (LayoutParams)((View)localObject1).getLayoutParams();
      if (!((BitSet)localObject2).get(a.e)) {
        break label283;
      }
      localObject3 = a;
      if (!c) {
        break label245;
      }
      if (((b)localObject3).b() >= a.c()) {
        break label265;
      }
      paramInt = 1;
      label189:
      if (paramInt == 0) {
        break label270;
      }
      label193:
      if (localObject1 == null) {
        break label486;
      }
      f.a();
    }
    for (;;)
    {
      s = true;
      i();
      return;
      i2 = v();
      i1 = u();
      break label36;
      label228:
      i3 = -1;
      break label90;
      label234:
      paramInt = 0;
      break label105;
      label239:
      i5 = -1;
      break label114;
      label245:
      if (((b)localObject3).a() > a.b())
      {
        paramInt = 1;
        break label189;
      }
      label265:
      paramInt = 0;
      break label189;
      label270:
      ((BitSet)localObject2).clear(a.e);
      label283:
      if ((!b) && (i6 + i5 != i4))
      {
        localObject3 = c(i6 + i5);
        paramInt = 0;
        int i8;
        if (c)
        {
          i7 = a.b((View)localObject1);
          i8 = a.b((View)localObject3);
          if (i7 < i8) {
            break label193;
          }
          if (i7 == i8) {
            paramInt = 1;
          }
          label362:
          if (paramInt == 0) {
            break label470;
          }
          localObject3 = (LayoutParams)((View)localObject3).getLayoutParams();
          if (a.e - a.e >= 0) {
            break label459;
          }
          paramInt = 1;
          label398:
          if (i3 >= 0) {
            break label464;
          }
        }
        label459:
        label464:
        for (int i7 = 1;; i7 = 0)
        {
          if (paramInt == i7) {
            break label470;
          }
          break;
          i7 = a.a((View)localObject1);
          i8 = a.a((View)localObject3);
          if (i7 > i8) {
            break;
          }
          if (i7 != i8) {
            break label362;
          }
          paramInt = 1;
          break label362;
          paramInt = 0;
          break label398;
        }
      }
      label470:
      i6 += i5;
      break label117;
      label480:
      localObject1 = null;
      break label193;
      label486:
      if (!z) {
        break;
      }
      if (c) {}
      for (paramInt = -1;; paramInt = 1)
      {
        localObject1 = f.a(i2, i1 + 1, paramInt);
        if (localObject1 != null) {
          break;
        }
        z = false;
        f.a(i1 + 1);
        return;
      }
      localObject2 = f.a(i2, a, paramInt * -1);
      if (localObject2 == null) {
        f.a(a);
      } else {
        f.a(a + 1);
      }
    }
  }
  
  public final boolean f()
  {
    return i == 1;
  }
  
  public static class LayoutParams
    extends RecyclerView.LayoutParams
  {
    StaggeredGridLayoutManager.b a;
    boolean b;
    
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
    
    public final int a()
    {
      if (a == null) {
        return -1;
      }
      return a.e;
    }
  }
  
  static final class LazySpanLookup
  {
    int[] a;
    List<FullSpanItem> b;
    
    final int a(int paramInt)
    {
      if (b != null)
      {
        int i = b.size() - 1;
        while (i >= 0)
        {
          if (b.get(i)).a >= paramInt) {
            b.remove(i);
          }
          i -= 1;
        }
      }
      return b(paramInt);
    }
    
    public final FullSpanItem a(int paramInt1, int paramInt2, int paramInt3)
    {
      Object localObject;
      if (b == null)
      {
        localObject = null;
        return (FullSpanItem)localObject;
      }
      int i = 0;
      for (;;)
      {
        if (i >= b.size()) {
          break label96;
        }
        FullSpanItem localFullSpanItem = (FullSpanItem)b.get(i);
        if (a >= paramInt2) {
          return null;
        }
        if (a >= paramInt1)
        {
          localObject = localFullSpanItem;
          if (paramInt3 == 0) {
            break;
          }
          localObject = localFullSpanItem;
          if (b == paramInt3) {
            break;
          }
        }
        i += 1;
      }
      label96:
      return null;
    }
    
    final void a()
    {
      if (a != null) {
        Arrays.fill(a, -1);
      }
      b = null;
    }
    
    final void a(int paramInt1, int paramInt2)
    {
      if ((a == null) || (paramInt1 >= a.length)) {}
      do
      {
        return;
        c(paramInt1 + paramInt2);
        System.arraycopy(a, paramInt1 + paramInt2, a, paramInt1, a.length - paramInt1 - paramInt2);
        Arrays.fill(a, a.length - paramInt2, a.length, -1);
      } while (b == null);
      int i = b.size() - 1;
      label87:
      FullSpanItem localFullSpanItem;
      if (i >= 0)
      {
        localFullSpanItem = (FullSpanItem)b.get(i);
        if (a >= paramInt1)
        {
          if (a >= paramInt1 + paramInt2) {
            break label144;
          }
          b.remove(i);
        }
      }
      for (;;)
      {
        i -= 1;
        break label87;
        break;
        label144:
        a -= paramInt2;
      }
    }
    
    public final void a(FullSpanItem paramFullSpanItem)
    {
      if (b == null) {
        b = new ArrayList();
      }
      int j = b.size();
      int i = 0;
      while (i < j)
      {
        FullSpanItem localFullSpanItem = (FullSpanItem)b.get(i);
        if (a == a) {
          b.remove(i);
        }
        if (a >= a)
        {
          b.add(i, paramFullSpanItem);
          return;
        }
        i += 1;
      }
      b.add(paramFullSpanItem);
    }
    
    final int b(int paramInt)
    {
      if (a == null) {
        return -1;
      }
      if (paramInt >= a.length) {
        return -1;
      }
      FullSpanItem localFullSpanItem;
      int i;
      if (b != null)
      {
        localFullSpanItem = d(paramInt);
        if (localFullSpanItem != null) {
          b.remove(localFullSpanItem);
        }
        int j = b.size();
        i = 0;
        if (i >= j) {
          break label178;
        }
        if (b.get(i)).a < paramInt) {}
      }
      for (;;)
      {
        if (i != -1)
        {
          localFullSpanItem = (FullSpanItem)b.get(i);
          b.remove(i);
        }
        for (i = a;; i = -1)
        {
          if (i != -1) {
            break label162;
          }
          Arrays.fill(a, paramInt, a.length, -1);
          return a.length;
          i += 1;
          break;
        }
        label162:
        Arrays.fill(a, paramInt, i + 1, -1);
        return i + 1;
        label178:
        i = -1;
      }
    }
    
    final void b(int paramInt1, int paramInt2)
    {
      if ((a == null) || (paramInt1 >= a.length)) {}
      for (;;)
      {
        return;
        c(paramInt1 + paramInt2);
        System.arraycopy(a, paramInt1, a, paramInt1 + paramInt2, a.length - paramInt1 - paramInt2);
        Arrays.fill(a, paramInt1, paramInt1 + paramInt2, -1);
        if (b != null)
        {
          int i = b.size() - 1;
          while (i >= 0)
          {
            FullSpanItem localFullSpanItem = (FullSpanItem)b.get(i);
            if (a >= paramInt1) {
              a += paramInt2;
            }
            i -= 1;
          }
        }
      }
    }
    
    final void c(int paramInt)
    {
      if (a == null)
      {
        a = new int[Math.max(paramInt, 10) + 1];
        Arrays.fill(a, -1);
      }
      while (paramInt < a.length) {
        return;
      }
      int[] arrayOfInt = a;
      int i = a.length;
      while (i <= paramInt) {
        i *= 2;
      }
      a = new int[i];
      System.arraycopy(arrayOfInt, 0, a, 0, arrayOfInt.length);
      Arrays.fill(a, arrayOfInt.length, a.length, -1);
    }
    
    public final FullSpanItem d(int paramInt)
    {
      Object localObject;
      if (b == null)
      {
        localObject = null;
        return (FullSpanItem)localObject;
      }
      int i = b.size() - 1;
      for (;;)
      {
        if (i < 0) {
          break label61;
        }
        FullSpanItem localFullSpanItem = (FullSpanItem)b.get(i);
        localObject = localFullSpanItem;
        if (a == paramInt) {
          break;
        }
        i -= 1;
      }
      label61:
      return null;
    }
    
    static class FullSpanItem
      implements Parcelable
    {
      public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator() {};
      int a;
      int b;
      int[] c;
      
      public FullSpanItem() {}
      
      public FullSpanItem(Parcel paramParcel)
      {
        a = paramParcel.readInt();
        b = paramParcel.readInt();
        int i = paramParcel.readInt();
        if (i > 0)
        {
          c = new int[i];
          paramParcel.readIntArray(c);
        }
      }
      
      final int a(int paramInt)
      {
        if (c == null) {
          return 0;
        }
        return c[paramInt];
      }
      
      public int describeContents()
      {
        return 0;
      }
      
      public String toString()
      {
        return "FullSpanItem{mPosition=" + a + ", mGapDir=" + b + ", mGapPerSpan=" + Arrays.toString(c) + '}';
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        paramParcel.writeInt(a);
        paramParcel.writeInt(b);
        if ((c != null) && (c.length > 0))
        {
          paramParcel.writeInt(c.length);
          paramParcel.writeIntArray(c);
          return;
        }
        paramParcel.writeInt(0);
      }
    }
  }
  
  static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
    int a;
    int b;
    int c;
    int[] d;
    int e;
    int[] f;
    List<StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> g;
    boolean h;
    boolean i;
    boolean j;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      c = paramParcel.readInt();
      if (c > 0)
      {
        d = new int[c];
        paramParcel.readIntArray(d);
      }
      e = paramParcel.readInt();
      if (e > 0)
      {
        f = new int[e];
        paramParcel.readIntArray(f);
      }
      if (paramParcel.readInt() == 1)
      {
        bool1 = true;
        h = bool1;
        if (paramParcel.readInt() != 1) {
          break label152;
        }
        bool1 = true;
        label113:
        i = bool1;
        if (paramParcel.readInt() != 1) {
          break label157;
        }
      }
      label152:
      label157:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        j = bool1;
        g = paramParcel.readArrayList(StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.class.getClassLoader());
        return;
        bool1 = false;
        break;
        bool1 = false;
        break label113;
      }
    }
    
    public SavedState(SavedState paramSavedState)
    {
      c = c;
      a = a;
      b = b;
      d = d;
      e = e;
      f = f;
      h = h;
      i = i;
      j = j;
      g = g;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      int k = 1;
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
      paramParcel.writeInt(c);
      if (c > 0) {
        paramParcel.writeIntArray(d);
      }
      paramParcel.writeInt(e);
      if (e > 0) {
        paramParcel.writeIntArray(f);
      }
      if (h)
      {
        paramInt = 1;
        paramParcel.writeInt(paramInt);
        if (!i) {
          break label120;
        }
        paramInt = 1;
        label87:
        paramParcel.writeInt(paramInt);
        if (!j) {
          break label125;
        }
      }
      label120:
      label125:
      for (paramInt = k;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        paramParcel.writeList(g);
        return;
        paramInt = 0;
        break;
        paramInt = 0;
        break label87;
      }
    }
  }
  
  final class a
  {
    int a;
    int b;
    boolean c;
    boolean d;
  }
  
  final class b
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
}

/* Location:
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
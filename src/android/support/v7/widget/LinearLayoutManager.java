package android.support.v7.widget;

import ad;
import ah;
import aj;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager
  extends RecyclerView.h
{
  private c a;
  private boolean b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f;
  public int i;
  ah j;
  boolean k = false;
  public int l = -1;
  public int m = Integer.MIN_VALUE;
  public SavedState n = null;
  final a o = new a();
  
  public LinearLayoutManager()
  {
    this((byte)0);
  }
  
  public LinearLayoutManager(byte paramByte)
  {
    a(null);
    if (1 != i)
    {
      i = 1;
      j = null;
      i();
    }
    a(null);
    if (c)
    {
      c = false;
      i();
    }
  }
  
  private int a(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp, boolean paramBoolean)
  {
    int i1 = j.c() - paramInt;
    if (i1 > 0)
    {
      int i2 = -d(-i1, paraml, paramp);
      i1 = i2;
      if (paramBoolean)
      {
        paramInt = j.c() - (paramInt + i2);
        i1 = i2;
        if (paramInt > 0)
        {
          j.a(paramInt);
          i1 = i2 + paramInt;
        }
      }
      return i1;
    }
    return 0;
  }
  
  private int a(RecyclerView.l paraml, c paramc, RecyclerView.p paramp, boolean paramBoolean)
  {
    int i3 = c;
    if (g != Integer.MIN_VALUE)
    {
      if (c < 0) {
        g += c;
      }
      a(paraml, paramc);
    }
    int i1 = c + h;
    b localb = new b();
    do
    {
      int i2;
      do
      {
        if ((i1 <= 0) || (!paramc.a(paramp))) {
          break;
        }
        a = 0;
        b = false;
        c = false;
        d = false;
        a(paraml, paramp, paramc, localb);
        if (b) {
          break;
        }
        b += a * f;
        if ((c) && (a.j == null))
        {
          i2 = i1;
          if (i) {}
        }
        else
        {
          c -= a;
          i2 = i1 - a;
        }
        if (g != Integer.MIN_VALUE)
        {
          g += a;
          if (c < 0) {
            g += c;
          }
          a(paraml, paramc);
        }
        i1 = i2;
      } while (!paramBoolean);
      i1 = i2;
    } while (!d);
    return i3 - c;
  }
  
  private View a(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = null;
    u();
    int i2 = j.b();
    int i3 = j.c();
    int i1;
    Object localObject2;
    label36:
    View localView;
    if (paramInt2 > paramInt1)
    {
      i1 = 1;
      localObject2 = null;
      if (paramInt1 == paramInt2) {
        break label150;
      }
      localView = c(paramInt1);
      int i4 = a(localView);
      if ((i4 < 0) || (i4 >= paramInt3)) {
        break label165;
      }
      if (!getLayoutParamsc.m()) {
        break label106;
      }
      if (localObject2 != null) {
        break label165;
      }
      localObject2 = localView;
    }
    label106:
    label150:
    label162:
    label165:
    for (;;)
    {
      paramInt1 += i1;
      break label36;
      i1 = -1;
      break;
      Object localObject3;
      if (j.a(localView) < i3)
      {
        localObject3 = localView;
        if (j.b(localView) >= i2) {}
      }
      else
      {
        if (localObject1 != null) {
          break label165;
        }
        localObject1 = localView;
        continue;
        if (localObject1 == null) {
          break label162;
        }
        localObject3 = localObject1;
      }
      return (View)localObject3;
      return (View)localObject2;
    }
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.p paramp)
  {
    int i1 = -1;
    int i2 = 1;
    a.h = g(paramp);
    a.f = paramInt1;
    if (paramInt1 == 1)
    {
      paramp = a;
      h += j.f();
      paramp = w();
      localc = a;
      if (k) {}
      for (paramInt1 = i1;; paramInt1 = 1)
      {
        e = paramInt1;
        a.d = (a(paramp) + a.e);
        a.b = j.b(paramp);
        paramInt1 = j.b(paramp) - j.c();
        a.c = paramInt2;
        if (paramBoolean)
        {
          paramp = a;
          c -= paramInt1;
        }
        a.g = paramInt1;
        return;
      }
    }
    paramp = v();
    c localc = a;
    h += j.b();
    localc = a;
    if (k) {}
    for (paramInt1 = i2;; paramInt1 = -1)
    {
      e = paramInt1;
      a.d = (a(paramp) + a.e);
      a.b = j.a(paramp);
      paramInt1 = -j.a(paramp) + j.b();
      break;
    }
  }
  
  private void a(a parama)
  {
    e(a, b);
  }
  
  private void a(RecyclerView.l paraml, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i1 = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, paraml);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i1 > paramInt2)
        {
          a(i1, paraml);
          i1 -= 1;
        }
      }
    }
  }
  
  private void a(RecyclerView.l paraml, c paramc)
  {
    if (!a) {}
    for (;;)
    {
      return;
      int i1;
      int i2;
      int i3;
      if (f == -1)
      {
        i1 = g;
        i2 = l();
        if (i1 >= 0)
        {
          i3 = j.d() - i1;
          if (k)
          {
            i1 = 0;
            while (i1 < i2)
            {
              paramc = c(i1);
              if (j.a(paramc) < i3)
              {
                a(paraml, 0, i1);
                return;
              }
              i1 += 1;
            }
          }
          else
          {
            i1 = i2 - 1;
            while (i1 >= 0)
            {
              paramc = c(i1);
              if (j.a(paramc) < i3)
              {
                a(paraml, i2 - 1, i1);
                return;
              }
              i1 -= 1;
            }
          }
        }
      }
      else
      {
        i2 = g;
        if (i2 >= 0)
        {
          i3 = l();
          if (k)
          {
            i1 = i3 - 1;
            while (i1 >= 0)
            {
              paramc = c(i1);
              if (j.b(paramc) > i2)
              {
                a(paraml, i3 - 1, i1);
                return;
              }
              i1 -= 1;
            }
          }
          else
          {
            i1 = 0;
            while (i1 < i3)
            {
              paramc = c(i1);
              if (j.b(paramc) > i2)
              {
                a(paraml, 0, i1);
                return;
              }
              i1 += 1;
            }
          }
        }
      }
    }
  }
  
  private int b(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp, boolean paramBoolean)
  {
    int i1 = paramInt - j.b();
    if (i1 > 0)
    {
      int i2 = -d(i1, paraml, paramp);
      i1 = i2;
      if (paramBoolean)
      {
        paramInt = paramInt + i2 - j.b();
        i1 = i2;
        if (paramInt > 0)
        {
          j.a(-paramInt);
          i1 = i2 - paramInt;
        }
      }
      return i1;
    }
    return 0;
  }
  
  private void b(a parama)
  {
    f(a, b);
  }
  
  private int d(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if ((l() == 0) || (paramInt == 0)) {
      return 0;
    }
    a.a = true;
    u();
    if (paramInt > 0) {}
    int i2;
    int i3;
    for (int i1 = 1;; i1 = -1)
    {
      i2 = Math.abs(paramInt);
      a(i1, i2, true, paramp);
      i3 = a.g + a(paraml, a, paramp, false);
      if (i3 >= 0) {
        break;
      }
      return 0;
    }
    if (i2 > i3) {
      paramInt = i1 * i3;
    }
    j.a(-paramInt);
    return paramInt;
  }
  
  private void e(int paramInt1, int paramInt2)
  {
    a.c = (j.c() - paramInt2);
    c localc = a;
    if (k) {}
    for (int i1 = -1;; i1 = 1)
    {
      e = i1;
      a.d = paramInt1;
      a.f = 1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void f(int paramInt1, int paramInt2)
  {
    a.c = (paramInt2 - j.b());
    a.d = paramInt1;
    c localc = a;
    if (k) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      e = paramInt1;
      a.f = -1;
      a.b = paramInt2;
      a.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private int g(RecyclerView.p paramp)
  {
    int i2 = 0;
    if (a != -1) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0) {
        i2 = j.e();
      }
      return i2;
    }
  }
  
  private View g(int paramInt)
  {
    return a(0, l(), paramInt);
  }
  
  private int h(RecyclerView.p paramp)
  {
    if (l() == 0) {
      return 0;
    }
    u();
    return aj.a(paramp, j, v(), w(), this, e, k);
  }
  
  private View h(int paramInt)
  {
    return a(l() - 1, -1, paramInt);
  }
  
  private int i(RecyclerView.p paramp)
  {
    if (l() == 0) {
      return 0;
    }
    u();
    return aj.a(paramp, j, v(), w(), this, e);
  }
  
  private int j(RecyclerView.p paramp)
  {
    if (l() == 0) {
      return 0;
    }
    u();
    return aj.b(paramp, j, v(), w(), this, e);
  }
  
  private View k(RecyclerView.p paramp)
  {
    if (k) {
      return g(paramp.a());
    }
    return h(paramp.a());
  }
  
  private View l(RecyclerView.p paramp)
  {
    if (k) {
      return h(paramp.a());
    }
    return g(paramp.a());
  }
  
  private void t()
  {
    boolean bool = true;
    if ((i == 1) || (!g())) {
      bool = c;
    }
    for (;;)
    {
      k = bool;
      return;
      if (c) {
        bool = false;
      }
    }
  }
  
  private void u()
  {
    if (a == null) {
      a = new c();
    }
    if (j == null) {
      j = ah.a(this, i);
    }
  }
  
  private View v()
  {
    if (k) {}
    for (int i1 = l() - 1;; i1 = 0) {
      return c(i1);
    }
  }
  
  private View w()
  {
    if (k) {}
    for (int i1 = 0;; i1 = l() - 1) {
      return c(i1);
    }
  }
  
  public final int a(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if (i == 1) {
      return 0;
    }
    return d(paramInt, paraml, paramp);
  }
  
  public final int a(RecyclerView.p paramp)
  {
    return h(paramp);
  }
  
  public final View a(int paramInt)
  {
    int i1 = l();
    if (i1 == 0) {}
    do
    {
      return null;
      paramInt -= a(c(0));
    } while ((paramInt < 0) || (paramInt >= i1));
    return c(paramInt);
  }
  
  public final View a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    u();
    int i2 = j.b();
    int i3 = j.c();
    int i1;
    if (paramInt2 > paramInt1) {
      i1 = 1;
    }
    while (paramInt1 != paramInt2)
    {
      View localView = c(paramInt1);
      int i4 = j.a(localView);
      int i5 = j.b(localView);
      if ((i4 < i3) && (i5 > i2)) {
        if (paramBoolean)
        {
          if ((i4 >= i2) && (i5 <= i3))
          {
            return localView;
            i1 = -1;
          }
        }
        else {
          return localView;
        }
      }
      paramInt1 += i1;
    }
    return null;
  }
  
  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      n = ((SavedState)paramParcelable);
      i();
    }
  }
  
  void a(RecyclerView.l paraml, RecyclerView.p paramp, c paramc, b paramb)
  {
    paraml = paramc.a(paraml);
    if (paraml == null)
    {
      b = true;
      return;
    }
    paramp = (RecyclerView.LayoutParams)paraml.getLayoutParams();
    boolean bool2;
    boolean bool1;
    label63:
    int i1;
    int i2;
    int i3;
    int i4;
    if (j == null)
    {
      bool2 = k;
      if (f == -1)
      {
        bool1 = true;
        if (bool2 != bool1) {
          break label356;
        }
        super.a(paraml, -1, false);
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paraml.getLayoutParams();
        Rect localRect = q.d(paraml);
        i1 = left;
        i2 = right;
        i3 = top;
        i4 = bottom;
        paraml.measure(RecyclerView.h.a(m(), i1 + i2 + 0 + (o() + q() + leftMargin + rightMargin), width, e()), RecyclerView.h.a(n(), i4 + i3 + 0 + (p() + r() + topMargin + bottomMargin), height, f()));
        a = j.c(paraml);
        if (i != 1) {
          break label467;
        }
        if (!g()) {
          break label416;
        }
        i1 = m() - q();
        i2 = i1 - j.d(paraml);
        label256:
        if (f != -1) {
          break label438;
        }
        i3 = b;
        i4 = b - a;
      }
    }
    for (;;)
    {
      a(paraml, i2 + leftMargin, i4 + topMargin, i1 - rightMargin, i3 - bottomMargin);
      if ((c.m()) || (c.k())) {
        c = true;
      }
      d = paraml.isFocusable();
      return;
      bool1 = false;
      break;
      label356:
      super.a(paraml, 0, false);
      break label63;
      bool2 = k;
      if (f == -1) {}
      for (bool1 = true;; bool1 = false)
      {
        if (bool2 != bool1) {
          break label406;
        }
        super.a(paraml, -1, true);
        break;
      }
      label406:
      super.a(paraml, 0, true);
      break label63;
      label416:
      i2 = o();
      i1 = j.d(paraml) + i2;
      break label256;
      label438:
      i4 = b;
      i3 = b;
      int i5 = a;
      i3 += i5;
      continue;
      label467:
      i4 = p();
      i3 = j.d(paraml) + i4;
      if (f == -1)
      {
        i1 = b;
        i2 = b - a;
      }
      else
      {
        i2 = b;
        i1 = b + a;
      }
    }
  }
  
  void a(RecyclerView.p paramp, a parama) {}
  
  public final void a(RecyclerView paramRecyclerView, RecyclerView.l paraml)
  {
    super.a(paramRecyclerView, paraml);
    if (f)
    {
      c(paraml);
      paraml.a();
    }
  }
  
  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    int i1 = -1;
    super.a(paramAccessibilityEvent);
    View localView;
    if (l() > 0)
    {
      paramAccessibilityEvent = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      paramAccessibilityEvent.setFromIndex(h());
      localView = a(l() - 1, -1, false);
      if (localView != null) {
        break label50;
      }
    }
    for (;;)
    {
      paramAccessibilityEvent.setToIndex(i1);
      return;
      label50:
      i1 = a(localView);
    }
  }
  
  public final void a(String paramString)
  {
    if (n == null) {
      super.a(paramString);
    }
  }
  
  public final int b(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if (i == 0) {
      return 0;
    }
    return d(paramInt, paraml, paramp);
  }
  
  public final int b(RecyclerView.p paramp)
  {
    return h(paramp);
  }
  
  public RecyclerView.LayoutParams b()
  {
    return new RecyclerView.LayoutParams();
  }
  
  public final void b(int paramInt)
  {
    l = paramInt;
    m = Integer.MIN_VALUE;
    if (n != null) {
      n.a = -1;
    }
    i();
  }
  
  public final int c(RecyclerView.p paramp)
  {
    return i(paramp);
  }
  
  public final View c(int paramInt, RecyclerView.l paraml, RecyclerView.p paramp)
  {
    t();
    if (l() == 0) {}
    label75:
    View localView;
    label97:
    do
    {
      do
      {
        return null;
        switch (paramInt)
        {
        default: 
          paramInt = Integer.MIN_VALUE;
        }
      } while (paramInt == Integer.MIN_VALUE);
      u();
      if (paramInt != -1) {
        break;
      }
      localView = l(paramp);
    } while (localView == null);
    u();
    a(paramInt, (int)(0.33F * j.e()), false, paramp);
    a.g = Integer.MIN_VALUE;
    a.a = false;
    a(paraml, a, paramp, true);
    if (paramInt == -1) {}
    for (paraml = v(); (paraml != localView) && (paraml.isFocusable()); paraml = w())
    {
      return paraml;
      paramInt = -1;
      break label75;
      paramInt = 1;
      break label75;
      if (i == 1)
      {
        paramInt = -1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (i == 1)
      {
        paramInt = 1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (i == 0)
      {
        paramInt = -1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (i == 0)
      {
        paramInt = 1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      localView = k(paramp);
      break label97;
    }
  }
  
  public void c(RecyclerView.l paraml, RecyclerView.p paramp)
  {
    if ((n != null) && (n.a())) {
      l = n.a;
    }
    u();
    a.a = false;
    t();
    Object localObject1 = o;
    a = -1;
    b = Integer.MIN_VALUE;
    c = false;
    o.c = (k ^ d);
    Object localObject2 = o;
    int i1;
    label129:
    label190:
    label196:
    label219:
    boolean bool;
    label248:
    int i3;
    int i2;
    label263:
    int i4;
    if ((i) || (l == -1))
    {
      i1 = 0;
      if (i1 == 0)
      {
        if (l() == 0) {
          break label1323;
        }
        if (q != null) {
          break label1129;
        }
        localObject1 = null;
        if (localObject1 == null) {
          break label1174;
        }
        RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)((View)localObject1).getLayoutParams();
        if ((c.m()) || (c.c() < 0) || (c.c() >= paramp.a())) {
          break label1169;
        }
        ((a)localObject2).a((View)localObject1);
        i1 = 1;
        if (i1 == 0) {
          break label1174;
        }
        i1 = 1;
        if (i1 == 0)
        {
          ((a)localObject2).a();
          if (!d) {
            break label1328;
          }
          i1 = paramp.a() - 1;
          a = i1;
        }
      }
      i1 = g(paramp);
      if (a >= o.a) {
        break label1333;
      }
      bool = true;
      if (bool != k) {
        break label1339;
      }
      i3 = 0;
      i2 = i1;
      i3 += j.b();
      i4 = i2 + j.f();
      i1 = i4;
      i2 = i3;
      if (i)
      {
        i1 = i4;
        i2 = i3;
        if (l != -1)
        {
          i1 = i4;
          i2 = i3;
          if (m != Integer.MIN_VALUE)
          {
            localObject1 = a(l);
            i1 = i4;
            i2 = i3;
            if (localObject1 != null)
            {
              if (!k) {
                break label1348;
              }
              i1 = j.c() - j.b((View)localObject1) - m;
              label384:
              if (i1 <= 0) {
                break label1380;
              }
              i2 = i3 + i1;
              i1 = i4;
            }
          }
        }
      }
      label397:
      a(paramp, o);
      a(paraml);
      a.i = i;
      if (!o.c) {
        break label1392;
      }
      b(o);
      a.h = i2;
      a(paraml, a, paramp, false);
      i3 = a.b;
      i2 = i1;
      if (a.c > 0) {
        i2 = i1 + a.c;
      }
      a(o);
      a.h = i2;
      localObject1 = a;
      d += a.e;
      a(paraml, a, paramp, false);
      i1 = a.b;
      i2 = i3;
      label559:
      if (l() <= 0) {
        break label1896;
      }
      if (!(k ^ d)) {
        break label1520;
      }
      i3 = a(i1, paraml, paramp, true);
      i2 += i3;
      i4 = b(i2, paraml, paramp, false);
      i2 += i4;
      i1 = i1 + i3 + i4;
    }
    label1034:
    label1061:
    label1067:
    label1129:
    label1169:
    label1174:
    label1200:
    label1266:
    label1307:
    label1312:
    label1323:
    label1328:
    label1333:
    label1339:
    label1348:
    label1380:
    label1392:
    label1520:
    label1632:
    label1644:
    label1682:
    label1688:
    label1775:
    label1891:
    label1896:
    for (;;)
    {
      if ((!k) || (l() == 0) || (i) || (!c()))
      {
        if (!i)
        {
          l = -1;
          m = Integer.MIN_VALUE;
          paraml = j;
          b = paraml.e();
        }
        b = d;
        n = null;
        return;
        if ((l < 0) || (l >= paramp.a()))
        {
          l = -1;
          m = Integer.MIN_VALUE;
          i1 = 0;
          break;
        }
        a = l;
        if ((n != null) && (n.a()))
        {
          c = n.c;
          if (c) {}
          for (b = (j.c() - n.b);; b = (j.b() + n.b))
          {
            i1 = 1;
            break;
          }
        }
        if (m == Integer.MIN_VALUE)
        {
          localObject1 = a(l);
          if (localObject1 != null) {
            if (j.c((View)localObject1) > j.e()) {
              ((a)localObject2).a();
            }
          }
        }
        for (;;)
        {
          i1 = 1;
          break;
          if (j.a((View)localObject1) - j.b() < 0)
          {
            b = j.b();
            c = false;
          }
          else if (j.c() - j.b((View)localObject1) < 0)
          {
            b = j.c();
            c = true;
          }
          else
          {
            if (c) {}
            for (i1 = j.b((View)localObject1) + j.a();; i1 = j.a((View)localObject1))
            {
              b = i1;
              i1 = 1;
              break;
            }
            if (l() > 0)
            {
              i1 = a(c(0));
              if (l >= i1) {
                break label1061;
              }
              bool = true;
              if (bool != k) {
                break label1067;
              }
            }
            for (bool = true;; bool = false)
            {
              c = bool;
              ((a)localObject2).a();
              break;
              bool = false;
              break label1034;
            }
            c = k;
            if (k) {
              b = (j.c() - m);
            } else {
              b = (j.b() + m);
            }
          }
        }
        localObject1 = q.getFocusedChild();
        if ((localObject1 == null) || (p.c.contains(localObject1)))
        {
          localObject1 = null;
          break label129;
        }
        break label129;
        i1 = 0;
        break label190;
        if (b == d)
        {
          if (c)
          {
            localObject1 = k(paramp);
            if (localObject1 == null) {
              break label1323;
            }
            ((a)localObject2).a((View)localObject1);
            if ((!i) && (c()))
            {
              if ((j.a((View)localObject1) < j.c()) && (j.b((View)localObject1) >= j.b())) {
                break label1307;
              }
              i1 = 1;
              if (i1 != 0) {
                if (!c) {
                  break label1312;
                }
              }
            }
          }
          for (i1 = j.c();; i1 = j.b())
          {
            b = i1;
            i1 = 1;
            break;
            localObject1 = l(paramp);
            break label1200;
            i1 = 0;
            break label1266;
          }
        }
        i1 = 0;
        break label196;
        i1 = 0;
        break label219;
        bool = false;
        break label248;
        i2 = 0;
        i3 = i1;
        break label263;
        i1 = j.a((View)localObject1);
        i2 = j.b();
        i1 = m - (i1 - i2);
        break label384;
        i1 = i4 - i1;
        i2 = i3;
        break label397;
        a(o);
        a.h = i1;
        a(paraml, a, paramp, false);
        i3 = a.b;
        i1 = i2;
        if (a.c > 0) {
          i1 = i2 + a.c;
        }
        b(o);
        a.h = i1;
        localObject1 = a;
        d += a.e;
        a(paraml, a, paramp, false);
        i2 = a.b;
        i1 = i3;
        break label559;
        i3 = b(i2, paraml, paramp, true);
        i1 += i3;
        i4 = a(i1, paraml, paramp, false);
        i2 = i2 + i3 + i4;
        i1 += i4;
        continue;
      }
      i4 = 0;
      i3 = 0;
      localObject1 = d;
      int i7 = ((List)localObject1).size();
      int i8 = a(c(0));
      int i5 = 0;
      if (i5 < i7)
      {
        localObject2 = (RecyclerView.s)((List)localObject1).get(i5);
        int i6;
        if (((RecyclerView.s)localObject2).c() < i8)
        {
          bool = true;
          if (bool == k) {
            break label1682;
          }
          i6 = -1;
          if (i6 != -1) {
            break label1688;
          }
          i4 = j.c(a) + i4;
        }
        for (;;)
        {
          i5 += 1;
          break;
          bool = false;
          break label1632;
          i6 = 1;
          break label1644;
          i3 = j.c(a) + i3;
        }
      }
      a.j = ((List)localObject1);
      if (i4 > 0)
      {
        f(a(v()), i2);
        a.h = i4;
        a.c = 0;
        localObject1 = a;
        i4 = d;
        if (k)
        {
          i2 = 1;
          d = (i2 + i4);
          a(paraml, a, paramp, false);
        }
      }
      else if (i3 > 0)
      {
        e(a(w()), i1);
        a.h = i3;
        a.c = 0;
        localObject1 = a;
        i2 = d;
        if (!k) {
          break label1891;
        }
      }
      for (i1 = -1;; i1 = 1)
      {
        d = (i1 + i2);
        a(paraml, a, paramp, false);
        a.j = null;
        break;
        i2 = -1;
        break label1775;
      }
    }
  }
  
  public boolean c()
  {
    return (n == null) && (b == d);
  }
  
  public final int d(RecyclerView.p paramp)
  {
    return i(paramp);
  }
  
  public final Parcelable d()
  {
    if (n != null) {
      return new SavedState(n);
    }
    SavedState localSavedState = new SavedState();
    if (l() > 0)
    {
      u();
      boolean bool = b ^ k;
      c = bool;
      if (bool)
      {
        localView = w();
        b = (j.c() - j.b(localView));
        a = a(localView);
        return localSavedState;
      }
      View localView = v();
      a = a(localView);
      b = (j.a(localView) - j.b());
      return localSavedState;
    }
    a = -1;
    return localSavedState;
  }
  
  public final int e(RecyclerView.p paramp)
  {
    return j(paramp);
  }
  
  public final boolean e()
  {
    return i == 0;
  }
  
  public final int f(RecyclerView.p paramp)
  {
    return j(paramp);
  }
  
  public final boolean f()
  {
    return i == 1;
  }
  
  protected final boolean g()
  {
    return ViewCompat.getLayoutDirection(q) == 1;
  }
  
  public final int h()
  {
    View localView = a(0, l(), false);
    if (localView == null) {
      return -1;
    }
    return a(localView);
  }
  
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
    public int a;
    int b;
    boolean c;
    
    public SavedState() {}
    
    SavedState(Parcel paramParcel)
    {
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      if (paramParcel.readInt() == 1) {}
      for (;;)
      {
        c = bool;
        return;
        bool = false;
      }
    }
    
    public SavedState(SavedState paramSavedState)
    {
      a = a;
      b = b;
      c = c;
    }
    
    final boolean a()
    {
      return a >= 0;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
      if (c) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
  
  final class a
  {
    int a;
    int b;
    boolean c;
    
    a() {}
    
    final void a()
    {
      if (c) {}
      for (int i = j.c();; i = j.b())
      {
        b = i;
        return;
      }
    }
    
    public final void a(View paramView)
    {
      if (c) {}
      for (b = (j.b(paramView) + j.a());; b = j.a(paramView))
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
  
  public static final class b
  {
    public int a;
    public boolean b;
    public boolean c;
    public boolean d;
  }
  
  static final class c
  {
    boolean a = true;
    int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h = 0;
    boolean i = false;
    List<RecyclerView.s> j = null;
    
    final View a(RecyclerView.l paraml)
    {
      int m;
      if (j != null)
      {
        int i1 = j.size();
        int k = Integer.MAX_VALUE;
        m = 0;
        paraml = null;
        if (m < i1)
        {
          RecyclerView.s locals = (RecyclerView.s)j.get(m);
          if ((!i) && (locals.m())) {
            break label158;
          }
          int n = (locals.c() - d) * e;
          if ((n < 0) || (n >= k)) {
            break label158;
          }
          paraml = locals;
          if (n != 0)
          {
            paraml = locals;
            k = n;
          }
        }
      }
      label158:
      for (;;)
      {
        m += 1;
        break;
        if (paraml != null)
        {
          d = (paraml.c() + e);
          return a;
        }
        return null;
        paraml = paraml.b(d);
        d += e;
        return paraml;
      }
    }
    
    final boolean a(RecyclerView.p paramp)
    {
      return (d >= 0) && (d < paramp.a());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
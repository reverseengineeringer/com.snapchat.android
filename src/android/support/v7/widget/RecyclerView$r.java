package android.support.v7.widget;

import ad;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ScrollerCompat;
import android.support.v4.widget.ScrollerCompat.ScrollerCompatImpl;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

final class RecyclerView$r
  implements Runnable
{
  int a;
  int b;
  ScrollerCompat c;
  private Interpolator e = RecyclerView.h();
  private boolean f = false;
  private boolean g = false;
  
  public RecyclerView$r(RecyclerView paramRecyclerView)
  {
    c = ScrollerCompat.create(paramRecyclerView.getContext(), RecyclerView.h());
  }
  
  final void a()
  {
    if (f)
    {
      g = true;
      return;
    }
    ViewCompat.postOnAnimation(d, this);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    int k = Math.abs(paramInt1);
    int m = Math.abs(paramInt2);
    int n;
    int i1;
    if (k > m)
    {
      j = 1;
      n = (int)Math.sqrt(0.0D);
      i1 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (j == 0) {
        break label155;
      }
    }
    label155:
    for (int i = d.getWidth();; i = d.getHeight())
    {
      int i2 = i / 2;
      float f3 = Math.min(1.0F, i1 * 1.0F / i);
      float f1 = i2;
      float f2 = i2;
      f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
      if (n <= 0) {
        break label167;
      }
      i = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / n)) * 4;
      a(paramInt1, paramInt2, Math.min(i, 2000));
      return;
      j = 0;
      break;
    }
    label167:
    if (j != 0) {}
    for (int j = k;; j = m)
    {
      i = (int)((j / i + 1.0F) * 300.0F);
      break;
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3, RecyclerView.h());
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    if (e != paramInterpolator)
    {
      e = paramInterpolator;
      c = ScrollerCompat.create(d.getContext(), paramInterpolator);
    }
    RecyclerView.b(d, 2);
    b = 0;
    a = 0;
    c.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
    a();
  }
  
  public final void run()
  {
    g = false;
    f = true;
    RecyclerView.f(d);
    ScrollerCompat localScrollerCompat = c;
    RecyclerView.o localo = ed).r;
    int i4;
    int i5;
    int n;
    int m;
    int i1;
    int j;
    int i;
    int k;
    int i2;
    Object localObject;
    if (localScrollerCompat.computeScrollOffset())
    {
      i4 = localScrollerCompat.getCurrX();
      i5 = localScrollerCompat.getCurrY();
      int i6 = i4 - a;
      int i7 = i5 - b;
      n = 0;
      i3 = 0;
      m = 0;
      i1 = 0;
      a = i4;
      b = i5;
      j = 0;
      i = 0;
      k = 0;
      i2 = 0;
      if (RecyclerView.g(d) != null)
      {
        d.a();
        RecyclerView.a(d, true);
        j = i3;
        if (i6 != 0)
        {
          j = RecyclerView.e(d).a(i6, d.a, d.m);
          i = i6 - j;
        }
        k = i2;
        m = i1;
        if (i7 != 0)
        {
          m = RecyclerView.e(d).b(i7, d.a, d.m);
          k = i7 - m;
        }
        if (RecyclerView.h(d))
        {
          i1 = d.c.a();
          n = 0;
          if (n < i1)
          {
            View localView = d.c.b(n);
            localObject = d.a(localView);
            if ((localObject != null) && (h != null)) {
              if (h == null) {
                break label381;
              }
            }
            label381:
            for (localObject = h.a;; localObject = null)
            {
              if (localObject != null)
              {
                i2 = localView.getLeft();
                i3 = localView.getTop();
                if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
                  ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
                }
              }
              n += 1;
              break;
            }
          }
        }
        if ((localo != null) && (!b) && (c))
        {
          n = d.m.a();
          if (n != 0) {
            break label811;
          }
          localo.a();
        }
        RecyclerView.a(d, false);
        d.a(false);
        n = j;
        j = i;
      }
      if ((i6 != n) || (i7 != m)) {
        break label838;
      }
      i1 = 1;
      label469:
      if (!RecyclerView.i(d).isEmpty()) {
        d.invalidate();
      }
      if (ViewCompat.getOverScrollMode(d) != 2) {
        RecyclerView.a(d, i6, i7);
      }
      if ((j != 0) || (k != 0))
      {
        i2 = (int)mImpl.getCurrVelocity(mScroller);
        if (j == i4) {
          break label929;
        }
        if (j >= 0) {
          break label844;
        }
        i = -i2;
      }
    }
    label551:
    label568:
    label607:
    label627:
    label811:
    label838:
    label844:
    label871:
    label895:
    label929:
    for (int i3 = i;; i3 = 0)
    {
      if (k != i5) {
        if (k < 0) {
          i = -i2;
        }
      }
      for (;;)
      {
        if (ViewCompat.getOverScrollMode(d) != 2)
        {
          localObject = d;
          if (i3 >= 0) {
            break label871;
          }
          ((RecyclerView)localObject).b();
          g.onAbsorb(-i3);
          if (i >= 0) {
            break label895;
          }
          ((RecyclerView)localObject).d();
          h.onAbsorb(-i);
          if ((i3 != 0) || (i != 0)) {
            ViewCompat.postInvalidateOnAnimation((View)localObject);
          }
        }
        if (((i3 != 0) || (j == i4) || (localScrollerCompat.getFinalX() == 0)) && ((i != 0) || (k == i5) || (localScrollerCompat.getFinalY() == 0))) {
          localScrollerCompat.abortAnimation();
        }
        if ((n != 0) || (m != 0))
        {
          RecyclerView.j(d);
          if (RecyclerView.k(d) != null) {
            RecyclerView.k(d).a(d, n, m);
          }
        }
        if (!RecyclerView.l(d)) {
          d.invalidate();
        }
        if ((mImpl.isFinished(mScroller)) || (i1 == 0)) {
          RecyclerView.b(d, 0);
        }
        for (;;)
        {
          if ((localo != null) && (b)) {
            RecyclerView.o.a(localo);
          }
          f = false;
          if (g) {
            a();
          }
          return;
          if (a >= n) {
            a = (n - 1);
          }
          RecyclerView.o.a(localo);
          break;
          i1 = 0;
          break label469;
          if (j > 0)
          {
            i = i2;
            break label551;
          }
          i = 0;
          break label551;
          i = i2;
          if (k > 0) {
            break label568;
          }
          i = 0;
          break label568;
          if (i3 <= 0) {
            break label607;
          }
          ((RecyclerView)localObject).c();
          i.onAbsorb(i3);
          break label607;
          if (i <= 0) {
            break label627;
          }
          ((RecyclerView)localObject).e();
          j.onAbsorb(i);
          break label627;
          a();
        }
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
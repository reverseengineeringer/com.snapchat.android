package android.support.v7.widget;

import ac;
import ac.a;
import ac.b;
import ad;
import ad.a;
import ad.b;
import ae;
import ai;
import android.content.Context;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.util.ArrayMap;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.support.v4.widget.ScrollerCompat;
import android.support.v4.widget.ScrollerCompat.ScrollerCompatImpl;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import r;

public class RecyclerView
  extends ViewGroup
{
  private static final Interpolator ab;
  private static final boolean p;
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D;
  private boolean E;
  private final boolean F;
  private final AccessibilityManager G;
  private boolean H = false;
  private boolean I = false;
  private int J = 0;
  private int K = -1;
  private VelocityTracker L;
  private int M;
  private int N;
  private int O;
  private int P;
  private int Q;
  private final int R;
  private final int S;
  private j T;
  private RecyclerView.d.a U = new e((byte)0);
  private boolean V = false;
  private ai W;
  public final l a = new l();
  private Runnable aa = new Runnable()
  {
    public final void run()
    {
      if (k != null) {
        k.a();
      }
      RecyclerView.d(RecyclerView.this);
    }
  };
  ac b;
  public ad c;
  final List<View> d = new ArrayList();
  a e;
  public final ArrayList<i> f = new ArrayList();
  EdgeEffectCompat g;
  EdgeEffectCompat h;
  EdgeEffectCompat i;
  EdgeEffectCompat j;
  d k = new ae();
  final r l = new r();
  public final p m = new p();
  boolean n = false;
  boolean o = false;
  private final n q = new n((byte)0);
  private SavedState r;
  private boolean s;
  private final Runnable t = new Runnable()
  {
    public final void run()
    {
      if (!RecyclerView.a(RecyclerView.this)) {}
      do
      {
        return;
        if (RecyclerView.b(RecyclerView.this))
        {
          g();
          return;
        }
      } while (!b.d());
      a();
      b.b();
      if (!RecyclerView.c(RecyclerView.this))
      {
        RecyclerView localRecyclerView = RecyclerView.this;
        int j = c.a();
        int i = 0;
        if (i < j)
        {
          RecyclerView.s locals = RecyclerView.b(c.b(i));
          if ((locals != null) && (!locals.b()))
          {
            if ((!locals.m()) && (!locals.i())) {
              break label146;
            }
            localRecyclerView.requestLayout();
          }
          for (;;)
          {
            i += 1;
            break;
            label146:
            if (locals.j())
            {
              int k = e.a(b);
              if (e == k)
              {
                if ((!locals.k()) || (!localRecyclerView.f())) {
                  e.b(locals, b);
                } else {
                  localRecyclerView.requestLayout();
                }
              }
              else
              {
                locals.a(4);
                localRecyclerView.requestLayout();
              }
            }
          }
        }
      }
      a(true);
    }
  };
  private final Rect u = new Rect();
  private h v;
  private m w;
  private final ArrayList<f> x = new ArrayList();
  private i y;
  private boolean z;
  
  static
  {
    if ((Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      ab = new Interpolator()
      {
        public final float getInterpolation(float paramAnonymousFloat)
        {
          paramAnonymousFloat -= 1.0F;
          return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
        }
      };
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (Build.VERSION.SDK_INT >= 16) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      F = bool1;
      paramContext = ViewConfiguration.get(paramContext);
      Q = paramContext.getScaledTouchSlop();
      R = paramContext.getScaledMinimumFlingVelocity();
      S = paramContext.getScaledMaximumFlingVelocity();
      bool1 = bool2;
      if (ViewCompat.getOverScrollMode(this) == 2) {
        bool1 = true;
      }
      setWillNotDraw(bool1);
      k.h = U;
      b = new ac(new ac.a()
      {
        private void c(ac.b paramAnonymousb)
        {
          switch (a)
          {
          default: 
            return;
          case 0: 
            RecyclerView.e(RecyclerView.this).a(b, c);
            return;
          case 1: 
            RecyclerView.e(RecyclerView.this).b(b, c);
            return;
          case 2: 
            RecyclerView.e(RecyclerView.this).c(b, c);
            return;
          }
          RecyclerView.e(RecyclerView.this).d(b, c);
        }
        
        public final RecyclerView.s a(int paramAnonymousInt)
        {
          return a(paramAnonymousInt, true);
        }
        
        public final void a(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          a(paramAnonymousInt1, paramAnonymousInt2, true);
          n = true;
          RecyclerView.p localp = m;
          g += paramAnonymousInt2;
        }
        
        public final void a(ac.b paramAnonymousb)
        {
          c(paramAnonymousb);
        }
        
        public final void b(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          a(paramAnonymousInt1, paramAnonymousInt2, false);
          n = true;
        }
        
        public final void b(ac.b paramAnonymousb)
        {
          c(paramAnonymousb);
        }
        
        public final void c(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          int j = 0;
          Object localObject1 = RecyclerView.this;
          int k = c.b();
          int i = 0;
          Object localObject2;
          while (i < k)
          {
            localObject2 = c.c(i);
            RecyclerView.s locals = RecyclerView.b((View)localObject2);
            if ((locals != null) && (!locals.b()) && (b >= paramAnonymousInt1) && (b < paramAnonymousInt1 + paramAnonymousInt2))
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
              if ((j >= paramAnonymousInt1) && (j < paramAnonymousInt1 + paramAnonymousInt2)) {
                ((RecyclerView.s)localObject2).a(2);
              }
            }
            i += 1;
          }
          o = true;
        }
        
        public final void d(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          RecyclerView localRecyclerView = RecyclerView.this;
          int j = c.b();
          int i = 0;
          while (i < j)
          {
            localObject = RecyclerView.b(c.c(i));
            if ((localObject != null) && (!((RecyclerView.s)localObject).b()) && (b >= paramAnonymousInt1))
            {
              ((RecyclerView.s)localObject).a(paramAnonymousInt2, false);
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
            if ((locals != null) && (locals.c() >= paramAnonymousInt1)) {
              locals.a(paramAnonymousInt2, true);
            }
            i += 1;
          }
          localRecyclerView.requestLayout();
          n = true;
        }
        
        public final void e(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          int n = -1;
          RecyclerView localRecyclerView = RecyclerView.this;
          int i1 = c.b();
          int i;
          int j;
          int k;
          int m;
          if (paramAnonymousInt1 < paramAnonymousInt2)
          {
            i = -1;
            j = paramAnonymousInt2;
            k = paramAnonymousInt1;
            m = 0;
            label35:
            if (m >= i1) {
              break label139;
            }
            localObject = RecyclerView.b(c.c(m));
            if ((localObject != null) && (b >= k) && (b <= j))
            {
              if (b != paramAnonymousInt1) {
                break label129;
              }
              ((RecyclerView.s)localObject).a(paramAnonymousInt2 - paramAnonymousInt1, false);
            }
          }
          for (;;)
          {
            m.h = true;
            m += 1;
            break label35;
            i = 1;
            j = paramAnonymousInt1;
            k = paramAnonymousInt2;
            break;
            label129:
            ((RecyclerView.s)localObject).a(i, false);
          }
          label139:
          Object localObject = a;
          label173:
          RecyclerView.s locals;
          if (paramAnonymousInt1 < paramAnonymousInt2)
          {
            j = paramAnonymousInt2;
            k = paramAnonymousInt1;
            i = n;
            n = c.size();
            m = 0;
            if (m >= n) {
              break label268;
            }
            locals = (RecyclerView.s)c.get(m);
            if ((locals != null) && (b >= k) && (b <= j))
            {
              if (b != paramAnonymousInt1) {
                break label258;
              }
              locals.a(paramAnonymousInt2 - paramAnonymousInt1, false);
            }
          }
          for (;;)
          {
            m += 1;
            break label173;
            i = 1;
            j = paramAnonymousInt1;
            k = paramAnonymousInt2;
            break;
            label258:
            locals.a(i, false);
          }
          label268:
          localRecyclerView.requestLayout();
          RecyclerView.this.n = true;
        }
      });
      c = new ad(new ad.b()
      {
        public final int a()
        {
          return getChildCount();
        }
        
        public final int a(View paramAnonymousView)
        {
          return indexOfChild(paramAnonymousView);
        }
        
        public final void a(int paramAnonymousInt)
        {
          View localView = getChildAt(paramAnonymousInt);
          if (localView != null) {
            RecyclerView.b(RecyclerView.this, localView);
          }
          removeViewAt(paramAnonymousInt);
        }
        
        public final void a(View paramAnonymousView, int paramAnonymousInt)
        {
          addView(paramAnonymousView, paramAnonymousInt);
          RecyclerView.a(RecyclerView.this, paramAnonymousView);
        }
        
        public final void a(View paramAnonymousView, int paramAnonymousInt, ViewGroup.LayoutParams paramAnonymousLayoutParams)
        {
          RecyclerView.s locals = RecyclerView.b(paramAnonymousView);
          if (locals != null)
          {
            if ((!locals.n()) && (!locals.b())) {
              throw new IllegalArgumentException("Called attach on a child which is not detached: " + locals);
            }
            locals.h();
          }
          RecyclerView.a(RecyclerView.this, paramAnonymousView, paramAnonymousInt, paramAnonymousLayoutParams);
        }
        
        public final RecyclerView.s b(View paramAnonymousView)
        {
          return RecyclerView.b(paramAnonymousView);
        }
        
        public final View b(int paramAnonymousInt)
        {
          return getChildAt(paramAnonymousInt);
        }
        
        public final void b()
        {
          int j = getChildCount();
          int i = 0;
          while (i < j)
          {
            RecyclerView.b(RecyclerView.this, b(i));
            i += 1;
          }
          removeAllViews();
        }
        
        public final void c(int paramAnonymousInt)
        {
          Object localObject = b(paramAnonymousInt);
          if (localObject != null)
          {
            localObject = RecyclerView.b((View)localObject);
            if (localObject != null)
            {
              if ((((RecyclerView.s)localObject).n()) && (!((RecyclerView.s)localObject).b())) {
                throw new IllegalArgumentException("called detach on an already detached child " + localObject);
              }
              ((RecyclerView.s)localObject).a(256);
            }
          }
          RecyclerView.a(RecyclerView.this, paramAnonymousInt);
        }
      });
      if (ViewCompat.getImportantForAccessibility(this) == 0) {
        ViewCompat.setImportantForAccessibility(this, 1);
      }
      G = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new ai(this));
      return;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    j();
    int i2;
    int i1;
    int i3;
    int i4;
    if (e != null)
    {
      a();
      I = true;
      if (paramInt1 != 0)
      {
        i2 = v.a(paramInt1, a, m);
        i1 = paramInt1 - i2;
        if (paramInt2 != 0)
        {
          i3 = v.b(paramInt2, a, m);
          i4 = paramInt2 - i3;
          label75:
          if (f())
          {
            i6 = c.a();
            i5 = 0;
            if (i5 < i6)
            {
              View localView = c.b(i5);
              Object localObject = a(localView);
              if ((localObject != null) && (h != null))
              {
                localObject = h;
                if (localObject == null) {
                  break label225;
                }
              }
              label225:
              for (localObject = a;; localObject = null)
              {
                if (localObject != null)
                {
                  int i7 = localView.getLeft();
                  int i8 = localView.getTop();
                  if ((i7 != ((View)localObject).getLeft()) || (i8 != ((View)localObject).getTop())) {
                    ((View)localObject).layout(i7, i8, ((View)localObject).getWidth() + i7, ((View)localObject).getHeight() + i8);
                  }
                }
                i5 += 1;
                break;
              }
            }
          }
          I = false;
          a(false);
          int i5 = i4;
          int i6 = i2;
          i4 = i1;
          i2 = i5;
          i1 = i6;
        }
      }
    }
    for (;;)
    {
      if (!x.isEmpty()) {
        invalidate();
      }
      if (ViewCompat.getOverScrollMode(this) != 2)
      {
        b(paramInt1, paramInt2);
        if (i4 >= 0) {
          break label402;
        }
        b();
        g.onPull(-i4 / getWidth());
        if (i2 >= 0) {
          break label431;
        }
        d();
        h.onPull(-i2 / getHeight());
      }
      for (;;)
      {
        if ((i4 != 0) || (i2 != 0)) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        if ((i1 != 0) || (i3 != 0))
        {
          onScrollChanged(0, 0, 0, 0);
          if (T != null) {
            T.a(this, i1, i3);
          }
        }
        if (!awakenScrollBars()) {
          invalidate();
        }
        return;
        label402:
        if (i4 <= 0) {
          break;
        }
        c();
        i.onPull(i4 / getWidth());
        break;
        label431:
        if (i2 > 0)
        {
          e();
          j.onPull(i2 / getHeight());
        }
      }
      i3 = 0;
      i4 = 0;
      break label75;
      i2 = 0;
      i1 = 0;
      break;
      i3 = 0;
      i1 = 0;
      i2 = 0;
      i4 = 0;
    }
  }
  
  private void a(ArrayMap<View, Rect> paramArrayMap)
  {
    int i2 = d.size();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = (View)d.get(i1);
      s locals = b(localView);
      g localg = (g)m.b.remove(locals);
      if (!m.i) {
        m.c.remove(locals);
      }
      if (paramArrayMap.remove(localView) != null) {
        v.a(localView, a);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (localg != null) {
          a(localg);
        } else {
          a(new g(locals, localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
        }
      }
    }
    d.clear();
  }
  
  private void a(a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (e != null) {
      e.b(q);
    }
    if ((!paramBoolean1) || (paramBoolean2))
    {
      if (k != null) {
        k.d();
      }
      if (v != null)
      {
        v.c(a);
        v.b(a);
      }
    }
    b.a();
    a locala = e;
    e = parama;
    if (parama != null) {
      parama.a(q);
    }
    Object localObject = a;
    parama = e;
    ((l)localObject).a();
    localObject = ((l)localObject).b();
    if (locala != null) {
      ((k)localObject).b();
    }
    if ((!paramBoolean1) && (b == 0)) {
      a.clear();
    }
    if (parama != null) {
      ((k)localObject).a();
    }
    m.h = true;
    t();
  }
  
  private void a(g paramg)
  {
    View localView = a.a;
    a(a);
    int i1 = b;
    int i2 = c;
    int i3 = localView.getLeft();
    int i4 = localView.getTop();
    if ((i1 != i3) || (i2 != i4))
    {
      a.a(false);
      localView.layout(i3, i4, localView.getWidth() + i3, localView.getHeight() + i4);
      if (k.a(a, i1, i2, i3, i4)) {
        p();
      }
      return;
    }
    a.a(false);
    k.a(a);
    p();
  }
  
  private void a(s params)
  {
    View localView = a;
    if (localView.getParent() == this) {}
    for (int i1 = 1;; i1 = 0)
    {
      a.b(a(localView));
      if (!params.n()) {
        break;
      }
      c.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      c.a(localView, -1, true);
      return;
    }
    params = c;
    i1 = a.a(localView);
    if (i1 < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + localView);
    }
    b.a(i1);
    c.add(localView);
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i1) == K) {
      if (i1 != 0) {
        break label75;
      }
    }
    label75:
    for (i1 = 1;; i1 = 0)
    {
      K = MotionEventCompat.getPointerId(paramMotionEvent, i1);
      int i2 = (int)(MotionEventCompat.getX(paramMotionEvent, i1) + 0.5F);
      O = i2;
      M = i2;
      i1 = (int)(MotionEventCompat.getY(paramMotionEvent, i1) + 0.5F);
      P = i1;
      N = i1;
      return;
    }
  }
  
  private long b(s params)
  {
    if (e.b) {
      return d;
    }
    return b;
  }
  
  static s b(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsc;
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (g != null)
    {
      bool1 = bool2;
      if (!g.isFinished())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = g.onRelease();
        }
      }
    }
    bool2 = bool1;
    if (i != null)
    {
      bool2 = bool1;
      if (!i.isFinished())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | i.onRelease();
        }
      }
    }
    bool1 = bool2;
    if (h != null)
    {
      bool1 = bool2;
      if (!h.isFinished())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | h.onRelease();
        }
      }
    }
    bool2 = bool1;
    if (j != null)
    {
      bool2 = bool1;
      if (!j.isFinished())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | j.onRelease();
        }
      }
    }
    if (bool2) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public static int c(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null) {
      return paramView.c();
    }
    return -1;
  }
  
  private void e(View paramView)
  {
    if (e != null) {
      b(paramView);
    }
  }
  
  private void j()
  {
    t.run();
  }
  
  private void k()
  {
    setScrollState(0);
    l();
  }
  
  private void l()
  {
    r localr = l;
    d.removeCallbacks(localr);
    c.abortAnimation();
    v.s();
  }
  
  private void m()
  {
    boolean bool2 = false;
    if (g != null) {
      bool2 = g.onRelease();
    }
    boolean bool1 = bool2;
    if (h != null) {
      bool1 = bool2 | h.onRelease();
    }
    bool2 = bool1;
    if (i != null) {
      bool2 = bool1 | i.onRelease();
    }
    bool1 = bool2;
    if (j != null) {
      bool1 = bool2 | j.onRelease();
    }
    if (bool1) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private void n()
  {
    j = null;
    h = null;
    i = null;
    g = null;
  }
  
  private void o()
  {
    if (L != null) {
      L.clear();
    }
    m();
    setScrollState(0);
  }
  
  private void p()
  {
    if ((!V) && (z))
    {
      ViewCompat.postOnAnimation(this, aa);
      V = true;
    }
  }
  
  private void q()
  {
    boolean bool2 = true;
    if (H)
    {
      b.a();
      t();
      v.a();
    }
    int i1;
    label88:
    p localp;
    if ((k != null) && (v.c()))
    {
      b.b();
      if (((!n) || (o)) && (!n) && ((!o) || (!f()))) {
        break label223;
      }
      i1 = 1;
      localp = m;
      if ((!B) || (k == null) || ((!H) && (i1 == 0) && (!h.a(v))) || ((H) && (!e.b))) {
        break label228;
      }
      bool1 = true;
      label148:
      j = bool1;
      localp = m;
      if ((!m.j) || (i1 == 0) || (H)) {
        break label238;
      }
      if ((k == null) || (!v.c())) {
        break label233;
      }
      i1 = 1;
      label200:
      if (i1 == 0) {
        break label238;
      }
    }
    label223:
    label228:
    label233:
    label238:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      k = bool1;
      return;
      b.e();
      break;
      i1 = 0;
      break label88;
      bool1 = false;
      break label148;
      i1 = 0;
      break label200;
    }
  }
  
  private void r()
  {
    int i2 = 0;
    int i3 = c.b();
    int i1 = 0;
    while (i1 < i3)
    {
      c.c(i1).getLayoutParams()).e = true;
      i1 += 1;
    }
    l locall = a;
    i3 = c.size();
    i1 = i2;
    while (i1 < i3)
    {
      LayoutParams localLayoutParams = (LayoutParams)c.get(i1)).a.getLayoutParams();
      if (localLayoutParams != null) {
        e = true;
      }
      i1 += 1;
    }
  }
  
  private void s()
  {
    int i2 = 0;
    int i3 = c.b();
    int i1 = 0;
    while (i1 < i3)
    {
      localObject = b(c.c(i1));
      if (!((s)localObject).b()) {
        ((s)localObject).a();
      }
      i1 += 1;
    }
    Object localObject = a;
    i3 = c.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((s)c.get(i1)).a();
      i1 += 1;
    }
    i3 = a.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((s)a.get(i1)).a();
      i1 += 1;
    }
    if (b != null)
    {
      i3 = b.size();
      i1 = i2;
      while (i1 < i3)
      {
        ((s)b.get(i1)).a();
        i1 += 1;
      }
    }
  }
  
  private void setScrollState(int paramInt)
  {
    if (paramInt == J) {
      return;
    }
    J = paramInt;
    if (paramInt != 2) {
      l();
    }
    if (T != null) {
      T.a(this, paramInt);
    }
    v.f(paramInt);
  }
  
  private void t()
  {
    int i2 = c.b();
    int i1 = 0;
    while (i1 < i2)
    {
      localObject = b(c.c(i1));
      if ((localObject != null) && (!((s)localObject).b())) {
        ((s)localObject).a(6);
      }
      i1 += 1;
    }
    r();
    Object localObject = a;
    if ((h.e != null) && (h.e.b))
    {
      i2 = c.size();
      i1 = 0;
    }
    while (i1 < i2)
    {
      s locals = (s)c.get(i1);
      if (locals != null) {
        locals.a(6);
      }
      i1 += 1;
      continue;
      i1 = c.size() - 1;
      while (i1 >= 0)
      {
        if (!((l)localObject).c(i1)) {
          ((s)c.get(i1)).a(6);
        }
        i1 -= 1;
      }
    }
  }
  
  public final s a(int paramInt, boolean paramBoolean)
  {
    int i2 = c.b();
    int i1 = 0;
    while (i1 < i2)
    {
      s locals = b(c.c(i1));
      if ((locals != null) && (!locals.m())) {
        if (paramBoolean)
        {
          if (b != paramInt) {}
        }
        else {
          while (locals.c() == paramInt) {
            return locals;
          }
        }
      }
      i1 += 1;
    }
    return null;
  }
  
  public final s a(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return b(paramView);
  }
  
  final void a()
  {
    if (!C)
    {
      C = true;
      D = false;
    }
  }
  
  public final void a(int paramInt)
  {
    k();
    v.b(paramInt);
    awakenScrollBars();
  }
  
  final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = c.b();
    int i1 = 0;
    if (i1 < i2)
    {
      localObject = b(c.c(i1));
      if ((localObject != null) && (!((s)localObject).b()))
      {
        if (b < paramInt1 + paramInt2) {
          break label82;
        }
        ((s)localObject).a(-paramInt2, paramBoolean);
        m.h = true;
      }
      for (;;)
      {
        i1 += 1;
        break;
        label82:
        if (b >= paramInt1)
        {
          int i3 = -paramInt2;
          ((s)localObject).a(8);
          ((s)localObject).a(i3, paramBoolean);
          b = (paramInt1 - 1);
          m.h = true;
        }
      }
    }
    Object localObject = a;
    i1 = c.size() - 1;
    if (i1 >= 0)
    {
      s locals = (s)c.get(i1);
      if (locals != null)
      {
        if (locals.c() < paramInt1 + paramInt2) {
          break label200;
        }
        locals.a(-paramInt2, paramBoolean);
      }
      for (;;)
      {
        i1 -= 1;
        break;
        label200:
        if ((locals.c() >= paramInt1) && (!((l)localObject).c(i1))) {
          locals.a(4);
        }
      }
    }
    requestLayout();
  }
  
  public final void a(a parama)
  {
    a(parama, true, false);
    H = true;
    requestLayout();
  }
  
  public final void a(f paramf)
  {
    if (v != null) {
      v.a("Cannot add item decoration during a scroll  or layout");
    }
    if (x.isEmpty()) {
      setWillNotDraw(false);
    }
    x.add(paramf);
    r();
    requestLayout();
  }
  
  final void a(String paramString)
  {
    if (I)
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  final void a(boolean paramBoolean)
  {
    if (C)
    {
      if ((paramBoolean) && (D) && (v != null) && (e != null)) {
        g();
      }
      C = false;
      D = false;
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    super.addFocusables(paramArrayList, paramInt1, paramInt2);
  }
  
  public final s b(int paramInt)
  {
    return a(paramInt, false);
  }
  
  final void b()
  {
    if (g != null) {
      return;
    }
    g = new EdgeEffectCompat(getContext());
    if (s)
    {
      g.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    g.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  final void c()
  {
    if (i != null) {
      return;
    }
    i = new EdgeEffectCompat(getContext());
    if (s)
    {
      i.setSize(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    i.setSize(getMeasuredHeight(), getMeasuredWidth());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (v.a((LayoutParams)paramLayoutParams));
  }
  
  protected int computeHorizontalScrollExtent()
  {
    if (v.e()) {
      return v.c(m);
    }
    return 0;
  }
  
  protected int computeHorizontalScrollOffset()
  {
    if (v.e()) {
      return v.a(m);
    }
    return 0;
  }
  
  protected int computeHorizontalScrollRange()
  {
    if (v.e()) {
      return v.e(m);
    }
    return 0;
  }
  
  protected int computeVerticalScrollExtent()
  {
    if (v.f()) {
      return v.d(m);
    }
    return 0;
  }
  
  protected int computeVerticalScrollOffset()
  {
    if (v.f()) {
      return v.b(m);
    }
    return 0;
  }
  
  protected int computeVerticalScrollRange()
  {
    if (v.f()) {
      return v.f(m);
    }
    return 0;
  }
  
  final Rect d(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!e) {
      return d;
    }
    Rect localRect = d;
    localRect.set(0, 0, 0, 0);
    int i2 = x.size();
    int i1 = 0;
    while (i1 < i2)
    {
      u.set(0, 0, 0, 0);
      ((f)x.get(i1)).a(u, paramView, this, m);
      left += u.left;
      top += u.top;
      right += u.right;
      bottom += u.bottom;
      i1 += 1;
    }
    e = false;
    return localRect;
  }
  
  final void d()
  {
    if (h != null) {
      return;
    }
    h = new EdgeEffectCompat(getContext());
    if (s)
    {
      h.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    h.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i3 = 1;
    int i4 = 0;
    super.draw(paramCanvas);
    int i2 = x.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((f)x.get(i1)).a(paramCanvas, this, m);
      i1 += 1;
    }
    int i5;
    if ((g != null) && (!g.isFinished()))
    {
      i5 = paramCanvas.save();
      if (s)
      {
        i1 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i1 + -getHeight(), 0.0F);
        if ((g == null) || (!g.draw(paramCanvas))) {
          break label456;
        }
        i2 = 1;
        label128:
        paramCanvas.restoreToCount(i5);
      }
    }
    for (;;)
    {
      i1 = i2;
      if (h != null)
      {
        i1 = i2;
        if (!h.isFinished())
        {
          i5 = paramCanvas.save();
          if (s) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((h == null) || (!h.draw(paramCanvas))) {
            break label461;
          }
          i1 = 1;
          label202:
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      i2 = i1;
      if (i != null)
      {
        i2 = i1;
        if (!i.isFinished())
        {
          i5 = paramCanvas.save();
          int i6 = getWidth();
          if (!s) {
            break label466;
          }
          i2 = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i2, -i6);
          if ((i == null) || (!i.draw(paramCanvas))) {
            break label471;
          }
          i2 = 1;
          label295:
          i2 = i1 | i2;
          paramCanvas.restoreToCount(i5);
        }
      }
      i1 = i2;
      if (j != null)
      {
        i1 = i2;
        if (!j.isFinished())
        {
          i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!s) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i1 = i4;
          if (j != null)
          {
            i1 = i4;
            if (j.draw(paramCanvas)) {
              i1 = 1;
            }
          }
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      if ((i1 == 0) && (k != null) && (x.size() > 0) && (k.b())) {
        i1 = i3;
      }
      for (;;)
      {
        if (i1 != 0) {
          ViewCompat.postInvalidateOnAnimation(this);
        }
        return;
        i1 = 0;
        break;
        label456:
        i2 = 0;
        break label128;
        label461:
        i1 = 0;
        break label202;
        label466:
        i2 = 0;
        break label257;
        label471:
        i2 = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      i2 = 0;
    }
  }
  
  final void e()
  {
    if (j != null) {
      return;
    }
    j = new EdgeEffectCompat(getContext());
    if (s)
    {
      j.setSize(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    j.setSize(getMeasuredWidth(), getMeasuredHeight());
  }
  
  final boolean f()
  {
    return (k != null) && (k.m);
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    View localView2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
    View localView1 = localView2;
    if (localView2 == null)
    {
      localView1 = localView2;
      if (e != null)
      {
        a();
        localView1 = v.c(paramInt, a, m);
        a(false);
      }
    }
    if (localView1 != null) {
      return localView1;
    }
    return super.focusSearch(paramView, paramInt);
  }
  
  final void g()
  {
    if (e == null) {
      return;
    }
    d.clear();
    a();
    I = true;
    q();
    Object localObject2 = m;
    if ((m.j) && (o) && (f())) {}
    int i1;
    for (Object localObject1 = new ArrayMap();; localObject1 = null)
    {
      d = ((ArrayMap)localObject1);
      o = false;
      n = false;
      m.i = m.k;
      m.e = e.a();
      if (!m.j) {
        break;
      }
      m.b.clear();
      m.c.clear();
      i2 = c.a();
      i1 = 0;
      while (i1 < i2)
      {
        localObject1 = b(c.b(i1));
        if ((!((s)localObject1).b()) && ((!((s)localObject1).i()) || (e.b)))
        {
          localObject2 = a;
          m.b.put(localObject1, new g((s)localObject1, ((View)localObject2).getLeft(), ((View)localObject2).getTop(), ((View)localObject2).getRight(), ((View)localObject2).getBottom()));
        }
        i1 += 1;
      }
    }
    long l1;
    boolean bool;
    if (m.k)
    {
      i2 = c.b();
      i1 = 0;
      while (i1 < i2)
      {
        localObject1 = b(c.c(i1));
        if ((!((s)localObject1).b()) && (c == -1)) {
          c = b;
        }
        i1 += 1;
      }
      if (m.d != null)
      {
        i2 = c.a();
        i1 = 0;
        while (i1 < i2)
        {
          localObject1 = b(c.b(i1));
          if ((((s)localObject1).k()) && (!((s)localObject1).m()) && (!((s)localObject1).b()))
          {
            l1 = b((s)localObject1);
            m.d.put(Long.valueOf(l1), localObject1);
            m.b.remove(localObject1);
          }
          i1 += 1;
        }
      }
      bool = m.h;
      m.h = false;
      v.c(a, m);
      m.h = bool;
      localObject2 = new ArrayMap();
      i1 = 0;
      if (i1 < c.a())
      {
        localObject1 = c.b(i1);
        if (!b((View)localObject1).b())
        {
          i2 = 0;
          label526:
          if (i2 >= m.b.size()) {
            break label1847;
          }
          if (m.b.keyAt(i2)).a != localObject1) {
            break label610;
          }
        }
      }
    }
    label610:
    label748:
    label758:
    label967:
    label973:
    label1018:
    label1240:
    label1316:
    label1322:
    label1522:
    label1714:
    label1748:
    label1841:
    label1847:
    for (int i2 = 1;; i2 = 0)
    {
      if (i2 == 0) {
        ((ArrayMap)localObject2).put(localObject1, new Rect(((View)localObject1).getLeft(), ((View)localObject1).getTop(), ((View)localObject1).getRight(), ((View)localObject1).getBottom()));
      }
      i1 += 1;
      break;
      i2 += 1;
      break label526;
      s();
      b.c();
      for (;;)
      {
        m.e = e.a();
        m.g = 0;
        m.i = false;
        v.c(a, m);
        m.h = false;
        r = null;
        localObject1 = m;
        Object localObject3;
        Object localObject4;
        if ((m.j) && (k != null))
        {
          bool = true;
          j = bool;
          if (!m.j) {
            break label1748;
          }
          if (m.d == null) {
            break label967;
          }
          localObject1 = new ArrayMap();
          i2 = c.a();
          i1 = 0;
          if (i1 >= i2) {
            break label1018;
          }
          localObject3 = b(c.b(i1));
          if (!((s)localObject3).b())
          {
            localObject4 = a;
            l1 = b((s)localObject3);
            if ((localObject1 == null) || (m.d.get(Long.valueOf(l1)) == null)) {
              break label973;
            }
            ((ArrayMap)localObject1).put(Long.valueOf(l1), localObject3);
          }
        }
        for (;;)
        {
          i1 += 1;
          break label758;
          s();
          b.e();
          if (m.d == null) {
            break label1841;
          }
          i2 = c.a();
          i1 = 0;
          while (i1 < i2)
          {
            localObject1 = b(c.b(i1));
            if ((((s)localObject1).k()) && (!((s)localObject1).m()) && (!((s)localObject1).b()))
            {
              l1 = b((s)localObject1);
              m.d.put(Long.valueOf(l1), localObject1);
              m.b.remove(localObject1);
            }
            i1 += 1;
          }
          bool = false;
          break;
          localObject1 = null;
          break label748;
          m.c.put(localObject3, new g((s)localObject3, ((View)localObject4).getLeft(), ((View)localObject4).getTop(), ((View)localObject4).getRight(), ((View)localObject4).getBottom()));
        }
        a((ArrayMap)localObject2);
        i1 = m.b.size() - 1;
        while (i1 >= 0)
        {
          localObject3 = (s)m.b.keyAt(i1);
          if (!m.c.containsKey(localObject3))
          {
            localObject3 = (g)m.b.valueAt(i1);
            m.b.removeAt(i1);
            a.b(a);
            a((g)localObject3);
          }
          i1 -= 1;
        }
        i1 = m.c.size();
        int i3;
        if (i1 > 0)
        {
          i1 -= 1;
          if (i1 >= 0)
          {
            localObject4 = (s)m.c.keyAt(i1);
            g localg = (g)m.c.valueAt(i1);
            if ((m.b.isEmpty()) || (!m.b.containsKey(localObject4)))
            {
              m.c.removeAt(i1);
              if (localObject2 == null) {
                break label1316;
              }
              localObject3 = (Rect)((ArrayMap)localObject2).get(a);
              i2 = b;
              i3 = c;
              if ((localObject3 == null) || ((left == i2) && (top == i3))) {
                break label1322;
              }
              ((s)localObject4).a(false);
              if (k.a((s)localObject4, left, top, i2, i3)) {
                p();
              }
            }
            for (;;)
            {
              i1 -= 1;
              break;
              localObject3 = null;
              break label1240;
              ((s)localObject4).a(false);
              k.b((s)localObject4);
              p();
            }
          }
        }
        i2 = m.c.size();
        i1 = 0;
        while (i1 < i2)
        {
          localObject2 = (s)m.c.keyAt(i1);
          localObject3 = (g)m.c.valueAt(i1);
          localObject4 = (g)m.b.get(localObject2);
          if ((localObject4 != null) && (localObject3 != null) && ((b != b) || (c != c)))
          {
            ((s)localObject2).a(false);
            if (k.a((s)localObject2, b, c, b, c)) {
              p();
            }
          }
          i1 += 1;
        }
        int i4;
        int i5;
        if (m.d != null)
        {
          i1 = m.d.size();
          i1 -= 1;
          if (i1 < 0) {
            break label1748;
          }
          l1 = ((Long)m.d.keyAt(i1)).longValue();
          localObject2 = (s)m.d.get(Long.valueOf(l1));
          if ((!((s)localObject2).b()) && (a.b != null) && (a.b.contains(localObject2)))
          {
            localObject3 = (s)((ArrayMap)localObject1).get(Long.valueOf(l1));
            ((s)localObject2).a(false);
            a((s)localObject2);
            g = ((s)localObject3);
            a.b((s)localObject2);
            i4 = a.getLeft();
            i5 = a.getTop();
            if ((localObject3 != null) && (!((s)localObject3).b())) {
              break label1714;
            }
            i3 = i5;
            i2 = i4;
          }
        }
        for (;;)
        {
          k.a((s)localObject2, (s)localObject3, i4, i5, i2, i3);
          p();
          i1 -= 1;
          break label1522;
          i1 = 0;
          break;
          i2 = a.getLeft();
          i3 = a.getTop();
          ((s)localObject3).a(false);
          h = ((s)localObject2);
        }
        a(false);
        v.b(a);
        m.f = m.e;
        H = false;
        m.j = false;
        m.k = false;
        I = false;
        h.b(v);
        if (a.b != null) {
          a.b.clear();
        }
        m.d = null;
        return;
        localObject2 = null;
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (v == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return v.b();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (v == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return v.a(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (v == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return v.a(paramLayoutParams);
  }
  
  public a getAdapter()
  {
    return e;
  }
  
  public ai getCompatAccessibilityDelegate()
  {
    return W;
  }
  
  public d getItemAnimator()
  {
    return k;
  }
  
  public h getLayoutManager()
  {
    return v;
  }
  
  public k getRecycledViewPool()
  {
    return a.b();
  }
  
  public int getScrollState()
  {
    return J;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    z = true;
    B = false;
    V = false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (k != null) {
      k.d();
    }
    B = false;
    k();
    z = false;
    if (v != null) {
      v.a(this, a);
    }
    removeCallbacks(aa);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = x.size();
    int i1 = 0;
    while (i1 < i2)
    {
      x.get(i1);
      i1 += 1;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0)) {
      y = null;
    }
    int i4 = f.size();
    int i1 = 0;
    if (i1 < i4)
    {
      i locali = (i)f.get(i1);
      if ((locali.a(paramMotionEvent)) && (i2 != 3)) {
        y = locali;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0) {
        break label98;
      }
      o();
      return true;
      i1 += 1;
      break;
    }
    label98:
    boolean bool1 = v.e();
    boolean bool2 = v.f();
    if (L == null) {
      L = VelocityTracker.obtain();
    }
    L.addMovement(paramMotionEvent);
    i2 = MotionEventCompat.getActionMasked(paramMotionEvent);
    i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    label192:
    int i5;
    switch (i2)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
    case 2: 
      for (;;)
      {
        if (J != 1)
        {
          return false;
          K = MotionEventCompat.getPointerId(paramMotionEvent, 0);
          i1 = (int)(paramMotionEvent.getX() + 0.5F);
          O = i1;
          M = i1;
          i1 = (int)(paramMotionEvent.getY() + 0.5F);
          P = i1;
          N = i1;
          if (J == 2)
          {
            getParent().requestDisallowInterceptTouchEvent(true);
            setScrollState(1);
            continue;
            K = MotionEventCompat.getPointerId(paramMotionEvent, i1);
            i2 = (int)(MotionEventCompat.getX(paramMotionEvent, i1) + 0.5F);
            O = i2;
            M = i2;
            i1 = (int)(MotionEventCompat.getY(paramMotionEvent, i1) + 0.5F);
            P = i1;
            N = i1;
            continue;
            i2 = MotionEventCompat.findPointerIndex(paramMotionEvent, K);
            if (i2 < 0)
            {
              new StringBuilder("Error processing scroll; pointer index for id ").append(K).append(" not found. Did any MotionEvents get skipped?");
              return false;
            }
            i1 = (int)(MotionEventCompat.getX(paramMotionEvent, i2) + 0.5F);
            i2 = (int)(MotionEventCompat.getY(paramMotionEvent, i2) + 0.5F);
            if (J != 1)
            {
              i1 -= M;
              i4 = i2 - N;
              if ((!bool1) || (Math.abs(i1) <= Q)) {
                break label569;
              }
              i2 = M;
              i5 = Q;
              if (i1 < 0)
              {
                i1 = -1;
                label448:
                O = (i1 * i5 + i2);
              }
            }
          }
        }
      }
    }
    label539:
    label569:
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2)
      {
        i2 = i1;
        if (Math.abs(i4) > Q)
        {
          i2 = N;
          i5 = Q;
          if (i4 >= 0) {
            break label539;
          }
        }
      }
      for (i1 = i3;; i1 = 1)
      {
        P = (i2 + i1 * i5);
        i2 = 1;
        if (i2 == 0) {
          break;
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
        break;
        i1 = 1;
        break label448;
      }
      a(paramMotionEvent);
      break label192;
      L.clear();
      break label192;
      o();
      break label192;
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a();
    g();
    a(false);
    B = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (E)
    {
      a();
      q();
      if (m.k)
      {
        m.i = true;
        E = false;
        a(false);
      }
    }
    else
    {
      if (e == null) {
        break label202;
      }
    }
    label202:
    for (m.e = e.a();; m.e = 0)
    {
      h localh = v;
      int i2 = View.MeasureSpec.getMode(paramInt1);
      int i1 = View.MeasureSpec.getMode(paramInt2);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      switch (i2)
      {
      default: 
        paramInt1 = ViewCompat.getMinimumWidth(q);
      }
      switch (i1)
      {
      default: 
        paramInt2 = ViewCompat.getMinimumHeight(q);
      }
      q.setMeasuredDimension(paramInt1, paramInt2);
      m.i = false;
      return;
      b.e();
      m.i = false;
      break;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    r = ((SavedState)paramParcelable);
    super.onRestoreInstanceState(r.getSuperState());
    if ((v != null) && (r.a != null)) {
      v.a(r.a);
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (r != null)
    {
      SavedState.a(localSavedState, r);
      return localSavedState;
    }
    if (v != null)
    {
      a = v.d();
      return localSavedState;
    }
    a = null;
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      n();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = 0;
    int i1 = paramMotionEvent.getAction();
    if (y != null)
    {
      if (i1 == 0) {
        y = null;
      }
    }
    else
    {
      if (i1 == 0) {
        break label127;
      }
      i2 = f.size();
      i1 = 0;
      if (i1 >= i2) {
        break label127;
      }
      i locali = (i)f.get(i1);
      if (!locali.a(paramMotionEvent)) {
        break label118;
      }
      y = locali;
      i1 = 1;
    }
    for (;;)
    {
      if (i1 == 0) {
        break label133;
      }
      o();
      return true;
      if ((i1 == 3) || (i1 == 1)) {
        y = null;
      }
      i1 = 1;
      continue;
      label118:
      i1 += 1;
      break;
      label127:
      i1 = 0;
    }
    label133:
    boolean bool1 = v.e();
    boolean bool2 = v.f();
    if (L == null) {
      L = VelocityTracker.obtain();
    }
    L.addMovement(paramMotionEvent);
    int i2 = MotionEventCompat.getActionMasked(paramMotionEvent);
    i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    int i4;
    int i5;
    int i6;
    int i7;
    switch (i2)
    {
    case 4: 
    default: 
      return true;
    case 0: 
      K = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      O = i1;
      M = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      P = i1;
      N = i1;
      return true;
    case 5: 
      K = MotionEventCompat.getPointerId(paramMotionEvent, i1);
      i2 = (int)(MotionEventCompat.getX(paramMotionEvent, i1) + 0.5F);
      O = i2;
      M = i2;
      i1 = (int)(MotionEventCompat.getY(paramMotionEvent, i1) + 0.5F);
      P = i1;
      N = i1;
      return true;
    case 2: 
      i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, K);
      if (i1 < 0)
      {
        new StringBuilder("Error processing scroll; pointer index for id ").append(K).append(" not found. Did any MotionEvents get skipped?");
        return false;
      }
      i4 = (int)(MotionEventCompat.getX(paramMotionEvent, i1) + 0.5F);
      i5 = (int)(MotionEventCompat.getY(paramMotionEvent, i1) + 0.5F);
      if (J != 1)
      {
        i1 = i4 - M;
        i6 = i5 - N;
        if ((!bool1) || (Math.abs(i1) <= Q)) {
          break label928;
        }
        i2 = M;
        i7 = Q;
        if (i1 >= 0) {
          break label646;
        }
        i1 = -1;
        O = (i1 * i7 + i2);
      }
      break;
    }
    label539:
    label646:
    label652:
    label658:
    label722:
    label911:
    label916:
    label928:
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2)
      {
        i2 = i1;
        if (Math.abs(i6) > Q)
        {
          i2 = N;
          i7 = Q;
          if (i6 >= 0) {
            break label652;
          }
          i1 = -1;
          P = (i1 * i7 + i2);
          i2 = 1;
        }
      }
      if (i2 != 0)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      if (J == 1)
      {
        i1 = O;
        i6 = P;
        if (!bool1) {
          break label658;
        }
      }
      for (i1 = -(i4 - i1);; i1 = 0)
      {
        i2 = i3;
        if (bool2) {
          i2 = -(i5 - i6);
        }
        a(i1, i2);
        O = i4;
        P = i5;
        return true;
        i1 = 1;
        break;
        i1 = 1;
        break label539;
      }
      a(paramMotionEvent);
      return true;
      L.computeCurrentVelocity(1000, S);
      float f1;
      float f2;
      if (bool1)
      {
        f1 = -VelocityTrackerCompat.getXVelocity(L, K);
        if (!bool2) {
          break label911;
        }
        f2 = -VelocityTrackerCompat.getYVelocity(L, K);
        if ((f1 != 0.0F) || (f2 != 0.0F))
        {
          i2 = (int)f1;
          i3 = (int)f2;
          i1 = i2;
          if (Math.abs(i2) < R) {
            i1 = 0;
          }
          i2 = i3;
          if (Math.abs(i3) < R) {
            i2 = 0;
          }
          i1 = Math.max(-S, Math.min(i1, S));
          i2 = Math.max(-S, Math.min(i2, S));
          if ((i1 == 0) && (i2 == 0)) {
            break label916;
          }
          paramMotionEvent = l;
          d.setScrollState(2);
          b = 0;
          a = 0;
          c.fling(0, 0, i1, i2, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
          paramMotionEvent.a();
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          setScrollState(0);
        }
        L.clear();
        m();
        return true;
        f1 = 0.0F;
        break;
        f2 = 0.0F;
        break label722;
      }
      o();
      return true;
    }
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    s locals = b(paramView);
    if (locals != null)
    {
      if (!locals.n()) {
        break label32;
      }
      locals.h();
    }
    label32:
    while (locals.b())
    {
      e(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + locals);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    boolean bool = true;
    int i1;
    Rect localRect;
    if ((v.k()) || (I))
    {
      i1 = 1;
      if ((i1 == 0) && (paramView2 != null))
      {
        u.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
        offsetDescendantRectToMyCoords(paramView2, u);
        offsetRectIntoDescendantCoords(paramView1, u);
        localRect = u;
        if (B) {
          break label100;
        }
      }
    }
    for (;;)
    {
      requestChildRectangleOnScreen(paramView1, localRect, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
      i1 = 0;
      break;
      label100:
      bool = false;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    h localh = v;
    int i2 = localh.o();
    int i4 = localh.p();
    int i3 = localh.m();
    int i8 = localh.q();
    int i1 = localh.n();
    int i5 = localh.r();
    int i9 = paramView.getLeft() + left;
    int i6 = paramView.getTop() + top;
    int i10 = paramRect.width();
    int i7 = paramRect.height();
    i2 = Math.min(0, i9 - i2);
    i4 = Math.min(0, i6 - i4);
    i3 = Math.max(0, i10 + i9 - (i3 - i8));
    i5 = Math.max(0, i7 + i6 - (i1 - i5));
    if (ViewCompat.getLayoutDirection(this) == 1) {
      if (i3 != 0)
      {
        i1 = i3;
        if (i4 == 0) {
          break label211;
        }
        i2 = i4;
        label164:
        if ((i1 == 0) && (i2 == 0)) {
          break label242;
        }
        if (!paramBoolean) {
          break label218;
        }
        scrollBy(i1, i2);
      }
    }
    for (;;)
    {
      return true;
      i1 = i2;
      break;
      i1 = i2;
      if (i2 != 0) {
        break;
      }
      i1 = i3;
      break;
      label211:
      i2 = i5;
      break label164;
      label218:
      if ((i1 != 0) || (i2 != 0)) {
        l.a(i1, i2);
      }
    }
    label242:
    return false;
  }
  
  public void requestLayout()
  {
    if (!C)
    {
      super.requestLayout();
      return;
    }
    D = true;
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (v == null) {
      throw new IllegalStateException("Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    boolean bool1 = v.e();
    boolean bool2 = v.f();
    if ((bool1) || (bool2))
    {
      if (!bool1) {
        break label60;
      }
      if (!bool2) {
        break label65;
      }
    }
    for (;;)
    {
      a(paramInt1, paramInt2);
      return;
      label60:
      paramInt1 = 0;
      break;
      label65:
      paramInt2 = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
  }
  
  public void setAccessibilityDelegateCompat(ai paramai)
  {
    W = paramai;
    ViewCompat.setAccessibilityDelegate(this, W);
  }
  
  public void setAdapter(a parama)
  {
    a(parama, false, true);
    requestLayout();
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != s) {
      n();
    }
    s = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (B) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    A = paramBoolean;
  }
  
  public void setItemAnimator(d paramd)
  {
    if (k != null)
    {
      k.d();
      k.h = null;
    }
    k = paramd;
    if (k != null) {
      k.h = U;
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    l locall = a;
    e = paramInt;
    int i1 = c.size() - 1;
    while ((i1 >= 0) && (c.size() > paramInt))
    {
      locall.c(i1);
      i1 -= 1;
    }
    while (c.size() > paramInt) {
      c.remove(c.size() - 1);
    }
  }
  
  public void setLayoutManager(h paramh)
  {
    if (paramh == v) {
      return;
    }
    if (v != null)
    {
      if (z) {
        v.a(this, a);
      }
      v.a(null);
    }
    a.a();
    ad localad = c;
    a.b();
    for (ad.a locala = b;; locala = b)
    {
      a = 0L;
      if (b == null) {
        break;
      }
    }
    c.clear();
    v = paramh;
    if (paramh != null)
    {
      if (q != null) {
        throw new IllegalArgumentException("LayoutManager " + paramh + " is already attached to a RecyclerView: " + q);
      }
      v.a(this);
    }
    requestLayout();
  }
  
  public void setOnScrollListener(j paramj)
  {
    T = paramj;
  }
  
  public void setRecycledViewPool(k paramk)
  {
    l locall = a;
    if (f != null) {
      f.b();
    }
    f = paramk;
    if (paramk != null)
    {
      paramk = f;
      h.getAdapter();
      paramk.a();
    }
  }
  
  public void setRecyclerListener(m paramm)
  {
    w = paramm;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      new StringBuilder("setScrollingTouchSlop(): bad argument constant ").append(paramInt).append("; using default value");
    case 0: 
      Q = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    Q = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
  }
  
  public void setViewCacheExtension(q paramq)
  {
    a.g = paramq;
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public RecyclerView.s c;
    final Rect d = new Rect();
    boolean e = true;
    boolean f = false;
    
    public LayoutParams()
    {
      super(-2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
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
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
    Parcelable a;
    
    SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readParcelable(RecyclerView.h.class.getClassLoader());
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeParcelable(a, 0);
    }
  }
  
  public static abstract class a<VH extends RecyclerView.s>
  {
    public final RecyclerView.b a = new RecyclerView.b();
    public boolean b = false;
    
    public abstract int a();
    
    public int a(int paramInt)
    {
      return 0;
    }
    
    public abstract VH a(ViewGroup paramViewGroup, int paramInt);
    
    public final void a(RecyclerView.c paramc)
    {
      a.registerObserver(paramc);
    }
    
    public abstract void a(VH paramVH, int paramInt);
    
    public long b(int paramInt)
    {
      return -1L;
    }
    
    public final void b(RecyclerView.c paramc)
    {
      a.unregisterObserver(paramc);
    }
    
    public final void b(VH paramVH, int paramInt)
    {
      b = paramInt;
      if (b) {
        d = b(paramInt);
      }
      a(paramVH, paramInt);
      paramVH.a(1, 7);
    }
    
    public final void c(int paramInt)
    {
      a.a(paramInt, 1);
    }
    
    public final void d(int paramInt)
    {
      a.b(paramInt);
    }
  }
  
  public static final class b
    extends Observable<RecyclerView.c>
  {
    public final void a(int paramInt)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)mObservers.get(i)).a(paramInt);
        i -= 1;
      }
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)mObservers.get(i)).a(paramInt1, paramInt2);
        i -= 1;
      }
    }
    
    public final boolean a()
    {
      return !mObservers.isEmpty();
    }
    
    public final void b()
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)mObservers.get(i)).a();
        i -= 1;
      }
    }
    
    public final void b(int paramInt)
    {
      int i = mObservers.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.c)mObservers.get(i)).b(paramInt);
        i -= 1;
      }
    }
  }
  
  public static abstract class c
  {
    public void a() {}
    
    public void a(int paramInt) {}
    
    public void a(int paramInt1, int paramInt2) {}
    
    public void b(int paramInt) {}
  }
  
  public static abstract class d
  {
    private ArrayList<Object> a = new ArrayList();
    a h = null;
    public long i = 120L;
    public long j = 120L;
    public long k = 250L;
    public long l = 250L;
    boolean m = false;
    
    public abstract void a();
    
    public abstract boolean a(RecyclerView.s params);
    
    public abstract boolean a(RecyclerView.s params, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract boolean a(RecyclerView.s params1, RecyclerView.s params2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    
    public abstract boolean b();
    
    public abstract boolean b(RecyclerView.s params);
    
    public abstract void c(RecyclerView.s params);
    
    public abstract void d();
    
    public final void d(RecyclerView.s params)
    {
      if (h != null) {
        h.a(params);
      }
    }
    
    public final void e()
    {
      int i1 = a.size();
      int n = 0;
      while (n < i1)
      {
        a.get(n);
        n += 1;
      }
      a.clear();
    }
    
    public final void e(RecyclerView.s params)
    {
      if (h != null) {
        h.c(params);
      }
    }
    
    public final void f(RecyclerView.s params)
    {
      if (h != null) {
        h.b(params);
      }
    }
    
    public final void g(RecyclerView.s params)
    {
      if (h != null) {
        h.d(params);
      }
    }
    
    static abstract interface a
    {
      public abstract void a(RecyclerView.s params);
      
      public abstract void b(RecyclerView.s params);
      
      public abstract void c(RecyclerView.s params);
      
      public abstract void d(RecyclerView.s params);
    }
  }
  
  final class e
    implements RecyclerView.d.a
  {
    private e() {}
    
    public final void a(RecyclerView.s params)
    {
      params.a(true);
      if ((!RecyclerView.e(RecyclerView.this, a)) && (params.n())) {
        removeDetachedView(a, false);
      }
    }
    
    public final void b(RecyclerView.s params)
    {
      params.a(true);
      if (params.p()) {
        RecyclerView.e(RecyclerView.this, a);
      }
    }
    
    public final void c(RecyclerView.s params)
    {
      params.a(true);
      if (params.p()) {
        RecyclerView.e(RecyclerView.this, a);
      }
    }
    
    public final void d(RecyclerView.s params)
    {
      params.a(true);
      if ((g != null) && (h == null))
      {
        g = null;
        params.a(-65, i);
      }
      h = null;
      if (params.p()) {
        RecyclerView.e(RecyclerView.this, a);
      }
    }
  }
  
  public static abstract class f
  {
    public void a(Canvas paramCanvas, RecyclerView paramRecyclerView, RecyclerView.p paramp) {}
    
    public void a(Rect paramRect, View paramView, RecyclerView paramRecyclerView, RecyclerView.p paramp)
    {
      paramView.getLayoutParams();
      paramRect.set(0, 0, 0, 0);
    }
  }
  
  static final class g
  {
    RecyclerView.s a;
    int b;
    int c;
    int d;
    int e;
    
    g(RecyclerView.s params, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a = params;
      b = paramInt1;
      c = paramInt2;
      d = paramInt3;
      e = paramInt4;
    }
  }
  
  public static abstract class h
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
  
  public static abstract interface i
  {
    public abstract boolean a(MotionEvent paramMotionEvent);
  }
  
  public static abstract class j
  {
    public void a(RecyclerView paramRecyclerView, int paramInt) {}
    
    public void a(RecyclerView paramRecyclerView, int paramInt1, int paramInt2) {}
  }
  
  public static final class k
  {
    SparseArray<ArrayList<RecyclerView.s>> a = new SparseArray();
    int b = 0;
    private SparseIntArray c = new SparseIntArray();
    
    final void a()
    {
      b += 1;
    }
    
    public final void a(RecyclerView.s params)
    {
      int i = e;
      ArrayList localArrayList2 = (ArrayList)a.get(i);
      ArrayList localArrayList1 = localArrayList2;
      if (localArrayList2 == null)
      {
        localArrayList2 = new ArrayList();
        a.put(i, localArrayList2);
        localArrayList1 = localArrayList2;
        if (c.indexOfKey(i) < 0)
        {
          c.put(i, 5);
          localArrayList1 = localArrayList2;
        }
      }
      if (c.get(i) <= localArrayList1.size()) {
        return;
      }
      params.o();
      localArrayList1.add(params);
    }
    
    final void b()
    {
      b -= 1;
    }
  }
  
  public final class l
  {
    final ArrayList<RecyclerView.s> a = new ArrayList();
    ArrayList<RecyclerView.s> b = null;
    final ArrayList<RecyclerView.s> c = new ArrayList();
    final List<RecyclerView.s> d = Collections.unmodifiableList(a);
    int e = 2;
    RecyclerView.k f;
    RecyclerView.q g;
    
    public l() {}
    
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
            if ((locals.m()) && (!m.i)) {
              locals.a(2, 14);
            }
            return locals;
          }
          a.remove(i);
          removeDetachedView(a, false);
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
      if (RecyclerView.u(RecyclerView.this) != null) {
        RecyclerView.u(RecyclerView.this);
      }
      if (RecyclerView.g(RecyclerView.this) != null) {
        RecyclerView.g(RecyclerView.this);
      }
      if (m != null) {
        m.a(params);
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
      if (gb)
      {
        paramInt = b.a(paramInt, 0);
        if ((paramInt > 0) && (paramInt < RecyclerView.g(RecyclerView.this).a()))
        {
          long l = RecyclerView.g(RecyclerView.this).b(paramInt);
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
        if ((!((RecyclerView.s)localObject).f()) && (((RecyclerView.s)localObject).c() == paramInt) && (!((RecyclerView.s)localObject).i()) && ((m.i) || (!((RecyclerView.s)localObject).m())))
        {
          ((RecyclerView.s)localObject).a(32);
          return (RecyclerView.s)localObject;
        }
        i += 1;
      }
      ad localad = c;
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
            RecyclerView.this.k.c(a((View)localObject));
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
      if ((paramInt < 0) || (paramInt >= m.a())) {
        throw new IndexOutOfBoundsException("invalid position " + paramInt + ". State item count is " + m.a());
      }
      if (!m.i) {
        return paramInt;
      }
      return b.a(paramInt);
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
          if (!m.i)
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
      m.a(params);
    }
    
    public final void a(View paramView)
    {
      RecyclerView.s locals = RecyclerView.b(paramView);
      if (locals.n()) {
        removeDetachedView(paramView, false);
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
      if ((paramInt < 0) || (paramInt >= m.a())) {
        throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + m.a());
      }
      Object localObject2;
      int i;
      if (m.i)
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
            if ((b < 0) || (b >= RecyclerView.g(RecyclerView.this).a()))
            {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + localObject2);
              i = 0;
              break;
            }
            if ((m.i) || (RecyclerView.g(RecyclerView.this).a(b) == e)) {
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
            removeDetachedView(a, false);
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
            j = b.a(paramInt);
            if ((j < 0) || (j >= RecyclerView.g(RecyclerView.this).a()))
            {
              throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + j + ").state:" + m.a());
              label372:
              if ((gb) && (d != RecyclerView.g(RecyclerView.this).b(b)))
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
            int k = RecyclerView.g(RecyclerView.this).a(j);
            if (gb)
            {
              localObject2 = a(RecyclerView.g(RecyclerView.this).b(j), k);
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
                      localObject2 = a(localView);
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
                  k = RecyclerView.g(RecyclerView.this).a(j);
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
                    localObject1 = RecyclerView.g(RecyclerView.this);
                    localObject2 = RecyclerView.this;
                    j = RecyclerView.g(RecyclerView.this).a(j);
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
          if ((m.i) && (((RecyclerView.s)localObject2).l()))
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
              localObject1 = (RecyclerView.LayoutParams)generateDefaultLayoutParams();
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
              j = b.a(paramInt);
              RecyclerView.g(RecyclerView.this).b((RecyclerView.s)localObject2, j);
              localObject1 = a;
              if ((RecyclerView.s(RecyclerView.this) != null) && (RecyclerView.s(RecyclerView.this).isEnabled()))
              {
                if (ViewCompat.getImportantForAccessibility((View)localObject1) == 0) {
                  ViewCompat.setImportantForAccessibility((View)localObject1, 1);
                }
                if (!ViewCompat.hasAccessibilityDelegate((View)localObject1)) {
                  ViewCompat.setAccessibilityDelegate((View)localObject1, tb);
                }
              }
              if (m.i) {
                f = paramInt;
              }
              paramInt = 1;
              break label808;
              if (!checkLayoutParams((ViewGroup.LayoutParams)localObject1))
              {
                localObject1 = (RecyclerView.LayoutParams)generateLayoutParams((ViewGroup.LayoutParams)localObject1);
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
      if ((!params.k()) || (!RecyclerView.h(RecyclerView.this)) || (b == null)) {
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
  
  public static abstract interface m {}
  
  final class n
    extends RecyclerView.c
  {
    private n() {}
    
    private void b()
    {
      if ((RecyclerView.n(RecyclerView.this)) && (RecyclerView.o(RecyclerView.this)) && (RecyclerView.p(RecyclerView.this)))
      {
        ViewCompat.postOnAnimation(RecyclerView.this, RecyclerView.q(RecyclerView.this));
        return;
      }
      RecyclerView.r(RecyclerView.this);
      requestLayout();
    }
    
    public final void a()
    {
      a(null);
      if (gb)
      {
        m.h = true;
        RecyclerView.m(RecyclerView.this);
      }
      for (;;)
      {
        if (!b.d()) {
          requestLayout();
        }
        return;
        m.h = true;
        RecyclerView.m(RecyclerView.this);
      }
    }
    
    public final void a(int paramInt)
    {
      int i = 1;
      a(null);
      ac localac = b;
      a.add(localac.a(0, paramInt, 1));
      if (a.size() == 1) {}
      for (paramInt = i;; paramInt = 0)
      {
        if (paramInt != 0) {
          b();
        }
        return;
      }
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      int i = 1;
      a(null);
      ac localac = b;
      a.add(localac.a(2, paramInt1, paramInt2));
      if (a.size() == 1) {}
      for (paramInt1 = i;; paramInt1 = 0)
      {
        if (paramInt1 != 0) {
          b();
        }
        return;
      }
    }
    
    public final void b(int paramInt)
    {
      int i = 1;
      a(null);
      ac localac = b;
      a.add(localac.a(1, paramInt, 1));
      if (a.size() == 1) {}
      for (paramInt = i;; paramInt = 0)
      {
        if (paramInt != 0) {
          b();
        }
        return;
      }
    }
  }
  
  public static abstract class o
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
  
  public static final class p
  {
    int a = -1;
    ArrayMap<RecyclerView.s, RecyclerView.g> b = new ArrayMap();
    ArrayMap<RecyclerView.s, RecyclerView.g> c = new ArrayMap();
    ArrayMap<Long, RecyclerView.s> d = new ArrayMap();
    int e = 0;
    int f = 0;
    int g = 0;
    boolean h = false;
    boolean i = false;
    boolean j = false;
    boolean k = false;
    private SparseArray<Object> l;
    
    public final int a()
    {
      if (i) {
        return f - g;
      }
      return e;
    }
    
    public final void a(RecyclerView.s params)
    {
      b.remove(params);
      c.remove(params);
      ArrayMap localArrayMap;
      int m;
      if (d != null)
      {
        localArrayMap = d;
        m = localArrayMap.size() - 1;
      }
      for (;;)
      {
        if (m >= 0)
        {
          if (params == localArrayMap.valueAt(m)) {
            localArrayMap.removeAt(m);
          }
        }
        else {
          return;
        }
        m -= 1;
      }
    }
    
    public final String toString()
    {
      return "State{mTargetPosition=" + a + ", mPreLayoutHolderMap=" + b + ", mPostLayoutHolderMap=" + c + ", mData=" + l + ", mItemCount=" + e + ", mPreviousLayoutItemCount=" + f + ", mDeletedInvisibleItemCountSincePreviousLayout=" + g + ", mStructureChanged=" + h + ", mInPreLayout=" + i + ", mRunSimpleAnimations=" + j + ", mRunPredictiveAnimations=" + k + '}';
    }
  }
  
  public static abstract class q
  {
    public abstract View a();
  }
  
  final class r
    implements Runnable
  {
    int a;
    int b;
    ScrollerCompat c = ScrollerCompat.create(getContext(), RecyclerView.h());
    private Interpolator e = RecyclerView.h();
    private boolean f = false;
    private boolean g = false;
    
    public r() {}
    
    final void a()
    {
      if (f)
      {
        g = true;
        return;
      }
      ViewCompat.postOnAnimation(RecyclerView.this, this);
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
      for (int i = getWidth();; i = getHeight())
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
        c = ScrollerCompat.create(getContext(), paramInterpolator);
      }
      RecyclerView.b(RecyclerView.this, 2);
      b = 0;
      a = 0;
      c.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
      a();
    }
    
    public final void run()
    {
      g = false;
      f = true;
      RecyclerView.f(RecyclerView.this);
      ScrollerCompat localScrollerCompat = c;
      RecyclerView.o localo = er;
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
        if (RecyclerView.g(RecyclerView.this) != null)
        {
          RecyclerView.this.a();
          RecyclerView.a(RecyclerView.this, true);
          j = i3;
          if (i6 != 0)
          {
            j = RecyclerView.e(RecyclerView.this).a(i6, a, RecyclerView.this.m);
            i = i6 - j;
          }
          k = i2;
          m = i1;
          if (i7 != 0)
          {
            m = RecyclerView.e(RecyclerView.this).b(i7, a, RecyclerView.this.m);
            k = i7 - m;
          }
          if (RecyclerView.h(RecyclerView.this))
          {
            i1 = c.a();
            n = 0;
            if (n < i1)
            {
              View localView = c.b(n);
              localObject = a(localView);
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
            n = RecyclerView.this.m.a();
            if (n != 0) {
              break label811;
            }
            localo.a();
          }
          RecyclerView.a(RecyclerView.this, false);
          a(false);
          n = j;
          j = i;
        }
        if ((i6 != n) || (i7 != m)) {
          break label838;
        }
        i1 = 1;
        label469:
        if (!RecyclerView.i(RecyclerView.this).isEmpty()) {
          invalidate();
        }
        if (ViewCompat.getOverScrollMode(RecyclerView.this) != 2) {
          RecyclerView.a(RecyclerView.this, i6, i7);
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
          if (ViewCompat.getOverScrollMode(RecyclerView.this) != 2)
          {
            localObject = RecyclerView.this;
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
            RecyclerView.j(RecyclerView.this);
            if (RecyclerView.k(RecyclerView.this) != null) {
              RecyclerView.k(RecyclerView.this).a(RecyclerView.this, n, m);
            }
          }
          if (!RecyclerView.l(RecyclerView.this)) {
            invalidate();
          }
          if ((mImpl.isFinished(mScroller)) || (i1 == 0)) {
            RecyclerView.b(RecyclerView.this, 0);
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
  
  public static abstract class s
  {
    public final View a;
    int b = -1;
    int c = -1;
    long d = -1L;
    int e = -1;
    int f = -1;
    s g = null;
    s h = null;
    int i;
    RecyclerView.l j = null;
    private int k = 0;
    
    public s(View paramView)
    {
      if (paramView == null) {
        throw new IllegalArgumentException("itemView may not be null");
      }
      a = paramView;
    }
    
    final void a()
    {
      c = -1;
      f = -1;
    }
    
    final void a(int paramInt)
    {
      i |= paramInt;
    }
    
    final void a(int paramInt1, int paramInt2)
    {
      i = (i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
    }
    
    final void a(int paramInt, boolean paramBoolean)
    {
      if (c == -1) {
        c = b;
      }
      if (f == -1) {
        f = b;
      }
      if (paramBoolean) {
        f += paramInt;
      }
      b += paramInt;
      if (a.getLayoutParams() != null) {
        a.getLayoutParams()).e = true;
      }
    }
    
    public final void a(boolean paramBoolean)
    {
      int m;
      if (paramBoolean)
      {
        m = k - 1;
        k = m;
        if (k >= 0) {
          break label53;
        }
        k = 0;
        new StringBuilder("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ").append(this);
      }
      label53:
      do
      {
        return;
        m = k + 1;
        break;
        if ((!paramBoolean) && (k == 1))
        {
          i |= 0x10;
          return;
        }
      } while ((!paramBoolean) || (k != 0));
      i &= 0xFFFFFFEF;
    }
    
    final boolean b()
    {
      return (i & 0x80) != 0;
    }
    
    public final int c()
    {
      if (f == -1) {
        return b;
      }
      return f;
    }
    
    final boolean d()
    {
      return j != null;
    }
    
    final void e()
    {
      j.b(this);
    }
    
    final boolean f()
    {
      return (i & 0x20) != 0;
    }
    
    final void g()
    {
      i &= 0xFFFFFFDF;
    }
    
    final void h()
    {
      i &= 0xFEFF;
    }
    
    final boolean i()
    {
      return (i & 0x4) != 0;
    }
    
    final boolean j()
    {
      return (i & 0x2) != 0;
    }
    
    final boolean k()
    {
      return (i & 0x40) != 0;
    }
    
    final boolean l()
    {
      return (i & 0x1) != 0;
    }
    
    final boolean m()
    {
      return (i & 0x8) != 0;
    }
    
    final boolean n()
    {
      return (i & 0x100) != 0;
    }
    
    final void o()
    {
      i = 0;
      b = -1;
      c = -1;
      d = -1L;
      f = -1;
      k = 0;
      g = null;
      h = null;
    }
    
    public final boolean p()
    {
      return ((i & 0x10) == 0) && (!ViewCompat.hasTransientState(a));
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + b + " id=" + d + ", oldPos=" + c + ", pLpos:" + f);
      if (d()) {
        localStringBuilder.append(" scrap");
      }
      if (i()) {
        localStringBuilder.append(" invalid");
      }
      if (!l()) {
        localStringBuilder.append(" unbound");
      }
      if (j()) {
        localStringBuilder.append(" update");
      }
      if (m()) {
        localStringBuilder.append(" removed");
      }
      if (b()) {
        localStringBuilder.append(" ignored");
      }
      if (k()) {
        localStringBuilder.append(" changed");
      }
      if (n()) {
        localStringBuilder.append(" tmpDetached");
      }
      if (!p()) {
        localStringBuilder.append(" not recyclable(" + k + ")");
      }
      if (a.getParent() == null) {
        localStringBuilder.append(" no parent");
      }
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
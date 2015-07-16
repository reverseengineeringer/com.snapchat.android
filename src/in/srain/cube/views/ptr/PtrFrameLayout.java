package in.srain.cube.views.ptr;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowManager;
import android.widget.Scroller;
import android.widget.TextView;
import bvs;
import bvt;
import bvu;
import bvv;
import bvw.d;
import bvz;
import in.srain.cube.util.CLog;

public class PtrFrameLayout
  extends ViewGroup
{
  public static boolean a = false;
  private static int g = 1;
  private static byte h = 1;
  private static byte i = 2;
  private boolean A;
  private int B;
  private int C;
  private boolean D;
  private boolean E;
  private MotionEvent F;
  private MotionEvent G;
  private bvv H;
  private int I;
  private long J;
  protected final String b;
  protected View c;
  protected int d;
  boolean e;
  public boolean f;
  private int j;
  private int k;
  private float l;
  private int m;
  private int n;
  private float o;
  private boolean p;
  private View q;
  private bvu r;
  private bvs s;
  private a t;
  private PointF u;
  private int v;
  private int w;
  private int x;
  private int y;
  private byte z;
  
  public PtrFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PtrFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public PtrFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = new StringBuilder("ptr-frame-");
    paramInt = g + 1;
    g = paramInt;
    b = paramInt;
    d = 0;
    j = 0;
    k = 0;
    l = 1.7F;
    m = 200;
    n = 1000;
    o = 1.2F;
    p = true;
    e = false;
    r = new bvu();
    u = new PointF();
    v = 0;
    w = 0;
    z = 1;
    A = false;
    f = false;
    B = 0;
    C = 0;
    D = false;
    E = false;
    I = 500;
    J = 0L;
    localObject = getContext();
    if ((bvz.f) || (localObject == null)) {}
    for (;;)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, bvw.d.PtrFrameLayout, 0, 0);
      if (paramContext != null)
      {
        j = paramContext.getResourceId(0, j);
        k = paramContext.getResourceId(1, k);
        l = paramContext.getFloat(2, l);
        m = paramContext.getInt(4, m);
        n = paramContext.getInt(5, n);
        o = paramContext.getFloat(3, o);
        p = paramContext.getBoolean(7, p);
        e = paramContext.getBoolean(6, e);
        paramContext.recycle();
      }
      t = new a();
      x = (ViewConfiguration.get(getContext()).getScaledTouchSlop() * 2);
      return;
      bvz.f = true;
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)((Context)localObject).getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      bvz.a = widthPixels;
      bvz.b = heightPixels;
      bvz.c = density;
      bvz.d = (int)(bvz.a / density);
      bvz.e = (int)(bvz.b / density);
    }
  }
  
  private void a()
  {
    if (!A) {
      t.a(0, n);
    }
  }
  
  private void a(float paramFloat)
  {
    if ((paramFloat < 0.0F) && (v == 0))
    {
      if (a) {
        CLog.e(b, String.format("has reached the top", new Object[0]));
      }
      return;
    }
    int i2 = v + (int)paramFloat;
    int i1 = i2;
    if (i2 < 0)
    {
      if (a) {
        CLog.e(b, String.format("over top", new Object[0]));
      }
      i1 = 0;
    }
    v = i1;
    i1 = v - w;
    if (i1 != 0)
    {
      if ((w == 0) && (v != 0) && (r.a()))
      {
        if (z == 1)
        {
          z = 2;
          r.b(this);
          if (a) {
            CLog.i(b, "PtrUIHandler: onUIRefreshPrepare, mAutoScrollRefreshTag %s", new Object[] { Integer.valueOf(B) });
          }
        }
        if ((A) && (E))
        {
          if (a) {
            CLog.d(b, "send cancel event");
          }
          super.dispatchTouchEvent(MotionEvent.obtain(F.getDownTime(), F.getEventTime() + ViewConfiguration.getLongPressTimeout(), 3, F.getX(), F.getY(), F.getMetaState()));
        }
      }
      if ((w != 0) && (v == 0))
      {
        f();
        if ((A) && (E))
        {
          if (a) {
            CLog.d(b, "send down event");
          }
          MotionEvent localMotionEvent = G;
          super.dispatchTouchEvent(MotionEvent.obtain(localMotionEvent.getDownTime(), localMotionEvent.getEventTime(), 0, localMotionEvent.getX(), localMotionEvent.getY(), localMotionEvent.getMetaState()));
        }
      }
      if (z == 2)
      {
        if ((A) && (B == 0) && (e) && (w < d) && (v >= d)) {
          b();
        }
        if ((B == i) && (w < y) && (v >= y)) {
          b();
        }
      }
      if (a) {
        CLog.v(b, "updatePos: change: %s, current: %s last: %s, top: %s, headerHeight: %s", new Object[] { Integer.valueOf(i1), Integer.valueOf(v), Integer.valueOf(w), Integer.valueOf(c.getTop()), Integer.valueOf(y) });
      }
      q.offsetTopAndBottom(i1);
      c.offsetTopAndBottom(i1);
      invalidate();
      if (y != 0) {
        break label586;
      }
      paramFloat = 0.0F;
      if (y != 0) {
        break label603;
      }
    }
    label586:
    label603:
    for (float f1 = 0.0F;; f1 = v * 1.0F / y)
    {
      if (r.a()) {
        r.a(this, A, z, w, v, paramFloat, f1);
      }
      w = v;
      return;
      paramFloat = w * 1.0F / y;
      break;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    b();
    if (z == 3)
    {
      if (p)
      {
        if ((v > y) && (!paramBoolean)) {
          t.a(y, m);
        }
        return;
      }
      a();
      return;
    }
    if (z == 4)
    {
      b(false);
      return;
    }
    a();
  }
  
  private void b(boolean paramBoolean)
  {
    if ((v != 0) && (!paramBoolean) && (H != null))
    {
      if (a) {
        CLog.d(b, "notifyUIRefreshComplete mRefreshCompleteHook run.");
      }
      bvv localbvv = H;
      switch (b)
      {
      case 1: 
      default: 
        return;
      case 0: 
        b = 1;
        localbvv.run();
        return;
      }
      localbvv.a();
      return;
    }
    if (r.a())
    {
      if (a) {
        CLog.i(b, "PtrUIHandler: onUIRefreshComplete");
      }
      r.d(this);
    }
    a();
    f();
  }
  
  private boolean b()
  {
    if (z != 2) {}
    do
    {
      do
      {
        return false;
      } while (((v < y) || (B <= 0)) && (v < d));
      z = 3;
      J = System.currentTimeMillis();
      if (r.a())
      {
        r.c(this);
        if (a) {
          CLog.i(b, "PtrUIHandler: onUIRefreshBegin");
        }
      }
    } while (s == null);
    s.a(this);
    return false;
  }
  
  private boolean f()
  {
    if (((z == 4) || (z == 2)) && (v == 0))
    {
      if (r.a())
      {
        r.a(this);
        if (a) {
          CLog.i(b, "PtrUIHandler: onUIReset");
        }
      }
      z = 1;
      B = 0;
      return true;
    }
    return false;
  }
  
  private void g()
  {
    z = 4;
    if ((a.a(t)) && (B > 0))
    {
      if (a) {
        CLog.d(b, "performRefreshComplete do nothing, scrolling: %s, auto refresh: %s", new Object[] { Boolean.valueOf(a.a(t)), Integer.valueOf(B) });
      }
      return;
    }
    b(false);
  }
  
  public final void a(bvt parambvt)
  {
    bvu localbvu2 = r;
    if (parambvt == null) {}
    bvu localbvu1;
    label73:
    for (;;)
    {
      return;
      if (localbvu2 != null)
      {
        localbvu1 = localbvu2;
        if (a == null)
        {
          a = parambvt;
          return;
        }
        if ((a != null) && (a == parambvt)) {}
        for (int i1 = 1;; i1 = 0)
        {
          if (i1 != 0) {
            break label73;
          }
          if (b == null) {
            break label75;
          }
          localbvu1 = b;
          break;
        }
      }
    }
    label75:
    localbvu2 = new bvu();
    a = parambvt;
    b = localbvu2;
  }
  
  protected final void c()
  {
    if ((v > 0) && (B > 0))
    {
      if (a) {
        CLog.d(b, "call onRelease after scroll abort");
      }
      a(true);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  protected final void d()
  {
    if ((v > 0) && (B > 0))
    {
      if (a) {
        CLog.d(b, "call onRelease after scroll finish");
      }
      a(true);
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = true;
    if ((!isEnabled()) || (c == null) || (q == null))
    {
      bool1 = super.dispatchTouchEvent(paramMotionEvent);
      return bool1;
    }
    switch (paramMotionEvent.getAction())
    {
    }
    float f2;
    label321:
    boolean bool2;
    label344:
    boolean bool3;
    label354:
    label482:
    label488:
    label494:
    label500:
    do
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      A = false;
      if (v > 0)
      {
        if (a) {
          CLog.d(b, "call onRelease when user release");
        }
        a(false);
        if (v != C) {
          break;
        }
        return super.dispatchTouchEvent(paramMotionEvent);
      }
      return super.dispatchTouchEvent(paramMotionEvent);
      F = paramMotionEvent;
      u.set(paramMotionEvent.getX(), paramMotionEvent.getY());
      t.a();
      A = true;
      D = false;
      if ((!E) || (v <= 0)) {
        super.dispatchTouchEvent(paramMotionEvent);
      }
      C = v;
      return true;
      G = paramMotionEvent;
      float f1 = paramMotionEvent.getX() - u.x;
      f2 = (int)(paramMotionEvent.getY() - u.y);
      u.set(paramMotionEvent.getX(), paramMotionEvent.getY());
      if ((f) && (!D) && ((Math.abs(f1) > x) || (Math.abs(f1) > 3.0F * Math.abs(f2)))) {
        if (v != 0) {
          break label321;
        }
      }
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          D = true;
        }
        if (!D) {
          break;
        }
        return super.dispatchTouchEvent(paramMotionEvent);
      }
      if (f2 > 0.0F)
      {
        bool1 = true;
        if (bool1) {
          break label482;
        }
        bool2 = true;
        if (v <= 0) {
          break label488;
        }
        bool3 = true;
        if (a) {
          if ((s == null) || (!s.a())) {
            break label494;
          }
        }
      }
      for (boolean bool4 = true;; bool4 = false)
      {
        CLog.v(b, "ACTION_MOVE: offsetY:%s, mCurrentPos: %s, moveUp: %s, canMoveUp: %s, moveDown: %s: canMoveDown: %s", new Object[] { Float.valueOf(f2), Integer.valueOf(v), Boolean.valueOf(bool2), Boolean.valueOf(bool3), Boolean.valueOf(bool1), Boolean.valueOf(bool4) });
        if ((!bool1) || (s == null) || (s.a())) {
          break label500;
        }
        return super.dispatchTouchEvent(paramMotionEvent);
        bool1 = false;
        break;
        bool2 = false;
        break label344;
        bool3 = false;
        break label354;
      }
    } while (((!bool2) || (!bool3)) && (!bool1));
    a((float)(f2 / l));
    return true;
  }
  
  public final void e()
  {
    if (a) {
      CLog.i(b, "refreshComplete");
    }
    if (H != null) {
      H.b = 0;
    }
    int i1 = (int)(I - (System.currentTimeMillis() - J));
    if (i1 <= 0)
    {
      if (a) {
        CLog.d(b, "performRefreshComplete at once");
      }
      g();
    }
    do
    {
      return;
      postDelayed(new Runnable()
      {
        public final void run()
        {
          PtrFrameLayout.b(PtrFrameLayout.this);
        }
      }, i1);
    } while (!a);
    CLog.d(b, "performRefreshComplete after delay: %s", new Object[] { Integer.valueOf(i1) });
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LayoutParams(paramLayoutParams);
  }
  
  public View getContentView()
  {
    return c;
  }
  
  public float getDurationToClose()
  {
    return m;
  }
  
  public long getDurationToCloseHeader()
  {
    return n;
  }
  
  public int getHeaderHeight()
  {
    return y;
  }
  
  public View getHeaderView()
  {
    return q;
  }
  
  public int getOffsetToRefresh()
  {
    return d;
  }
  
  public float getRatioOfHeaderToHeightRefresh()
  {
    return o;
  }
  
  public float getResistance()
  {
    return l;
  }
  
  protected void onFinishInflate()
  {
    int i1 = getChildCount();
    if (i1 > 2) {
      throw new IllegalStateException("PtrFrameLayout only can host 2 elements");
    }
    View localView2;
    View localView1;
    Object localObject;
    if (i1 == 2)
    {
      if ((j != 0) && (q == null)) {
        q = findViewById(j);
      }
      if ((k != 0) && (c == null)) {
        c = findViewById(k);
      }
      if ((c == null) || (q == null))
      {
        localView2 = getChildAt(0);
        localView1 = getChildAt(1);
        if ((localView2 instanceof bvt))
        {
          q = localView2;
          localObject = this;
          c = localView1;
        }
      }
      else
      {
        label126:
        super.onFinishInflate();
        return;
      }
      if ((localView1 instanceof bvt)) {
        q = localView1;
      }
    }
    for (;;)
    {
      localObject = this;
      localView1 = localView2;
      break;
      if ((c == null) && (q == null))
      {
        q = localView2;
        localObject = this;
        break;
      }
      if (q == null)
      {
        if (c == localView2) {}
        for (;;)
        {
          q = localView1;
          break;
          localView1 = localView2;
        }
      }
      if (q == localView2)
      {
        localObject = this;
        break;
        if (i1 == 1)
        {
          c = getChildAt(0);
          break label126;
        }
        localObject = new TextView(getContext());
        ((TextView)localObject).setClickable(true);
        ((TextView)localObject).setTextColor(-39424);
        ((TextView)localObject).setGravity(17);
        ((TextView)localObject).setTextSize(20.0F);
        ((TextView)localObject).setText("The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?");
        c = ((View)localObject);
        addView(c);
        break label126;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = v;
    paramInt3 = getPaddingLeft();
    paramInt2 = getPaddingTop();
    ViewGroup.MarginLayoutParams localMarginLayoutParams;
    if (q != null)
    {
      localMarginLayoutParams = (ViewGroup.MarginLayoutParams)q.getLayoutParams();
      paramInt4 = leftMargin + paramInt3;
      int i1 = topMargin + paramInt2 + paramInt1 - y;
      int i2 = q.getMeasuredWidth();
      int i3 = q.getMeasuredHeight();
      q.layout(paramInt4, i1, i2 + paramInt4, i3 + i1);
    }
    if (c != null)
    {
      localMarginLayoutParams = (ViewGroup.MarginLayoutParams)c.getLayoutParams();
      paramInt3 += leftMargin;
      paramInt1 = topMargin + paramInt2 + paramInt1;
      paramInt2 = c.getMeasuredWidth();
      paramInt4 = c.getMeasuredHeight();
      c.layout(paramInt3, paramInt1, paramInt2 + paramInt3, paramInt4 + paramInt1);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    Object localObject;
    if (q != null)
    {
      measureChildWithMargins(q, paramInt1, 0, paramInt2, 0);
      localObject = (ViewGroup.MarginLayoutParams)q.getLayoutParams();
      int i1 = q.getMeasuredHeight();
      int i2 = topMargin;
      y = (bottomMargin + (i1 + i2));
      d = ((int)(y * o));
    }
    if (c != null)
    {
      localObject = c;
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)((View)localObject).getLayoutParams();
      ((View)localObject).measure(getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + topMargin, height));
    }
  }
  
  public void setDurationToClose(int paramInt)
  {
    m = paramInt;
  }
  
  public void setDurationToCloseHeader(int paramInt)
  {
    n = paramInt;
  }
  
  public void setHeaderView(View paramView)
  {
    if ((q != null) && (paramView != null) && (q != paramView)) {
      removeView(q);
    }
    if (paramView.getLayoutParams() == null) {
      paramView.setLayoutParams(new LayoutParams(-2));
    }
    q = paramView;
    addView(paramView);
  }
  
  public void setInterceptEventWhileWorking(boolean paramBoolean)
  {
    E = paramBoolean;
  }
  
  public void setKeepHeaderWhenRefresh(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public void setLoadingMinTime(int paramInt)
  {
    I = paramInt;
  }
  
  public void setOffsetToRefresh(int paramInt)
  {
    d = paramInt;
  }
  
  public void setPtrHandler(bvs parambvs)
  {
    s = parambvs;
  }
  
  public void setPullToRefresh(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void setRatioOfHeaderHeightToRefresh(float paramFloat)
  {
    o = paramFloat;
    d = ((int)(y * o));
  }
  
  public void setRefreshCompleteHook(bvv parambvv)
  {
    H = parambvv;
    a = new Runnable()
    {
      public final void run()
      {
        if (PtrFrameLayout.a) {
          CLog.d(b, "mRefreshCompleteHook resume.");
        }
        PtrFrameLayout.a(PtrFrameLayout.this);
      }
    };
  }
  
  public void setResistance(float paramFloat)
  {
    l = paramFloat;
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public LayoutParams(int paramInt)
    {
      super(paramInt);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  final class a
    implements Runnable
  {
    private int b;
    private Scroller c = new Scroller(getContext());
    private boolean d = false;
    private int e;
    private int f;
    
    public a() {}
    
    private void b()
    {
      d = false;
      b = 0;
      removeCallbacks(this);
    }
    
    public final void a()
    {
      if (d)
      {
        if (!c.isFinished()) {
          c.forceFinished(true);
        }
        c();
        b();
      }
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      if (PtrFrameLayout.c(PtrFrameLayout.this) == paramInt1) {
        return;
      }
      e = PtrFrameLayout.c(PtrFrameLayout.this);
      f = paramInt1;
      int i = paramInt1 - e;
      if (PtrFrameLayout.a) {
        CLog.d(b, "tryToScrollTo: start: %s, distance:%s, to:%s", new Object[] { Integer.valueOf(e), Integer.valueOf(i), Integer.valueOf(paramInt1) });
      }
      removeCallbacks(this);
      b = 0;
      c = new Scroller(getContext());
      c.startScroll(0, 0, 0, i, paramInt2);
      post(this);
      d = true;
    }
    
    public final void run()
    {
      if ((!c.computeScrollOffset()) || (c.isFinished())) {}
      for (boolean bool = true;; bool = false)
      {
        int i = c.getCurrY();
        int j = i - b;
        if ((PtrFrameLayout.a) && (j != 0)) {
          CLog.v(b, "scroll: %s, start: %s, to: %s, mCurrentPos: %s, current :%s, last: %s, delta: %s", new Object[] { Boolean.valueOf(bool), Integer.valueOf(e), Integer.valueOf(f), Integer.valueOf(PtrFrameLayout.c(PtrFrameLayout.this)), Integer.valueOf(i), Integer.valueOf(b), Integer.valueOf(j) });
        }
        if (bool) {
          break;
        }
        b = i;
        PtrFrameLayout.a(PtrFrameLayout.this, j);
        post(this);
        return;
      }
      if (PtrFrameLayout.a) {
        CLog.v(b, "finish, mCurrentPos:%s", new Object[] { Integer.valueOf(PtrFrameLayout.c(PtrFrameLayout.this)) });
      }
      b();
      d();
    }
  }
}

/* Location:
 * Qualified Name:     in.srain.cube.views.ptr.PtrFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
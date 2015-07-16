package com.snapchat.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import aqu;
import br;
import chc;
import com.github.ksoichiro.android.observablescrollview.ObservableListView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LockingAboveTheFoldListView<T>
  extends ObservableListView
  implements AbsListView.OnScrollListener, br
{
  private AbsListView.OnScrollListener A;
  private br B;
  private int C = 0;
  private int D;
  private ViewTreeObserver.OnPreDrawListener E = new ViewTreeObserver.OnPreDrawListener()
  {
    public final boolean onPreDraw()
    {
      return !b();
    }
  };
  protected final Map<String, Integer> a = new HashMap();
  public boolean b;
  private final View c;
  private LockingAboveTheFoldListView<T>.a d;
  private int e;
  private float f = NaN.0F;
  private int g;
  private boolean h;
  private float i;
  private float j;
  private int k;
  private boolean l;
  private boolean m;
  private View n;
  private aqu o;
  private int p = -1;
  private float q = -1.0F;
  private int r;
  private boolean s;
  private boolean t;
  private boolean u;
  private boolean v;
  private int w;
  private boolean x;
  private BaseAdapter y;
  private c<T> z;
  
  public LockingAboveTheFoldListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c = new View(paramContext);
    d = new a((byte)0);
    D = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    addFooterView(c, null, false);
    super.setOnScrollListener(this);
    super.setScrollViewCallbacks(this);
  }
  
  private void d()
  {
    try
    {
      Object localObject = AbsListView.class.getDeclaredField("mFlingRunnable");
      ((Field)localObject).setAccessible(true);
      localObject = ((Field)localObject).get(this);
      if (localObject != null)
      {
        Method localMethod = Class.forName("android.widget.AbsListView$FlingRunnable").getDeclaredMethod("endFling", new Class[0]);
        localMethod.setAccessible(true);
        localMethod.invoke(localObject, new Object[0]);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void e()
  {
    if (c.getBottom() + getPaddingBottom() >= getHeight()) {
      return;
    }
    post(new Runnable()
    {
      public final void run()
      {
        smoothScrollBy(-1, 100);
      }
    });
  }
  
  private void setLocked(boolean paramBoolean)
  {
    new StringBuilder("LockingAboveTheFoldListView setLocked to ").append(paramBoolean).append(" currently ").append(b);
    if (b != paramBoolean)
    {
      b = paramBoolean;
      if (z != null)
      {
        if (!b) {
          break label67;
        }
        z.c(n);
      }
    }
    return;
    label67:
    z.r();
  }
  
  public final void a()
  {
    n = null;
    o = null;
    p = -1;
    q = -1.0F;
    u = false;
    t = false;
    s = false;
    v = false;
    w = 0;
    setLocked(false);
  }
  
  public final void a(int paramInt)
  {
    if (B != null) {
      B.a(paramInt);
    }
  }
  
  public final void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (B != null) {
      B.a(paramInt, paramBoolean1, paramBoolean2);
    }
    if (!m) {
      break label26;
    }
    label26:
    label138:
    label254:
    label260:
    label265:
    for (;;)
    {
      return;
      if (!b)
      {
        int i4 = getHeight() / 2;
        int i3 = getFirstVisiblePosition();
        int i5 = getLastVisiblePosition();
        paramInt = i3;
        for (;;)
        {
          if (paramInt > i5) {
            break label265;
          }
          View localView = getChildAt(paramInt - i3);
          b localb = (b)localView.getTag();
          if ((localb != null) && (localb.b()))
          {
            int[] arrayOfInt = localb.d();
            int i6 = localb.e();
            int i7 = arrayOfInt[1] + i6 / 2;
            int i1;
            if (getScrollState() == 2)
            {
              i1 = 1;
              if (i1 == 0) {
                break label254;
              }
            }
            for (int i2 = 10;; i2 = 5)
            {
              if ((i7 < i4 - i2) || (i7 > i2 + i4)) {
                break label260;
              }
              n = localView;
              o = localb.c();
              p = paramInt;
              setLocked(true);
              if (i1 == 0) {
                break;
              }
              setSelectionFromTop(paramInt, (int)(i4 - i6 / 2 - o.c() - o.d()));
              x = true;
              d();
              x = false;
              return;
              i1 = 0;
              break label138;
            }
          }
          paramInt += 1;
        }
      }
    }
  }
  
  public final boolean b()
  {
    if (Float.isNaN(f)) {}
    do
    {
      do
      {
        return false;
      } while ((!h) || (getChildCount() == 0));
      i1 = z.q();
      i2 = getHeaderViewsCount();
      i1 = Math.max(getFirstVisiblePosition(), i1 + i2);
      i2 = getLastVisiblePosition();
    } while (i2 < 0);
    Object localObject2;
    while ((i1 <= i2) && (i1 < getCount() - getFooterViewsCount()))
    {
      localObject1 = getItemAtPosition(i1);
      if (localObject1 == null) {
        throw new NullPointerException();
      }
      localObject1 = z.a(localObject1);
      localObject2 = getChildAt(i1 - getFirstVisiblePosition());
      if (localObject2 == null) {
        throw new NullPointerException();
      }
      if (localObject2 != c)
      {
        int i3 = ((View)localObject2).getHeight();
        a.put(localObject1, Integer.valueOf(i3));
      }
      i1 += 1;
    }
    int i2 = getMeasuredHeight() - getPaddingBottom() - getPaddingTop();
    Object localObject1 = a.entrySet().iterator();
    int i1 = 0;
    label208:
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (((Map.Entry)localObject2).getValue() == null) {
        throw new NullPointerException();
      }
      i1 = ((Integer)((Map.Entry)localObject2).getValue()).intValue() + i1;
      if (i1 < i2) {}
    }
    for (;;)
    {
      i2 = i2 - i1 - k;
      i1 = i2;
      if (l) {
        i1 = i2 - (int)getResources().getDimension(2131296417);
      }
      i2 = i1;
      if (i1 < k) {
        i2 = k;
      }
      i1 = i2;
      if (i2 < 0) {
        i1 = 0;
      }
      i1 += 1;
      if (i1 == e) {
        break;
      }
      localObject1 = c.getLayoutParams();
      if (localObject1 == null) {
        break;
      }
      e = i1;
      height = i1;
      c.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      y.notifyDataSetChanged();
      e();
      return true;
      break label208;
    }
  }
  
  public final void c()
  {
    post(new Runnable()
    {
      public final void run()
      {
        setSelection(getCount() - 1);
      }
    });
  }
  
  public boolean dispatchTouchEvent(@chc MotionEvent paramMotionEvent)
  {
    if (!m) {
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    int i3 = paramMotionEvent.getAction();
    if (i3 == 0) {
      j = paramMotionEvent.getRawY();
    }
    int i5;
    int i2;
    int i7;
    int i1;
    int i4;
    float f1;
    if (b)
    {
      i5 = 1;
      int i6;
      int i8;
      int i9;
      int i10;
      if (b)
      {
        int[] arrayOfInt = o.a();
        if ((arrayOfInt[1] >= 0) || (arrayOfInt[1] + o.b() <= getHeight()))
        {
          i2 = 1;
          arrayOfInt = o.a();
          i6 = o.c();
          int i11 = (int)o.d();
          i7 = arrayOfInt[1];
          i8 = o.b();
          i9 = getHeight();
          i10 = i7 + i8;
          i1 = -i6 - i11;
          i4 = i9 - i8 - i6 - i11 - 1;
          i6 = (i9 - i8) / 2 - i6 - i11;
        }
      }
      switch (i3)
      {
      default: 
        i3 = i5;
      case 0: 
      case 1: 
        for (;;)
        {
          i = paramMotionEvent.getRawY();
          if (i3 == 0) {
            break label883;
          }
          return super.dispatchTouchEvent(paramMotionEvent);
          i2 = 0;
          break;
          i3 = i5;
          if (i2 != 0)
          {
            u = true;
            q = paramMotionEvent.getRawY();
            i3 = i5;
            continue;
            if ((i7 >= 0) && (i7 <= 200) && (i10 <= i9) && (i10 >= i9 - 200))
            {
              w = i6;
              v = true;
              i3 = i5;
            }
            else if ((i7 >= 0) && (i7 <= 200))
            {
              w = i1;
              v = true;
              i3 = i5;
            }
            else if ((i10 <= i9) && (i10 >= i9 - 200))
            {
              w = i4;
              v = true;
              i3 = i5;
            }
            else
            {
              w = 0;
              v = false;
              i3 = i5;
            }
          }
        }
      }
      if (q == -1.0F)
      {
        q = paramMotionEvent.getRawY();
        if (q - i <= 0.0F) {
          break label638;
        }
      }
      label638:
      for (i3 = d.b;; i3 = d.a)
      {
        r = i3;
        i3 = i5;
        if (Math.abs(paramMotionEvent.getRawY() - j) <= D) {
          break;
        }
        if (i2 == 0) {
          break label866;
        }
        f1 = paramMotionEvent.getRawY() - q;
        if ((u) && (i8 > i9) && (((s) && (f1 < 0.0F)) || ((t) && (f1 > 0.0F)))) {
          u = false;
        }
        if ((!u) && ((r != d.b) || (f1 >= 0.0F) || (!t)) && ((r != d.b) || (f1 < 200.0F)) && ((r != d.a) || (f1 <= 0.0F) || (!s)) && ((r != d.a) || (f1 > -200.0F))) {
          break label646;
        }
        a();
        i3 = i5;
        break;
      }
      label646:
      if ((i7 >= 0) || (i10 <= i9)) {
        if ((i7 >= 0) && (i10 <= i9))
        {
          t = true;
          s = true;
          i1 = i6;
        }
      }
    }
    label842:
    label866:
    label883:
    label904:
    for (;;)
    {
      if (((f1 > 0.0F) && (r == d.b)) || ((f1 < 0.0F) && (r == d.a))) {
        setSelectionFromTop(p, i1);
      }
      for (i1 = 0;; i1 = 1)
      {
        i3 = i1;
        break;
        if (i7 >= 0)
        {
          if (s) {
            break label904;
          }
          s = true;
          q = paramMotionEvent.getRawY();
          if (q - i > 0.0F) {}
          for (i2 = d.b;; i2 = d.a)
          {
            r = i2;
            break;
          }
        }
        if (!t)
        {
          t = true;
          q = paramMotionEvent.getRawY();
          if (q - i <= 0.0F) {
            break label842;
          }
        }
        for (i1 = d.b;; i1 = d.a)
        {
          r = i1;
          i1 = i4;
          break;
        }
        t = false;
        s = false;
        i3 = i5;
        break;
        t = false;
        s = false;
        i3 = i5;
        break;
        return true;
        i = paramMotionEvent.getRawY();
        return super.dispatchTouchEvent(paramMotionEvent);
      }
    }
  }
  
  public int getScrollState()
  {
    return g;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
    if (localViewTreeObserver.isAlive())
    {
      localViewTreeObserver.removeOnPreDrawListener(E);
      localViewTreeObserver.addOnPreDrawListener(E);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    f = getMeasuredHeight();
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (A != null) {
      A.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    int i1 = 0;
    g = paramInt;
    if (A != null) {
      A.onScrollStateChanged(paramAbsListView, paramInt);
    }
    int i3;
    int i2;
    if (paramInt == 0)
    {
      e();
      if ((b) && (!x))
      {
        paramInt = i1;
        if (b)
        {
          paramAbsListView = o.a();
          i3 = getHeight();
          i2 = o.b();
          if (i2 > i3) {
            break label137;
          }
          i3 /= 2;
          i2 = paramAbsListView[1] + i2 / 2;
          if (i2 <= i3 + 1)
          {
            paramInt = i1;
            if (i2 >= i3 - 1) {}
          }
          else
          {
            paramInt = 1;
          }
        }
      }
    }
    for (;;)
    {
      if (paramInt != 0) {
        a();
      }
      return;
      label137:
      if (paramAbsListView[1] <= 0)
      {
        paramInt = i1;
        if (paramAbsListView[1] + i2 >= i3) {}
      }
      else
      {
        paramInt = 1;
      }
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (h)
    {
      super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
      if (paramInt2 > C) {
        C = paramInt2;
      }
      if (C - paramInt2 <= 100) {
        break label51;
      }
    }
    label51:
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      if (paramInt1 != 0) {
        c();
      }
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = super.onTouchEvent(paramMotionEvent);
    if ((b) && (paramMotionEvent.getAction() == 1) && (v))
    {
      x = true;
      d();
      x = false;
      setSelectionFromTop(p, w);
    }
    return bool;
  }
  
  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    super.setAdapter(paramBaseAdapter);
    y = paramBaseAdapter;
    if (d != null)
    {
      a locala = d;
      if (a != null) {
        a.unregisterDataSetObserver(locala);
      }
      a = paramBaseAdapter;
      a.registerDataSetObserver(locala);
    }
  }
  
  public void setInterface(c<T> paramc)
  {
    z = paramc;
  }
  
  public void setIsActive(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setLockingEnabled(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void setMinimumFooterHeight(int paramInt)
  {
    k = paramInt;
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    A = paramOnScrollListener;
  }
  
  public void setScrollViewCallbacks(br parambr)
  {
    B = parambr;
  }
  
  public void setShouldSubtractStatusBarHeightFromFooter(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  final class a
    extends DataSetObserver
  {
    BaseAdapter a;
    
    private a() {}
    
    private Set<String> a()
    {
      int j = a.getCount();
      HashSet localHashSet = new HashSet(j);
      int i = 0;
      while (i < j)
      {
        Object localObject = a.getItem(i);
        if (localObject != null) {
          localHashSet.add(LockingAboveTheFoldListView.a(LockingAboveTheFoldListView.this).a(localObject));
        }
        i += 1;
      }
      return localHashSet;
    }
    
    public final void onChanged()
    {
      super.onChanged();
      if (a == null) {
        throw new NullPointerException("onChanged cannot be called without an adapter");
      }
      Set localSet = a();
      a.keySet().retainAll(localSet);
    }
  }
  
  public static abstract interface b
  {
    public abstract boolean b();
    
    public abstract aqu c();
    
    public abstract int[] d();
    
    public abstract int e();
  }
  
  public static abstract interface c<T>
  {
    public abstract String a(T paramT);
    
    public abstract void c(View paramView);
    
    public abstract int q();
    
    public abstract void r();
  }
  
  static enum d {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LockingAboveTheFoldListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
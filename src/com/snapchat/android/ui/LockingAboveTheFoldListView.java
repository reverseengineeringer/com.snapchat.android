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
import apv;
import br;
import cgb;
import com.github.ksoichiro.android.observablescrollview.ObservableListView;
import com.snapchat.android.Timber;
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
  public boolean c;
  public BaseAdapter d;
  public c<T> e;
  private final View f;
  private LockingAboveTheFoldListView<T>.a g;
  private int h;
  private float i = NaN.0F;
  private int j;
  private float k;
  private float l;
  private int m;
  private boolean n;
  private boolean o;
  private View p;
  private apv q;
  private int r = -1;
  private float s = -1.0F;
  private int t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y;
  private boolean z;
  
  public LockingAboveTheFoldListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    f = new View(paramContext);
    g = new a((byte)0);
    D = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    addFooterView(f, null, false);
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
    if (f.getBottom() + getPaddingBottom() >= getHeight()) {
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
    Timber.g("ObservableAboveTheFoldListView", "LockingAboveTheFoldListView setLocked to " + paramBoolean + " currently " + c, new Object[0]);
    if (c != paramBoolean)
    {
      c = paramBoolean;
      if (e != null)
      {
        if (!c) {
          break label78;
        }
        e.c(p);
      }
    }
    return;
    label78:
    e.r();
  }
  
  public final void a()
  {
    p = null;
    q = null;
    r = -1;
    s = -1.0F;
    w = false;
    v = false;
    u = false;
    x = false;
    y = 0;
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
    if (!o) {
      Timber.g("ObservableAboveTheFoldListView", "CHAT-LOG: LockingAboveTheFoldListView onScrollChanged but locking is disabled", new Object[0]);
    }
    label149:
    label265:
    label271:
    label276:
    for (;;)
    {
      return;
      if (!c)
      {
        int i4 = getHeight() / 2;
        int i3 = getFirstVisiblePosition();
        int i5 = getLastVisiblePosition();
        paramInt = i3;
        for (;;)
        {
          if (paramInt > i5) {
            break label276;
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
                break label265;
              }
            }
            for (int i2 = 10;; i2 = 5)
            {
              if ((i7 < i4 - i2) || (i7 > i2 + i4)) {
                break label271;
              }
              p = localView;
              q = localb.c();
              r = paramInt;
              setLocked(true);
              if (i1 == 0) {
                break;
              }
              setSelectionFromTop(paramInt, (int)(i4 - i6 / 2 - q.c() - q.d()));
              z = true;
              d();
              z = false;
              return;
              i1 = 0;
              break label149;
            }
          }
          paramInt += 1;
        }
      }
    }
  }
  
  public final boolean b()
  {
    if (Float.isNaN(i)) {
      Timber.e("ObservableAboveTheFoldListView", "mMeasuredHeight has not been initialized yet. Aborting updateFooter().", new Object[0]);
    }
    do
    {
      do
      {
        return false;
      } while ((!b) || (getChildCount() == 0));
      i1 = e.q();
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
      localObject1 = e.a(localObject1);
      localObject2 = getChildAt(i1 - getFirstVisiblePosition());
      if (localObject2 == null) {
        throw new NullPointerException();
      }
      if (localObject2 != f)
      {
        int i3 = ((View)localObject2).getHeight();
        a.put(localObject1, Integer.valueOf(i3));
      }
      i1 += 1;
    }
    int i2 = getMeasuredHeight() - getPaddingBottom() - getPaddingTop();
    Object localObject1 = a.entrySet().iterator();
    int i1 = 0;
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
      i2 = i2 - i1 - m;
      i1 = i2;
      if (n) {
        i1 = i2 - (int)getResources().getDimension(2131296416);
      }
      i2 = i1;
      if (i1 < m) {
        i2 = m;
      }
      return b(i2);
      break;
    }
  }
  
  public final boolean b(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 0) {
      i1 = 0;
    }
    paramInt = i1 + 1;
    if (paramInt == h) {}
    ViewGroup.LayoutParams localLayoutParams;
    do
    {
      return false;
      localLayoutParams = f.getLayoutParams();
    } while (localLayoutParams == null);
    h = paramInt;
    height = paramInt;
    f.setLayoutParams(localLayoutParams);
    d.notifyDataSetChanged();
    e();
    return true;
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
  
  public boolean dispatchTouchEvent(@cgb MotionEvent paramMotionEvent)
  {
    if (!o) {
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    int i3 = paramMotionEvent.getAction();
    if (i3 == 0) {
      l = paramMotionEvent.getRawY();
    }
    int i5;
    int i2;
    int i7;
    int i1;
    int i4;
    float f1;
    if (c)
    {
      i5 = 1;
      int i6;
      int i8;
      int i9;
      int i10;
      if (c)
      {
        int[] arrayOfInt = q.a();
        if ((arrayOfInt[1] >= 0) || (arrayOfInt[1] + q.b() <= getHeight()))
        {
          i2 = 1;
          arrayOfInt = q.a();
          i6 = q.c();
          int i11 = (int)q.d();
          i7 = arrayOfInt[1];
          i8 = q.b();
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
          k = paramMotionEvent.getRawY();
          if (i3 == 0) {
            break label883;
          }
          return super.dispatchTouchEvent(paramMotionEvent);
          i2 = 0;
          break;
          i3 = i5;
          if (i2 != 0)
          {
            w = true;
            s = paramMotionEvent.getRawY();
            i3 = i5;
            continue;
            if ((i7 >= 0) && (i7 <= 200) && (i10 <= i9) && (i10 >= i9 - 200))
            {
              y = i6;
              x = true;
              i3 = i5;
            }
            else if ((i7 >= 0) && (i7 <= 200))
            {
              y = i1;
              x = true;
              i3 = i5;
            }
            else if ((i10 <= i9) && (i10 >= i9 - 200))
            {
              y = i4;
              x = true;
              i3 = i5;
            }
            else
            {
              y = 0;
              x = false;
              i3 = i5;
            }
          }
        }
      }
      if (s == -1.0F)
      {
        s = paramMotionEvent.getRawY();
        if (s - k <= 0.0F) {
          break label638;
        }
      }
      label638:
      for (i3 = d.b;; i3 = d.a)
      {
        t = i3;
        i3 = i5;
        if (Math.abs(paramMotionEvent.getRawY() - l) <= D) {
          break;
        }
        if (i2 == 0) {
          break label866;
        }
        f1 = paramMotionEvent.getRawY() - s;
        if ((w) && (i8 > i9) && (((u) && (f1 < 0.0F)) || ((v) && (f1 > 0.0F)))) {
          w = false;
        }
        if ((!w) && ((t != d.b) || (f1 >= 0.0F) || (!v)) && ((t != d.b) || (f1 < 200.0F)) && ((t != d.a) || (f1 <= 0.0F) || (!u)) && ((t != d.a) || (f1 > -200.0F))) {
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
          v = true;
          u = true;
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
      if (((f1 > 0.0F) && (t == d.b)) || ((f1 < 0.0F) && (t == d.a))) {
        setSelectionFromTop(r, i1);
      }
      for (i1 = 0;; i1 = 1)
      {
        i3 = i1;
        break;
        if (i7 >= 0)
        {
          if (u) {
            break label904;
          }
          u = true;
          s = paramMotionEvent.getRawY();
          if (s - k > 0.0F) {}
          for (i2 = d.b;; i2 = d.a)
          {
            t = i2;
            break;
          }
        }
        if (!v)
        {
          v = true;
          s = paramMotionEvent.getRawY();
          if (s - k <= 0.0F) {
            break label842;
          }
        }
        for (i1 = d.b;; i1 = d.a)
        {
          t = i1;
          i1 = i4;
          break;
        }
        v = false;
        u = false;
        i3 = i5;
        break;
        v = false;
        u = false;
        i3 = i5;
        break;
        return true;
        k = paramMotionEvent.getRawY();
        return super.dispatchTouchEvent(paramMotionEvent);
      }
    }
  }
  
  public int getScrollState()
  {
    return j;
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
    i = getMeasuredHeight();
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
    j = paramInt;
    if (A != null) {
      A.onScrollStateChanged(paramAbsListView, paramInt);
    }
    int i3;
    int i2;
    if (paramInt == 0)
    {
      e();
      if ((c) && (!z))
      {
        paramInt = i1;
        if (c)
        {
          paramAbsListView = q.a();
          i3 = getHeight();
          i2 = q.b();
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
    if (b)
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
    if ((c) && (paramMotionEvent.getAction() == 1) && (x))
    {
      z = true;
      d();
      z = false;
      setSelectionFromTop(r, y);
    }
    return bool;
  }
  
  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    super.setAdapter(paramBaseAdapter);
    d = paramBaseAdapter;
    if (g != null)
    {
      a locala = g;
      if (a != null) {
        a.unregisterDataSetObserver(locala);
      }
      a = paramBaseAdapter;
      a.registerDataSetObserver(locala);
    }
  }
  
  public void setInterface(c<T> paramc)
  {
    e = paramc;
  }
  
  public void setIsActive(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void setLockingEnabled(boolean paramBoolean)
  {
    o = paramBoolean;
  }
  
  public void setMinimumFooterHeight(int paramInt)
  {
    m = paramInt;
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
    n = paramBoolean;
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
    
    public abstract apv c();
    
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
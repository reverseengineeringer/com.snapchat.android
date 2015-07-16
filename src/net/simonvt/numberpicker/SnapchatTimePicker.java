package net.simonvt.numberpicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import bxt.a;
import bxt.b;
import bxt.c;
import bxu;
import bxv;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;

public class SnapchatTimePicker
  extends LinearLayout
{
  private static final i a = new i();
  private int A;
  private int B = Integer.MIN_VALUE;
  private int C;
  private final bxu D;
  private final bxu E;
  private int F;
  private b G;
  private float H;
  private long I;
  private float J;
  private VelocityTracker K;
  private int L;
  private int M;
  private int N;
  private boolean O;
  private final int P;
  private final boolean Q;
  private final Drawable R;
  private final int S;
  private int T = 0;
  private boolean U;
  private int V;
  private int W;
  private int aa;
  private boolean ab;
  private boolean ac;
  private h ad;
  private final g ae;
  private int af = -1;
  private e ag;
  private final ImageButton b;
  private final ImageButton c;
  private final TextView d;
  private final int e;
  private final int f;
  private final int g;
  private final int h;
  private int i;
  private final boolean j;
  private final int k;
  private int l;
  private String[] m;
  private int n;
  private int o;
  private int p;
  private boolean q = false;
  private f r;
  private d s;
  private c t;
  private long u = 300L;
  private final SparseArray<String> v = new SparseArray();
  private final int[] w = new int[3];
  private final Paint x;
  private final Paint y;
  private final Paint z;
  
  public SnapchatTimePicker(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SnapchatTimePicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, bxt.a.snapchatTimePickerStyle);
  }
  
  public SnapchatTimePicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, bxt.c.SnapchatTimePicker, paramInt, 0);
    paramInt = paramAttributeSet.getResourceId(8, 0);
    if (paramInt != 0) {}
    for (boolean bool = true;; bool = false)
    {
      Q = bool;
      P = paramAttributeSet.getColor(0, 0);
      R = paramAttributeSet.getDrawable(1);
      S = paramAttributeSet.getDimensionPixelSize(2, (int)TypedValue.applyDimension(1, 2.0F, getResources().getDisplayMetrics()));
      e = paramAttributeSet.getDimensionPixelSize(3, (int)TypedValue.applyDimension(1, 48.0F, getResources().getDisplayMetrics()));
      f = paramAttributeSet.getDimensionPixelSize(4, -1);
      g = paramAttributeSet.getDimensionPixelSize(5, -1);
      if ((f == -1) || (g == -1) || (f <= g)) {
        break;
      }
      throw new IllegalArgumentException("minHeight > maxHeight");
    }
    h = paramAttributeSet.getDimensionPixelSize(6, -1);
    i = paramAttributeSet.getDimensionPixelSize(7, -1);
    if ((h != -1) && (i != -1) && (h > i)) {
      throw new IllegalArgumentException("minWidth > maxWidth");
    }
    if (i == -1)
    {
      bool = true;
      j = bool;
      paramAttributeSet.recycle();
      ae = new g();
      if (Q) {
        break label749;
      }
      bool = true;
      label313:
      setWillNotDraw(bool);
      ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(paramInt, this, true);
      paramAttributeSet = new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          SnapchatTimePicker.a(SnapchatTimePicker.this).clearFocus();
          if (paramAnonymousView.getId() == bxt.b.np__increment)
          {
            SnapchatTimePicker.a(SnapchatTimePicker.this, true);
            return;
          }
          SnapchatTimePicker.a(SnapchatTimePicker.this, false);
        }
      };
      View.OnLongClickListener local2 = new View.OnLongClickListener()
      {
        public final boolean onLongClick(View paramAnonymousView)
        {
          SnapchatTimePicker.a(SnapchatTimePicker.this).clearFocus();
          if (paramAnonymousView.getId() == bxt.b.np__increment)
          {
            SnapchatTimePicker.b(SnapchatTimePicker.this, true);
            return true;
          }
          SnapchatTimePicker.b(SnapchatTimePicker.this, false);
          return true;
        }
      };
      if (Q) {
        break label755;
      }
      b = ((ImageButton)findViewById(bxt.b.np__increment));
      b.setOnClickListener(paramAttributeSet);
      b.setOnLongClickListener(local2);
      label395:
      if (Q) {
        break label763;
      }
      c = ((ImageButton)findViewById(bxt.b.np__decrement));
      c.setOnClickListener(paramAttributeSet);
      c.setOnLongClickListener(local2);
    }
    for (;;)
    {
      d = ((TextView)findViewById(bxt.b.np__numberpicker_input));
      paramContext = ViewConfiguration.get(paramContext);
      L = paramContext.getScaledTouchSlop();
      M = paramContext.getScaledMinimumFlingVelocity();
      N = (paramContext.getScaledMaximumFlingVelocity() / 8);
      k = ((int)d.getTextSize());
      paramContext = new Paint();
      paramContext.setAntiAlias(true);
      paramContext.setTextAlign(Paint.Align.CENTER);
      paramContext.setTextSize(k);
      paramContext.setTypeface(d.getTypeface());
      paramContext.setColor(d.getTextColors().getColorForState(ENABLED_STATE_SET, -1));
      x = paramContext;
      y = new Paint();
      y.setAntiAlias(true);
      y.setTextAlign(Paint.Align.CENTER);
      y.setTypeface(bxv.a);
      y.setTextSize(e);
      y.setColor(-16777216);
      z = new Paint(y);
      z.setColor(Color.argb(150, 0, 0, 0));
      z.setTypeface(bxv.a);
      z.setTextSize(e / 1.7F);
      D = new bxu(getContext(), null, (byte)0);
      E = new bxu(getContext(), new DecelerateInterpolator(2.5F));
      c();
      if ((Build.VERSION.SDK_INT >= 16) && (getImportantForAccessibility() == 0)) {
        setImportantForAccessibility(1);
      }
      return;
      bool = false;
      break;
      label749:
      bool = false;
      break label313;
      label755:
      b = null;
      break label395;
      label763:
      c = null;
    }
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == -1) {
      return paramInt1;
    }
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt1);
    switch (i2)
    {
    case 1073741824: 
    default: 
      throw new IllegalArgumentException("Unknown measure mode: " + i2);
    case -2147483648: 
      return View.MeasureSpec.makeMeasureSpec(Math.min(i1, paramInt2), 1073741824);
    }
    return View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = paramInt2;
    if (paramInt1 != -1)
    {
      paramInt2 = Math.max(paramInt1, paramInt2);
      i1 = View.MeasureSpec.getMode(paramInt3);
      paramInt3 = View.MeasureSpec.getSize(paramInt3);
      paramInt1 = paramInt2;
      switch (i1)
      {
      default: 
        paramInt1 = paramInt2;
      }
    }
    for (;;)
    {
      i1 = paramInt1 | 0x0;
      return i1;
      paramInt1 = paramInt2;
      if (paramInt3 < paramInt2)
      {
        paramInt1 = 0x1000000 | paramInt3;
        continue;
        paramInt1 = paramInt3;
      }
    }
  }
  
  private void a()
  {
    int i2 = 0;
    if (!j) {
      return;
    }
    float f1;
    int i1;
    if (m == null)
    {
      f1 = 0.0F;
      i1 = 0;
      label22:
      if (i1 <= 9)
      {
        float f2 = x.measureText(e(i1));
        if (f2 <= f1) {
          break label205;
        }
        f1 = f2;
      }
    }
    label205:
    for (;;)
    {
      i1 += 1;
      break label22;
      i1 = o;
      while (i1 > 0)
      {
        i2 += 1;
        i1 /= 10;
      }
      int i3 = (int)(i2 * f1);
      i1 = i3 + (d.getPaddingLeft() + d.getPaddingRight());
      if (i == i1) {
        break;
      }
      if (i1 > h) {}
      for (i = i1;; i = h)
      {
        invalidate();
        return;
        int i4 = m.length;
        i2 = 0;
        for (i1 = 0;; i1 = i3)
        {
          i3 = i1;
          if (i2 >= i4) {
            break;
          }
          f1 = x.measureText(m[i2]);
          i3 = i1;
          if (f1 > i1) {
            i3 = (int)f1;
          }
          i2 += 1;
        }
      }
    }
  }
  
  private void a(int paramInt)
  {
    if (T == paramInt) {
      return;
    }
    T = paramInt;
  }
  
  private void a(boolean paramBoolean)
  {
    if (Q)
    {
      d.setVisibility(4);
      if (!a(D)) {
        a(E);
      }
      F = 0;
      if (paramBoolean) {
        D.a(-A, 300);
      }
      for (;;)
      {
        invalidate();
        return;
        D.a(A, 300);
      }
    }
    if (paramBoolean)
    {
      setValueInternal$2563266(p + 1);
      return;
    }
    setValueInternal$2563266(p - 1);
  }
  
  private void a(boolean paramBoolean, long paramLong)
  {
    if (G == null) {
      G = new b();
    }
    for (;;)
    {
      b.a(G, paramBoolean);
      postDelayed(G, paramLong);
      return;
      removeCallbacks(G);
    }
  }
  
  private boolean a(bxu parambxu)
  {
    d = true;
    int i3 = b - c;
    int i1 = C;
    int i2 = A;
    i2 = B - (i1 + i3) % i2;
    if (i2 != 0)
    {
      i1 = i2;
      if (Math.abs(i2) > A / 2) {
        if (i2 <= 0) {
          break label79;
        }
      }
      label79:
      for (i1 = i2 - A;; i1 = i2 + A)
      {
        scrollBy(0, i1 + i3);
        return true;
      }
    }
    return false;
  }
  
  private int b(int paramInt)
  {
    int i1;
    if (paramInt > o) {
      i1 = n + (paramInt - o) % (o - n) - 1;
    }
    do
    {
      return i1;
      i1 = paramInt;
    } while (paramInt >= n);
    return o - (n - paramInt) % (o - n) + 1;
  }
  
  private void b()
  {
    v.clear();
    int[] arrayOfInt = w;
    int i4 = getValue();
    int i1 = 0;
    while (i1 < w.length)
    {
      int i3 = i1 - 1 + i4;
      int i2 = i3;
      if (O) {
        i2 = b(i3);
      }
      arrayOfInt[i1] = i2;
      c(arrayOfInt[i1]);
      i1 += 1;
    }
  }
  
  private void c(int paramInt)
  {
    SparseArray localSparseArray = v;
    if ((String)localSparseArray.get(paramInt) != null) {
      return;
    }
    String str;
    if ((paramInt < n) || (paramInt > o)) {
      str = "";
    }
    for (;;)
    {
      localSparseArray.put(paramInt, str);
      return;
      if (m != null)
      {
        int i1 = n;
        str = m[(paramInt - i1)];
      }
      else
      {
        str = d(paramInt);
      }
    }
  }
  
  private boolean c()
  {
    if (m == null) {}
    for (String str = d(p); (!TextUtils.isEmpty(str)) && (!str.equals(d.getText().toString())); str = m[(p - n)]) {
      return true;
    }
    return false;
  }
  
  private String d(int paramInt)
  {
    if (t != null) {
      return t.a(paramInt);
    }
    return e(paramInt);
  }
  
  private void d()
  {
    if (G != null) {
      removeCallbacks(G);
    }
    ae.a();
  }
  
  private static String e(int paramInt)
  {
    return String.format(Locale.getDefault(), "%d", new Object[] { Integer.valueOf(paramInt) });
  }
  
  private boolean e()
  {
    boolean bool = false;
    int i2 = B - C;
    int i1;
    if (i2 != 0)
    {
      F = 0;
      if (Math.abs(i2) <= A / 2) {
        break label75;
      }
      if (i2 <= 0) {
        break label67;
      }
      i1 = -A;
      i1 += i2;
    }
    for (;;)
    {
      E.a(i1, 800);
      invalidate();
      bool = true;
      return bool;
      label67:
      i1 = A;
      break;
      label75:
      i1 = i2;
    }
  }
  
  private h getSupportAccessibilityNodeProvider()
  {
    return new h((byte)0);
  }
  
  public static final c getTwoDigitFormatter()
  {
    return a;
  }
  
  private void setValueInternal$2563266(int paramInt)
  {
    if (p == paramInt) {
      return;
    }
    if (O) {}
    for (paramInt = b(paramInt);; paramInt = Math.min(Math.max(paramInt, n), o))
    {
      p = paramInt;
      c();
      b();
      invalidate();
      return;
    }
  }
  
  public void computeScroll()
  {
    bxu localbxu2 = D;
    bxu localbxu1 = localbxu2;
    if (d)
    {
      localbxu2 = E;
      localbxu1 = localbxu2;
      if (!d) {}
    }
    do
    {
      return;
      localbxu1.a();
      int i1 = c;
      if (F == 0) {
        F = a;
      }
      scrollBy(0, i1 - F);
      F = i1;
      if (!d) {
        break;
      }
      if (localbxu1 == D)
      {
        if (!e()) {
          c();
        }
        a(0);
        return;
      }
    } while (T == 1);
    c();
    return;
    invalidate();
  }
  
  protected boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    if (!Q) {
      return super.dispatchHoverEvent(paramMotionEvent);
    }
    int i1;
    if (((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled())
    {
      i1 = (int)paramMotionEvent.getY();
      if (i1 >= V) {
        break label94;
      }
      i1 = 3;
      int i2 = paramMotionEvent.getAction();
      paramMotionEvent = getSupportAccessibilityNodeProvider();
      switch (i2 & 0xFF)
      {
      }
    }
    for (;;)
    {
      return false;
      label94:
      if (i1 > W)
      {
        i1 = 1;
        break;
      }
      i1 = 2;
      break;
      paramMotionEvent.a(i1, 128);
      aa = i1;
      paramMotionEvent.a(i1);
      continue;
      if ((aa != i1) && (aa != -1))
      {
        paramMotionEvent.a(aa, 256);
        paramMotionEvent.a(i1, 128);
        aa = i1;
        paramMotionEvent.a(i1);
        continue;
        paramMotionEvent.a(i1, 256);
        aa = -1;
      }
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    int i1 = paramKeyEvent.getKeyCode();
    switch (i1)
    {
    }
    label127:
    label166:
    do
    {
      bool = super.dispatchKeyEvent(paramKeyEvent);
      do
      {
        return bool;
        d();
        break;
        if (!Q) {
          break;
        }
        switch (paramKeyEvent.getAction())
        {
        default: 
          break;
        case 0: 
          if ((!O) && (i1 != 20)) {
            break label166;
          }
          if (getValue() >= getMaxValue()) {
            break;
          }
          requestFocus();
          af = i1;
          d();
        }
      } while (!D.d);
      if (i1 == 20) {}
      for (bool = true;; bool = false)
      {
        a(bool);
        return true;
        if (getValue() <= getMinValue()) {
          break;
        }
        break label127;
      }
    } while (af != i1);
    af = -1;
    return true;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      d();
    }
  }
  
  public boolean dispatchTrackballEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      return super.dispatchTrackballEvent(paramMotionEvent);
      d();
    }
  }
  
  public AccessibilityNodeProvider getAccessibilityNodeProvider()
  {
    if (!Q) {
      return super.getAccessibilityNodeProvider();
    }
    if (ad == null) {
      ad = new h((byte)0);
    }
    return ad.a;
  }
  
  protected float getBottomFadingEdgeStrength()
  {
    return 0.9F;
  }
  
  public String[] getDisplayedValues()
  {
    return m;
  }
  
  public int getMaxValue()
  {
    return o;
  }
  
  public int getMinValue()
  {
    return n;
  }
  
  public int getSolidColor()
  {
    return P;
  }
  
  protected float getTopFadingEdgeStrength()
  {
    return 0.9F;
  }
  
  public int getValue()
  {
    return p;
  }
  
  public boolean getWrapSelectorWheel()
  {
    return O;
  }
  
  protected void onDetachedFromWindow()
  {
    d();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (!Q)
    {
      super.onDraw(paramCanvas);
      return;
    }
    float f2 = (getRight() - getLeft()) / 2;
    float f1 = C - e;
    float f3 = A;
    int[] arrayOfInt = w;
    int i1 = 0;
    f1 += f3 * 0.95F;
    int i2;
    while (i1 < arrayOfInt.length)
    {
      i2 = arrayOfInt[i1];
      paramCanvas.drawText((String)v.get(i2), A / 5.0F + f2, f1, y);
      f1 += A;
      i1 += 1;
    }
    if (R != null)
    {
      i1 = V;
      i2 = W;
      R.setBounds(0, i1, getRight(), i2);
      R.draw(paramCanvas);
    }
    if (p == 1) {}
    for (String str = "      second";; str = "       seconds")
    {
      paramCanvas.drawText(str, A / 4.0F + f2, B * 1.1F + A * (arrayOfInt.length / 2), z);
      return;
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SnapchatTimePicker.class.getName());
    paramAccessibilityEvent.setScrollable(true);
    paramAccessibilityEvent.setScrollY((n + p) * A);
    paramAccessibilityEvent.setMaxScrollY((o - n) * A);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((!Q) || (!isEnabled())) {
      bool1 = false;
    }
    label230:
    do
    {
      return bool1;
      switch (paramMotionEvent.getAction() & 0xFF)
      {
      default: 
        return false;
      }
      d();
      d.setVisibility(4);
      float f1 = paramMotionEvent.getY();
      H = f1;
      J = f1;
      I = paramMotionEvent.getEventTime();
      U = false;
      q = false;
      if (H < V) {
        if (T == 0) {
          ae.a(2);
        }
      }
      for (;;)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        if (D.d) {
          break label230;
        }
        D.d = true;
        E.d = true;
        a(0);
        bool1 = bool2;
        if (p == getMinValue()) {
          break;
        }
        bool1 = bool2;
        if (p == getMaxValue()) {
          break;
        }
        q = true;
        return true;
        if ((H > W) && (T == 0)) {
          ae.a(1);
        }
      }
      if (!E.d)
      {
        D.d = true;
        E.d = true;
        return true;
      }
      if (H < V)
      {
        a(false, ViewConfiguration.getLongPressTimeout());
        return true;
      }
      bool1 = bool2;
    } while (H <= W);
    a(true, ViewConfiguration.getLongPressTimeout());
    return true;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!Q) {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    do
    {
      return;
      paramInt4 = getMeasuredWidth();
      paramInt3 = getMeasuredHeight();
      paramInt1 = d.getMeasuredWidth();
      paramInt2 = d.getMeasuredHeight();
      paramInt4 = (paramInt4 - paramInt1) / 2;
      paramInt3 = (paramInt3 - paramInt2) / 2;
      d.layout(paramInt4, paramInt3, paramInt1 + paramInt4, paramInt2 + paramInt3);
    } while (!paramBoolean);
    b();
    int[] arrayOfInt = w;
    paramInt1 = arrayOfInt.length;
    paramInt2 = k;
    l = ((int)((getBottom() - getTop() - paramInt1 * paramInt2) / arrayOfInt.length + 0.5F));
    A = (k + l);
    B = (d.getBaseline() + d.getTop() - A * 1);
    C = B;
    c();
    setVerticalFadingEdgeEnabled(true);
    setFadingEdgeLength((getBottom() - getTop() - k) / 2);
    V = ((getHeight() - e) / 2 - S);
    W = (V + S * 2 + e);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (!Q)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    super.onMeasure(a(paramInt1, i), a(paramInt2, g));
    setMeasuredDimension(a(h, getMeasuredWidth(), paramInt1), a(f, getMeasuredHeight(), paramInt2));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if ((!isEnabled()) || (!Q))
    {
      bool = false;
      return bool;
    }
    if (K == null) {
      K = VelocityTracker.obtain();
    }
    K.addMovement(paramMotionEvent);
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      return true;
    case 1: 
      if (G != null) {
        removeCallbacks(G);
      }
      ae.a();
      VelocityTracker localVelocityTracker = K;
      localVelocityTracker.computeCurrentVelocity(1000, N);
      i1 = (int)localVelocityTracker.getYVelocity();
      if (Math.abs(i1) <= M) {
        break label267;
      }
      F = 0;
      if (i1 > 0) {
        D.a(0, 0, i1);
      }
      break;
    }
    for (;;)
    {
      invalidate();
      a(2);
      K.recycle();
      K = null;
      return true;
      if (U) {
        break;
      }
      float f1 = paramMotionEvent.getY();
      if (T != 1) {
        if ((int)Math.abs(f1 - H) > L)
        {
          d();
          a(1);
        }
      }
      for (;;)
      {
        J = f1;
        return true;
        scrollBy(0, (int)(f1 - J));
        invalidate();
      }
      D.a(Integer.MAX_VALUE, 0, i1);
    }
    label267:
    int i1 = (int)paramMotionEvent.getY();
    int i2 = (int)Math.abs(i1 - H);
    paramMotionEvent.getEventTime();
    ViewConfiguration.getTapTimeout();
    if (i2 <= L)
    {
      i1 = i1 / A - 1;
      if (i1 <= 0) {
        break label343;
      }
      a(true);
      ae.b(1);
    }
    for (;;)
    {
      e();
      a(0);
      break;
      label343:
      if (i1 < 0)
      {
        a(false);
        ae.b(2);
      }
      else if (!q)
      {
        ag.a();
      }
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = w;
    if ((!O) && (paramInt2 > 0) && (arrayOfInt[1] <= n))
    {
      C = B;
      return;
    }
    if ((!O) && (paramInt2 < 0) && (arrayOfInt[1] >= o))
    {
      C = B;
      return;
    }
    for (C += paramInt2; C - B > l; C = B)
    {
      label75:
      C -= A;
      paramInt1 = arrayOfInt.length - 1;
      while (paramInt1 > 0)
      {
        arrayOfInt[paramInt1] = arrayOfInt[(paramInt1 - 1)];
        paramInt1 -= 1;
      }
      paramInt2 = arrayOfInt[1] - 1;
      paramInt1 = paramInt2;
      if (O)
      {
        paramInt1 = paramInt2;
        if (paramInt2 < n) {
          paramInt1 = o;
        }
      }
      arrayOfInt[0] = paramInt1;
      c(paramInt1);
      setValueInternal$2563266(arrayOfInt[1]);
      if ((O) || (arrayOfInt[1] > n)) {
        break label75;
      }
    }
    for (;;)
    {
      paramInt2 = arrayOfInt[(arrayOfInt.length - 2)] + 1;
      paramInt1 = paramInt2;
      if (O)
      {
        paramInt1 = paramInt2;
        if (paramInt2 > o) {
          paramInt1 = n;
        }
      }
      arrayOfInt[(arrayOfInt.length - 1)] = paramInt1;
      c(paramInt1);
      setValueInternal$2563266(arrayOfInt[1]);
      if ((!O) && (arrayOfInt[1] >= o)) {
        C = B;
      }
      if (C - B >= -l) {
        break;
      }
      C += A;
      paramInt1 = 0;
      while (paramInt1 < arrayOfInt.length - 1)
      {
        arrayOfInt[paramInt1] = arrayOfInt[(paramInt1 + 1)];
        paramInt1 += 1;
      }
    }
  }
  
  public void setDisplayedValues(String[] paramArrayOfString)
  {
    if (m == paramArrayOfString) {
      return;
    }
    m = paramArrayOfString;
    c();
    b();
    a();
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (!Q) {
      b.setEnabled(paramBoolean);
    }
    if (!Q) {
      c.setEnabled(paramBoolean);
    }
  }
  
  public void setFormatter(c paramc)
  {
    if (paramc == t) {
      return;
    }
    t = paramc;
    b();
    c();
  }
  
  public void setMaxValue(int paramInt)
  {
    if (o == paramInt) {
      return;
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("maxValue must be >= 0");
    }
    o = paramInt;
    if (o < p) {
      p = o;
    }
    if (o - n > w.length) {}
    for (boolean bool = true;; bool = false)
    {
      setWrapSelectorWheel(bool);
      b();
      c();
      a();
      invalidate();
      return;
    }
  }
  
  public void setMinValue(int paramInt)
  {
    if (n == paramInt) {
      return;
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("minValue must be >= 0");
    }
    n = paramInt;
    if (n > p) {
      p = n;
    }
    if (o - n > w.length) {}
    for (boolean bool = true;; bool = false)
    {
      setWrapSelectorWheel(bool);
      b();
      c();
      a();
      invalidate();
      return;
    }
  }
  
  public void setOnLongPressUpdateInterval(long paramLong)
  {
    u = paramLong;
  }
  
  public void setOnScrollListener(d paramd)
  {
    s = paramd;
  }
  
  public void setOnTimeSelectedListener(e parame)
  {
    ag = parame;
  }
  
  public void setOnValueChangedListener(f paramf)
  {
    r = paramf;
  }
  
  public void setValue(int paramInt)
  {
    setValueInternal$2563266(paramInt);
  }
  
  public void setWrapSelectorWheel(boolean paramBoolean)
  {
    if (o - n >= w.length) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (((!paramBoolean) || (i1 != 0)) && (paramBoolean != O)) {
        O = paramBoolean;
      }
      return;
    }
  }
  
  final class a
    extends AccessibilityNodeProvider
  {
    private final Rect b = new Rect();
    private final int[] c = new int[2];
    private int d = Integer.MIN_VALUE;
    
    a() {}
    
    private AccessibilityNodeInfo a(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      AccessibilityNodeInfo localAccessibilityNodeInfo = AccessibilityNodeInfo.obtain();
      localAccessibilityNodeInfo.setClassName(Button.class.getName());
      localAccessibilityNodeInfo.setPackageName(getContext().getPackageName());
      localAccessibilityNodeInfo.setSource(SnapchatTimePicker.this, paramInt1);
      localAccessibilityNodeInfo.setParent(SnapchatTimePicker.this);
      localAccessibilityNodeInfo.setText(paramString);
      localAccessibilityNodeInfo.setClickable(true);
      localAccessibilityNodeInfo.setLongClickable(true);
      localAccessibilityNodeInfo.setEnabled(isEnabled());
      paramString = b;
      paramString.set(paramInt2, paramInt3, paramInt4, paramInt5);
      localAccessibilityNodeInfo.setBoundsInParent(paramString);
      int[] arrayOfInt = c;
      getLocationOnScreen(arrayOfInt);
      paramString.offset(arrayOfInt[0], arrayOfInt[1]);
      localAccessibilityNodeInfo.setBoundsInScreen(paramString);
      if (d != paramInt1) {
        localAccessibilityNodeInfo.addAction(64);
      }
      if (d == paramInt1) {
        localAccessibilityNodeInfo.addAction(128);
      }
      if (isEnabled()) {
        localAccessibilityNodeInfo.addAction(16);
      }
      return localAccessibilityNodeInfo;
    }
    
    private void a(int paramInt1, int paramInt2, String paramString)
    {
      if (((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled())
      {
        AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
        localAccessibilityEvent.setClassName(Button.class.getName());
        localAccessibilityEvent.setPackageName(getContext().getPackageName());
        localAccessibilityEvent.getText().add(paramString);
        localAccessibilityEvent.setEnabled(isEnabled());
        localAccessibilityEvent.setSource(SnapchatTimePicker.this, paramInt1);
        requestSendAccessibilityEvent(SnapchatTimePicker.this, localAccessibilityEvent);
      }
    }
    
    private void a(String paramString, int paramInt, List<AccessibilityNodeInfo> paramList)
    {
      switch (paramInt)
      {
      }
      Object localObject;
      do
      {
        do
        {
          do
          {
            return;
            localObject = c();
          } while ((TextUtils.isEmpty((CharSequence)localObject)) || (!((String)localObject).toString().toLowerCase().contains(paramString)));
          paramList.add(createAccessibilityNodeInfo(3));
          return;
          localObject = SnapchatTimePicker.a(SnapchatTimePicker.this).getText();
          if ((!TextUtils.isEmpty((CharSequence)localObject)) && (((CharSequence)localObject).toString().toLowerCase().contains(paramString)))
          {
            paramList.add(createAccessibilityNodeInfo(2));
            return;
          }
          localObject = SnapchatTimePicker.a(SnapchatTimePicker.this).getText();
        } while ((TextUtils.isEmpty((CharSequence)localObject)) || (!((CharSequence)localObject).toString().toLowerCase().contains(paramString)));
        paramList.add(createAccessibilityNodeInfo(2));
        return;
        localObject = d();
      } while ((TextUtils.isEmpty((CharSequence)localObject)) || (!((String)localObject).toString().toLowerCase().contains(paramString)));
      paramList.add(createAccessibilityNodeInfo(1));
    }
    
    private boolean a()
    {
      return (getWrapSelectorWheel()) || (getValue() > getMinValue());
    }
    
    private boolean b()
    {
      return (getWrapSelectorWheel()) || (getValue() < getMaxValue());
    }
    
    private String c()
    {
      int j = SnapchatTimePicker.j(SnapchatTimePicker.this) - 1;
      int i = j;
      if (SnapchatTimePicker.k(SnapchatTimePicker.this)) {
        i = SnapchatTimePicker.a(SnapchatTimePicker.this, j);
      }
      if (i >= SnapchatTimePicker.l(SnapchatTimePicker.this))
      {
        if (SnapchatTimePicker.m(SnapchatTimePicker.this) == null) {
          return SnapchatTimePicker.b(SnapchatTimePicker.this, i);
        }
        return SnapchatTimePicker.m(SnapchatTimePicker.this)[(i - SnapchatTimePicker.l(SnapchatTimePicker.this))];
      }
      return null;
    }
    
    private String d()
    {
      int j = SnapchatTimePicker.j(SnapchatTimePicker.this) + 1;
      int i = j;
      if (SnapchatTimePicker.k(SnapchatTimePicker.this)) {
        i = SnapchatTimePicker.a(SnapchatTimePicker.this, j);
      }
      if (i <= SnapchatTimePicker.n(SnapchatTimePicker.this))
      {
        if (SnapchatTimePicker.m(SnapchatTimePicker.this) == null) {
          return SnapchatTimePicker.b(SnapchatTimePicker.this, i);
        }
        return SnapchatTimePicker.m(SnapchatTimePicker.this)[(i - SnapchatTimePicker.l(SnapchatTimePicker.this))];
      }
      return null;
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      switch (paramInt1)
      {
      }
      do
      {
        do
        {
          do
          {
            return;
          } while (!a());
          a(paramInt1, paramInt2, c());
          return;
        } while (!((AccessibilityManager)getContext().getSystemService("accessibility")).isEnabled());
        AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
        SnapchatTimePicker.a(SnapchatTimePicker.this).onInitializeAccessibilityEvent(localAccessibilityEvent);
        SnapchatTimePicker.a(SnapchatTimePicker.this).onPopulateAccessibilityEvent(localAccessibilityEvent);
        localAccessibilityEvent.setSource(SnapchatTimePicker.this, 2);
        requestSendAccessibilityEvent(SnapchatTimePicker.this, localAccessibilityEvent);
        return;
      } while (!b());
      a(paramInt1, paramInt2, d());
    }
    
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
    {
      Object localObject;
      switch (paramInt)
      {
      case 0: 
      default: 
        localObject = super.createAccessibilityNodeInfo(paramInt);
      case -1: 
      case 3: 
      case 2: 
        AccessibilityNodeInfo localAccessibilityNodeInfo;
        do
        {
          return (AccessibilityNodeInfo)localObject;
          getScrollX();
          getScrollY();
          getScrollX();
          getRight();
          getLeft();
          getScrollY();
          getBottom();
          getTop();
          localObject = AccessibilityNodeInfo.obtain();
          ((AccessibilityNodeInfo)localObject).setClassName(SnapchatTimePicker.class.getName());
          ((AccessibilityNodeInfo)localObject).setPackageName(getContext().getPackageName());
          ((AccessibilityNodeInfo)localObject).setSource(SnapchatTimePicker.this);
          if (a()) {
            ((AccessibilityNodeInfo)localObject).addChild(SnapchatTimePicker.this, 3);
          }
          ((AccessibilityNodeInfo)localObject).addChild(SnapchatTimePicker.this, 2);
          if (b()) {
            ((AccessibilityNodeInfo)localObject).addChild(SnapchatTimePicker.this, 1);
          }
          ((AccessibilityNodeInfo)localObject).setParent((View)getParentForAccessibility());
          ((AccessibilityNodeInfo)localObject).setEnabled(isEnabled());
          ((AccessibilityNodeInfo)localObject).setScrollable(true);
          if (d != -1) {
            ((AccessibilityNodeInfo)localObject).addAction(64);
          }
          if (d == -1) {
            ((AccessibilityNodeInfo)localObject).addAction(128);
          }
          if (isEnabled())
          {
            if ((getWrapSelectorWheel()) || (getValue() < getMaxValue())) {
              ((AccessibilityNodeInfo)localObject).addAction(4096);
            }
            if ((getWrapSelectorWheel()) || (getValue() > getMinValue())) {
              ((AccessibilityNodeInfo)localObject).addAction(8192);
            }
          }
          return (AccessibilityNodeInfo)localObject;
          localObject = c();
          paramInt = getScrollX();
          int i = getScrollY();
          int j = getScrollX();
          int k = getRight();
          int m = getLeft();
          int n = SnapchatTimePicker.e(SnapchatTimePicker.this);
          return a(3, (String)localObject, paramInt, i, k - m + j, SnapchatTimePicker.i(SnapchatTimePicker.this) + n);
          localAccessibilityNodeInfo = SnapchatTimePicker.a(SnapchatTimePicker.this).createAccessibilityNodeInfo();
          localAccessibilityNodeInfo.setSource(SnapchatTimePicker.this, 2);
          if (d != 2) {
            localAccessibilityNodeInfo.addAction(64);
          }
          localObject = localAccessibilityNodeInfo;
        } while (d != 2);
        localAccessibilityNodeInfo.addAction(128);
        return localAccessibilityNodeInfo;
      }
      return a(1, d(), getScrollX(), SnapchatTimePicker.c(SnapchatTimePicker.this) - SnapchatTimePicker.i(SnapchatTimePicker.this), getScrollX() + (getRight() - getLeft()), getScrollY() + (getBottom() - getTop()));
    }
    
    public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
    {
      if (TextUtils.isEmpty(paramString)) {
        return Collections.emptyList();
      }
      String str = paramString.toLowerCase();
      ArrayList localArrayList = new ArrayList();
      switch (paramInt)
      {
      case 0: 
      default: 
        return super.findAccessibilityNodeInfosByText(paramString, paramInt);
      case -1: 
        a(str, 3, localArrayList);
        a(str, 2, localArrayList);
        a(str, 1, localArrayList);
        return localArrayList;
      }
      a(str, paramInt, localArrayList);
      return localArrayList;
    }
    
    public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      boolean bool3 = false;
      boolean bool2 = false;
      boolean bool1;
      switch (paramInt1)
      {
      case 0: 
      default: 
        bool1 = super.performAction(paramInt1, paramInt2, paramBundle);
      }
      label206:
      label261:
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    do
                                    {
                                      do
                                      {
                                        do
                                        {
                                          do
                                          {
                                            return bool1;
                                            switch (paramInt2)
                                            {
                                            default: 
                                              break;
                                            case 64: 
                                              bool1 = bool2;
                                            }
                                          } while (d == paramInt1);
                                          d = paramInt1;
                                          performAccessibilityAction(64, null);
                                          return true;
                                          bool1 = bool2;
                                        } while (d != paramInt1);
                                        d = Integer.MIN_VALUE;
                                        performAccessibilityAction(128, null);
                                        return true;
                                        bool1 = bool2;
                                      } while (!isEnabled());
                                      if (getWrapSelectorWheel()) {
                                        break label206;
                                      }
                                      bool1 = bool2;
                                    } while (getValue() >= getMaxValue());
                                    SnapchatTimePicker.a(SnapchatTimePicker.this, true);
                                    return true;
                                    bool1 = bool2;
                                  } while (!isEnabled());
                                  if (getWrapSelectorWheel()) {
                                    break label261;
                                  }
                                  bool1 = bool2;
                                } while (getValue() <= getMinValue());
                                SnapchatTimePicker.a(SnapchatTimePicker.this, false);
                                return true;
                                switch (paramInt2)
                                {
                                default: 
                                  return SnapchatTimePicker.a(SnapchatTimePicker.this).performAccessibilityAction(paramInt2, paramBundle);
                                case 1: 
                                  bool1 = bool2;
                                }
                              } while (!isEnabled());
                              bool1 = bool2;
                            } while (SnapchatTimePicker.a(SnapchatTimePicker.this).isFocused());
                            return SnapchatTimePicker.a(SnapchatTimePicker.this).requestFocus();
                            bool1 = bool2;
                          } while (!isEnabled());
                          bool1 = bool2;
                        } while (!SnapchatTimePicker.a(SnapchatTimePicker.this).isFocused());
                        SnapchatTimePicker.a(SnapchatTimePicker.this).clearFocus();
                        return true;
                        bool1 = bool2;
                      } while (!isEnabled());
                      return true;
                      bool1 = bool2;
                    } while (d == paramInt1);
                    d = paramInt1;
                    a(paramInt1, 32768);
                    SnapchatTimePicker.a(SnapchatTimePicker.this).invalidate();
                    return true;
                    bool1 = bool2;
                  } while (d != paramInt1);
                  d = Integer.MIN_VALUE;
                  a(paramInt1, 65536);
                  SnapchatTimePicker.a(SnapchatTimePicker.this).invalidate();
                  return true;
                  switch (paramInt2)
                  {
                  default: 
                    return false;
                  case 16: 
                    bool1 = bool2;
                  }
                } while (!isEnabled());
                SnapchatTimePicker.a(SnapchatTimePicker.this, true);
                a(paramInt1, 1);
                return true;
                bool1 = bool2;
              } while (d == paramInt1);
              d = paramInt1;
              a(paramInt1, 32768);
              invalidate(0, SnapchatTimePicker.c(SnapchatTimePicker.this), getRight(), getBottom());
              return true;
              bool1 = bool2;
            } while (d != paramInt1);
            d = Integer.MIN_VALUE;
            a(paramInt1, 65536);
            invalidate(0, SnapchatTimePicker.c(SnapchatTimePicker.this), getRight(), getBottom());
            return true;
            switch (paramInt2)
            {
            default: 
              return false;
            case 16: 
              bool1 = bool2;
            }
          } while (!isEnabled());
          bool1 = bool3;
          if (paramInt1 == 1) {
            bool1 = true;
          }
          SnapchatTimePicker.a(SnapchatTimePicker.this, bool1);
          a(paramInt1, 1);
          return true;
          bool1 = bool2;
        } while (d == paramInt1);
        d = paramInt1;
        a(paramInt1, 32768);
        invalidate(0, 0, getRight(), SnapchatTimePicker.e(SnapchatTimePicker.this));
        return true;
        bool1 = bool2;
      } while (d != paramInt1);
      d = Integer.MIN_VALUE;
      a(paramInt1, 65536);
      invalidate(0, 0, getRight(), SnapchatTimePicker.e(SnapchatTimePicker.this));
      return true;
    }
  }
  
  final class b
    implements Runnable
  {
    private boolean b;
    
    b() {}
    
    public final void run()
    {
      SnapchatTimePicker.a(SnapchatTimePicker.this, b);
      postDelayed(this, SnapchatTimePicker.h(SnapchatTimePicker.this));
    }
  }
  
  public static abstract interface c
  {
    public abstract String a(int paramInt);
  }
  
  public static abstract interface d {}
  
  public static abstract interface e
  {
    public abstract void a();
  }
  
  public static abstract interface f {}
  
  final class g
    implements Runnable
  {
    private final int b = 1;
    private final int c = 2;
    private int d;
    private int e;
    
    g() {}
    
    public final void a()
    {
      e = 0;
      d = 0;
      removeCallbacks(this);
      if (SnapchatTimePicker.b(SnapchatTimePicker.this))
      {
        SnapchatTimePicker.c(SnapchatTimePicker.this, false);
        invalidate(0, SnapchatTimePicker.c(SnapchatTimePicker.this), getRight(), getBottom());
      }
      SnapchatTimePicker.d(SnapchatTimePicker.this, false);
      if (SnapchatTimePicker.d(SnapchatTimePicker.this)) {
        invalidate(0, 0, getRight(), SnapchatTimePicker.e(SnapchatTimePicker.this));
      }
    }
    
    public final void a(int paramInt)
    {
      a();
      e = 1;
      d = paramInt;
      postDelayed(this, ViewConfiguration.getTapTimeout());
    }
    
    public final void b(int paramInt)
    {
      a();
      e = 2;
      d = paramInt;
      post(this);
    }
    
    public final void run()
    {
      switch (e)
      {
      default: 
        return;
      case 1: 
        switch (d)
        {
        default: 
          return;
        case 1: 
          SnapchatTimePicker.c(SnapchatTimePicker.this, true);
          invalidate(0, SnapchatTimePicker.c(SnapchatTimePicker.this), getRight(), getBottom());
          return;
        }
        SnapchatTimePicker.d(SnapchatTimePicker.this, true);
        invalidate(0, 0, getRight(), SnapchatTimePicker.e(SnapchatTimePicker.this));
        return;
      }
      switch (d)
      {
      default: 
        return;
      case 1: 
        if (!SnapchatTimePicker.b(SnapchatTimePicker.this)) {
          postDelayed(this, ViewConfiguration.getPressedStateDuration());
        }
        SnapchatTimePicker.f(SnapchatTimePicker.this);
        invalidate(0, SnapchatTimePicker.c(SnapchatTimePicker.this), getRight(), getBottom());
        return;
      }
      if (!SnapchatTimePicker.d(SnapchatTimePicker.this)) {
        postDelayed(this, ViewConfiguration.getPressedStateDuration());
      }
      SnapchatTimePicker.g(SnapchatTimePicker.this);
      invalidate(0, 0, getRight(), SnapchatTimePicker.e(SnapchatTimePicker.this));
    }
  }
  
  final class h
  {
    SnapchatTimePicker.a a;
    
    private h()
    {
      if (Build.VERSION.SDK_INT >= 16) {
        a = new SnapchatTimePicker.a(SnapchatTimePicker.this);
      }
    }
    
    public final void a(int paramInt1, int paramInt2)
    {
      if (a != null) {
        a.a(paramInt1, paramInt2);
      }
    }
    
    public final boolean a(int paramInt)
    {
      if (a != null) {
        return a.performAction(paramInt, 64, null);
      }
      return false;
    }
  }
  
  static final class i
    implements SnapchatTimePicker.c
  {
    final StringBuilder a = new StringBuilder();
    char b;
    Formatter c;
    final Object[] d = new Object[1];
    
    i()
    {
      a(Locale.getDefault());
    }
    
    private void a(Locale paramLocale)
    {
      c = new Formatter(a, paramLocale);
      b = b(paramLocale);
    }
    
    private static char b(Locale paramLocale)
    {
      return new DecimalFormatSymbols(paramLocale).getZeroDigit();
    }
    
    public final String a(int paramInt)
    {
      Locale localLocale = Locale.getDefault();
      if (b != b(localLocale)) {
        a(localLocale);
      }
      d[0] = Integer.valueOf(paramInt);
      a.delete(0, a.length());
      c.format("%02d", d);
      return c.toString();
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.SnapchatTimePicker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
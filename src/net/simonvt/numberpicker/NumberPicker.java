package net.simonvt.numberpicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;
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
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import bxt.a;
import bxt.b;
import bxt.c;
import bxu;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;

public class NumberPicker
  extends LinearLayout
{
  private static final k a = new k();
  private static final char[] ah = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1776, 1777, 1778, 1779, 1780, 1781, 1782, 1783, 1784, 1785 };
  private int A;
  private final bxu B;
  private final bxu C;
  private int D;
  private i E;
  private c F;
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
  private boolean V;
  private int W;
  private int aa;
  private int ab;
  private boolean ac;
  private boolean ad;
  private j ae;
  private final h af;
  private int ag = -1;
  private final ImageButton b;
  private final ImageButton c;
  private final EditText d;
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
  private g q;
  private f r;
  private d s;
  private long t = 300L;
  private final SparseArray<String> u = new SparseArray();
  private final int[] v = new int[3];
  private final Paint w;
  private final Drawable x;
  private int y;
  private int z = Integer.MIN_VALUE;
  
  public NumberPicker(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NumberPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, bxt.a.numberPickerStyle);
  }
  
  public NumberPicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, bxt.c.NumberPicker, paramInt, 0);
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
      x = paramAttributeSet.getDrawable(9);
      paramAttributeSet.recycle();
      af = new h();
      if (Q) {
        break label689;
      }
      bool = true;
      label318:
      setWillNotDraw(bool);
      ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(paramInt, this, true);
      paramAttributeSet = new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          NumberPicker.a(NumberPicker.this);
          NumberPicker.b(NumberPicker.this).clearFocus();
          if (paramAnonymousView.getId() == bxt.b.np__increment)
          {
            NumberPicker.a(NumberPicker.this, true);
            return;
          }
          NumberPicker.a(NumberPicker.this, false);
        }
      };
      View.OnLongClickListener local2 = new View.OnLongClickListener()
      {
        public final boolean onLongClick(View paramAnonymousView)
        {
          NumberPicker.a(NumberPicker.this);
          NumberPicker.b(NumberPicker.this).clearFocus();
          if (paramAnonymousView.getId() == bxt.b.np__increment)
          {
            NumberPicker.b(NumberPicker.this, true);
            return true;
          }
          NumberPicker.b(NumberPicker.this, false);
          return true;
        }
      };
      if (Q) {
        break label695;
      }
      b = ((ImageButton)findViewById(bxt.b.np__increment));
      b.setOnClickListener(paramAttributeSet);
      b.setOnLongClickListener(local2);
      label401:
      if (Q) {
        break label703;
      }
      c = ((ImageButton)findViewById(bxt.b.np__decrement));
      c.setOnClickListener(paramAttributeSet);
      c.setOnLongClickListener(local2);
    }
    for (;;)
    {
      d = ((EditText)findViewById(bxt.b.np__numberpicker_input));
      d.setOnFocusChangeListener(new View.OnFocusChangeListener()
      {
        public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            NumberPicker.b(NumberPicker.this).selectAll();
            return;
          }
          NumberPicker.b(NumberPicker.this).setSelection(0, 0);
          NumberPicker.a(NumberPicker.this, paramAnonymousView);
        }
      });
      d.setFilters(new InputFilter[] { new e() });
      d.setRawInputType(2);
      d.setImeOptions(6);
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
      w = paramContext;
      B = new bxu(getContext(), null, (byte)0);
      C = new bxu(getContext(), new DecelerateInterpolator(2.5F));
      f();
      if ((Build.VERSION.SDK_INT >= 16) && (getImportantForAccessibility() == 0)) {
        setImportantForAccessibility(1);
      }
      return;
      bool = false;
      break;
      label689:
      bool = false;
      break label318;
      label695:
      b = null;
      break label401;
      label703:
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
  
  private int a(String paramString)
  {
    if (m == null) {}
    try
    {
      i1 = Integer.parseInt(paramString);
      return i1;
    }
    catch (NumberFormatException paramString)
    {
      try
      {
        int i1 = Integer.parseInt(paramString);
        return i1;
      }
      catch (NumberFormatException paramString)
      {
        for (;;) {}
      }
      paramString = paramString;
    }
    i1 = 0;
    while (i1 < m.length)
    {
      paramString = paramString.toLowerCase();
      if (m[i1].toLowerCase().startsWith(paramString)) {
        return i1 + n;
      }
      i1 += 1;
    }
    return n;
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
      if (!a(B)) {
        a(C);
      }
      D = 0;
      if (paramBoolean) {
        B.a(-y, 300);
      }
      for (;;)
      {
        invalidate();
        return;
        B.a(y, 300);
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
    if (F == null) {
      F = new c();
    }
    for (;;)
    {
      c.a(F, paramBoolean);
      postDelayed(F, paramLong);
      return;
      removeCallbacks(F);
    }
  }
  
  private boolean a(bxu parambxu)
  {
    d = true;
    int i3 = b - c;
    int i1 = A;
    int i2 = y;
    i2 = z - (i1 + i3) % i2;
    if (i2 != 0)
    {
      i1 = i2;
      if (Math.abs(i2) > y / 2) {
        if (i2 <= 0) {
          break label79;
        }
      }
      label79:
      for (i1 = i2 - y;; i1 = i2 + y)
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
    InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    if (localInputMethodManager != null)
    {
      if (Q) {
        d.setVisibility(0);
      }
      d.requestFocus();
      localInputMethodManager.showSoftInput(d, 0);
    }
  }
  
  private void c()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    if ((localInputMethodManager != null) && (localInputMethodManager.isActive(d)))
    {
      localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
      if (Q) {
        d.setVisibility(4);
      }
    }
  }
  
  private void c(int paramInt)
  {
    SparseArray localSparseArray = u;
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
  
  private String d(int paramInt)
  {
    if (s != null) {
      return s.a(paramInt);
    }
    return e(paramInt);
  }
  
  private void d()
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
        float f2 = w.measureText(e(i1));
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
          f1 = w.measureText(m[i2]);
          i3 = i1;
          if (f1 > i1) {
            i3 = (int)f1;
          }
          i2 += 1;
        }
      }
    }
  }
  
  private static String e(int paramInt)
  {
    return String.format(Locale.getDefault(), "%d", new Object[] { Integer.valueOf(paramInt) });
  }
  
  private void e()
  {
    u.clear();
    int[] arrayOfInt = v;
    int i4 = getValue();
    int i1 = 0;
    while (i1 < v.length)
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
  
  private boolean f()
  {
    if (m == null) {}
    for (String str = d(p); (!TextUtils.isEmpty(str)) && (!str.equals(d.getText().toString())); str = m[(p - n)])
    {
      d.setText(str);
      return true;
    }
    return false;
  }
  
  private void g()
  {
    if (F != null) {
      removeCallbacks(F);
    }
    if (E != null) {
      removeCallbacks(E);
    }
    if (G != null) {
      removeCallbacks(G);
    }
    af.a();
  }
  
  private j getSupportAccessibilityNodeProvider()
  {
    return new j((byte)0);
  }
  
  public static final d getTwoDigitFormatter()
  {
    return a;
  }
  
  private boolean h()
  {
    boolean bool = false;
    int i2 = z - A;
    int i1;
    if (i2 != 0)
    {
      D = 0;
      if (Math.abs(i2) <= y / 2) {
        break label75;
      }
      if (i2 <= 0) {
        break label67;
      }
      i1 = -y;
      i1 += i2;
    }
    for (;;)
    {
      C.a(i1, 800);
      invalidate();
      bool = true;
      return bool;
      label67:
      i1 = y;
      break;
      label75:
      i1 = i2;
    }
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
      f();
      e();
      invalidate();
      return;
    }
  }
  
  public void computeScroll()
  {
    bxu localbxu2 = B;
    bxu localbxu1 = localbxu2;
    if (d)
    {
      localbxu2 = C;
      localbxu1 = localbxu2;
      if (!d) {}
    }
    do
    {
      return;
      localbxu1.a();
      int i1 = c;
      if (D == 0) {
        D = a;
      }
      scrollBy(0, i1 - D);
      D = i1;
      if (!d) {
        break;
      }
      if (localbxu1 == B)
      {
        if (!h()) {
          f();
        }
        a(0);
        return;
      }
    } while (T == 1);
    f();
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
      if (i1 >= W) {
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
      if (i1 > aa)
      {
        i1 = 1;
        break;
      }
      i1 = 2;
      break;
      paramMotionEvent.a(i1, 128);
      ab = i1;
      paramMotionEvent.a(i1);
      continue;
      if ((ab != i1) && (ab != -1))
      {
        paramMotionEvent.a(ab, 256);
        paramMotionEvent.a(i1, 128);
        ab = i1;
        paramMotionEvent.a(i1);
        continue;
        paramMotionEvent.a(i1, 256);
        ab = -1;
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
        g();
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
          ag = i1;
          g();
        }
      } while (!B.d);
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
    } while (ag != i1);
    ag = -1;
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
      g();
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
      g();
    }
  }
  
  public AccessibilityNodeProvider getAccessibilityNodeProvider()
  {
    if (!Q) {
      return super.getAccessibilityNodeProvider();
    }
    if (ae == null) {
      ae = new j((byte)0);
    }
    return ae.a;
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
    g();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (!Q) {
      super.onDraw(paramCanvas);
    }
    do
    {
      return;
      float f2 = (getRight() - getLeft()) / 2;
      float f1 = A;
      if ((x != null) && (T == 0))
      {
        if (ad)
        {
          x.setState(PRESSED_ENABLED_STATE_SET);
          x.setBounds(0, 0, getRight(), W);
          x.draw(paramCanvas);
        }
        if (ac)
        {
          x.setState(PRESSED_ENABLED_STATE_SET);
          x.setBounds(0, aa, getRight(), getBottom());
          x.draw(paramCanvas);
        }
      }
      int[] arrayOfInt = v;
      i1 = 0;
      while (i1 < arrayOfInt.length)
      {
        i2 = arrayOfInt[i1];
        String str = (String)u.get(i2);
        if ((i1 != 1) || (d.getVisibility() != 0)) {
          paramCanvas.drawText(str, f2, f1, w);
        }
        f1 += y;
        i1 += 1;
      }
    } while (R == null);
    int i1 = W;
    int i2 = S;
    R.setBounds(0, i1, getRight(), i2 + i1);
    R.draw(paramCanvas);
    i1 = aa;
    i2 = S;
    R.setBounds(0, i1 - i2, getRight(), i1);
    R.draw(paramCanvas);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(NumberPicker.class.getName());
    paramAccessibilityEvent.setScrollable(true);
    paramAccessibilityEvent.setScrollY((n + p) * y);
    paramAccessibilityEvent.setMaxScrollY((o - n) * y);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!Q) || (!isEnabled())) {
      return false;
    }
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      return false;
    }
    g();
    d.setVisibility(4);
    float f1 = paramMotionEvent.getY();
    H = f1;
    J = f1;
    I = paramMotionEvent.getEventTime();
    U = false;
    V = false;
    if (H < W) {
      if (T == 0) {
        af.a(2);
      }
    }
    for (;;)
    {
      getParent().requestDisallowInterceptTouchEvent(true);
      if (B.d) {
        break;
      }
      B.d = true;
      C.d = true;
      a(0);
      return true;
      if ((H > aa) && (T == 0)) {
        af.a(1);
      }
    }
    if (!C.d)
    {
      B.d = true;
      C.d = true;
      return true;
    }
    if (H < W)
    {
      c();
      a(false, ViewConfiguration.getLongPressTimeout());
      return true;
    }
    if (H > aa)
    {
      c();
      a(true, ViewConfiguration.getLongPressTimeout());
      return true;
    }
    V = true;
    if (G == null) {
      G = new b();
    }
    for (;;)
    {
      postDelayed(G, ViewConfiguration.getLongPressTimeout());
      return true;
      removeCallbacks(G);
    }
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
    e();
    int[] arrayOfInt = v;
    paramInt1 = arrayOfInt.length;
    paramInt2 = k;
    l = ((int)((getBottom() - getTop() - paramInt1 * paramInt2) / arrayOfInt.length + 0.5F));
    y = (k + l);
    z = (d.getBaseline() + d.getTop() - y * 1);
    A = z;
    f();
    setVerticalFadingEdgeEnabled(true);
    setFadingEdgeLength((getBottom() - getTop() - k) / 2);
    W = ((getHeight() - e) / 2 - S);
    aa = (W + S * 2 + e);
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
      if (F != null) {
        removeCallbacks(F);
      }
      af.a();
      VelocityTracker localVelocityTracker = K;
      localVelocityTracker.computeCurrentVelocity(1000, N);
      i1 = (int)localVelocityTracker.getYVelocity();
      if (Math.abs(i1) <= M) {
        break label283;
      }
      D = 0;
      if (i1 > 0) {
        B.a(0, 0, i1);
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
          g();
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
      B.a(Integer.MAX_VALUE, 0, i1);
    }
    label283:
    int i1 = (int)paramMotionEvent.getY();
    int i2 = (int)Math.abs(i1 - H);
    paramMotionEvent.getEventTime();
    ViewConfiguration.getTapTimeout();
    if (i2 <= L) {
      if (V)
      {
        V = false;
        b();
      }
    }
    for (;;)
    {
      a(0);
      break;
      i1 = i1 / y - 1;
      if (i1 > 0)
      {
        a(true);
        af.b(1);
      }
      else if (i1 < 0)
      {
        a(false);
        af.b(2);
        continue;
        h();
      }
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = v;
    if ((!O) && (paramInt2 > 0) && (arrayOfInt[1] <= n))
    {
      A = z;
      return;
    }
    if ((!O) && (paramInt2 < 0) && (arrayOfInt[1] >= o))
    {
      A = z;
      return;
    }
    for (A += paramInt2; A - z > l; A = z)
    {
      label75:
      A -= y;
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
        A = z;
      }
      if (A - z >= -l) {
        break;
      }
      A += y;
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
    if (m != null) {
      d.setRawInputType(524289);
    }
    for (;;)
    {
      f();
      e();
      d();
      return;
      d.setRawInputType(2);
    }
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
    d.setEnabled(paramBoolean);
  }
  
  public void setFormatter(d paramd)
  {
    if (paramd == s) {
      return;
    }
    s = paramd;
    e();
    f();
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
    if (o - n > v.length) {}
    for (boolean bool = true;; bool = false)
    {
      setWrapSelectorWheel(bool);
      e();
      f();
      d();
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
    if (o - n > v.length) {}
    for (boolean bool = true;; bool = false)
    {
      setWrapSelectorWheel(bool);
      e();
      f();
      d();
      invalidate();
      return;
    }
  }
  
  public void setOnLongPressUpdateInterval(long paramLong)
  {
    t = paramLong;
  }
  
  public void setOnScrollListener(f paramf)
  {
    r = paramf;
  }
  
  public void setOnValueChangedListener(g paramg)
  {
    q = paramg;
  }
  
  public void setValue(int paramInt)
  {
    setValueInternal$2563266(paramInt);
  }
  
  public void setWrapSelectorWheel(boolean paramBoolean)
  {
    if (o - n >= v.length) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (((!paramBoolean) || (i1 != 0)) && (paramBoolean != O)) {
        O = paramBoolean;
      }
      return;
    }
  }
  
  public static class CustomEditText
    extends EditText
  {
    public CustomEditText(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    public void onEditorAction(int paramInt)
    {
      super.onEditorAction(paramInt);
      if (paramInt == 6) {
        clearFocus();
      }
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
      localAccessibilityNodeInfo.setSource(NumberPicker.this, paramInt1);
      localAccessibilityNodeInfo.setParent(NumberPicker.this);
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
        localAccessibilityEvent.setSource(NumberPicker.this, paramInt1);
        requestSendAccessibilityEvent(NumberPicker.this, localAccessibilityEvent);
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
          localObject = NumberPicker.b(NumberPicker.this).getText();
          if ((!TextUtils.isEmpty((CharSequence)localObject)) && (((CharSequence)localObject).toString().toLowerCase().contains(paramString)))
          {
            paramList.add(createAccessibilityNodeInfo(2));
            return;
          }
          localObject = NumberPicker.b(NumberPicker.this).getText();
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
      int j = NumberPicker.o(NumberPicker.this) - 1;
      int i = j;
      if (NumberPicker.p(NumberPicker.this)) {
        i = NumberPicker.a(NumberPicker.this, j);
      }
      if (i >= NumberPicker.q(NumberPicker.this))
      {
        if (NumberPicker.c(NumberPicker.this) == null) {
          return NumberPicker.b(NumberPicker.this, i);
        }
        return NumberPicker.c(NumberPicker.this)[(i - NumberPicker.q(NumberPicker.this))];
      }
      return null;
    }
    
    private String d()
    {
      int j = NumberPicker.o(NumberPicker.this) + 1;
      int i = j;
      if (NumberPicker.p(NumberPicker.this)) {
        i = NumberPicker.a(NumberPicker.this, j);
      }
      if (i <= NumberPicker.d(NumberPicker.this))
      {
        if (NumberPicker.c(NumberPicker.this) == null) {
          return NumberPicker.b(NumberPicker.this, i);
        }
        return NumberPicker.c(NumberPicker.this)[(i - NumberPicker.q(NumberPicker.this))];
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
        NumberPicker.b(NumberPicker.this).onInitializeAccessibilityEvent(localAccessibilityEvent);
        NumberPicker.b(NumberPicker.this).onPopulateAccessibilityEvent(localAccessibilityEvent);
        localAccessibilityEvent.setSource(NumberPicker.this, 2);
        requestSendAccessibilityEvent(NumberPicker.this, localAccessibilityEvent);
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
          ((AccessibilityNodeInfo)localObject).setClassName(NumberPicker.class.getName());
          ((AccessibilityNodeInfo)localObject).setPackageName(getContext().getPackageName());
          ((AccessibilityNodeInfo)localObject).setSource(NumberPicker.this);
          if (a()) {
            ((AccessibilityNodeInfo)localObject).addChild(NumberPicker.this, 3);
          }
          ((AccessibilityNodeInfo)localObject).addChild(NumberPicker.this, 2);
          if (b()) {
            ((AccessibilityNodeInfo)localObject).addChild(NumberPicker.this, 1);
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
          int n = NumberPicker.h(NumberPicker.this);
          return a(3, (String)localObject, paramInt, i, k - m + j, NumberPicker.n(NumberPicker.this) + n);
          localAccessibilityNodeInfo = NumberPicker.b(NumberPicker.this).createAccessibilityNodeInfo();
          localAccessibilityNodeInfo.setSource(NumberPicker.this, 2);
          if (d != 2) {
            localAccessibilityNodeInfo.addAction(64);
          }
          localObject = localAccessibilityNodeInfo;
        } while (d != 2);
        localAccessibilityNodeInfo.addAction(128);
        return localAccessibilityNodeInfo;
      }
      return a(1, d(), getScrollX(), NumberPicker.f(NumberPicker.this) - NumberPicker.n(NumberPicker.this), getScrollX() + (getRight() - getLeft()), getScrollY() + (getBottom() - getTop()));
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
                                    NumberPicker.a(NumberPicker.this, true);
                                    return true;
                                    bool1 = bool2;
                                  } while (!isEnabled());
                                  if (getWrapSelectorWheel()) {
                                    break label261;
                                  }
                                  bool1 = bool2;
                                } while (getValue() <= getMinValue());
                                NumberPicker.a(NumberPicker.this, false);
                                return true;
                                switch (paramInt2)
                                {
                                default: 
                                  return NumberPicker.b(NumberPicker.this).performAccessibilityAction(paramInt2, paramBundle);
                                case 1: 
                                  bool1 = bool2;
                                }
                              } while (!isEnabled());
                              bool1 = bool2;
                            } while (NumberPicker.b(NumberPicker.this).isFocused());
                            return NumberPicker.b(NumberPicker.this).requestFocus();
                            bool1 = bool2;
                          } while (!isEnabled());
                          bool1 = bool2;
                        } while (!NumberPicker.b(NumberPicker.this).isFocused());
                        NumberPicker.b(NumberPicker.this).clearFocus();
                        return true;
                        bool1 = bool2;
                      } while (!isEnabled());
                      NumberPicker.l(NumberPicker.this);
                      return true;
                      bool1 = bool2;
                    } while (d == paramInt1);
                    d = paramInt1;
                    a(paramInt1, 32768);
                    NumberPicker.b(NumberPicker.this).invalidate();
                    return true;
                    bool1 = bool2;
                  } while (d != paramInt1);
                  d = Integer.MIN_VALUE;
                  a(paramInt1, 65536);
                  NumberPicker.b(NumberPicker.this).invalidate();
                  return true;
                  switch (paramInt2)
                  {
                  default: 
                    return false;
                  case 16: 
                    bool1 = bool2;
                  }
                } while (!isEnabled());
                NumberPicker.a(NumberPicker.this, true);
                a(paramInt1, 1);
                return true;
                bool1 = bool2;
              } while (d == paramInt1);
              d = paramInt1;
              a(paramInt1, 32768);
              invalidate(0, NumberPicker.f(NumberPicker.this), getRight(), getBottom());
              return true;
              bool1 = bool2;
            } while (d != paramInt1);
            d = Integer.MIN_VALUE;
            a(paramInt1, 65536);
            invalidate(0, NumberPicker.f(NumberPicker.this), getRight(), getBottom());
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
          NumberPicker.a(NumberPicker.this, bool1);
          a(paramInt1, 1);
          return true;
          bool1 = bool2;
        } while (d == paramInt1);
        d = paramInt1;
        a(paramInt1, 32768);
        invalidate(0, 0, getRight(), NumberPicker.h(NumberPicker.this));
        return true;
        bool1 = bool2;
      } while (d != paramInt1);
      d = Integer.MIN_VALUE;
      a(paramInt1, 65536);
      invalidate(0, 0, getRight(), NumberPicker.h(NumberPicker.this));
      return true;
    }
  }
  
  final class b
    implements Runnable
  {
    b() {}
    
    public final void run()
    {
      NumberPicker.l(NumberPicker.this);
      NumberPicker.m(NumberPicker.this);
    }
  }
  
  final class c
    implements Runnable
  {
    private boolean b;
    
    c() {}
    
    public final void run()
    {
      NumberPicker.a(NumberPicker.this, b);
      postDelayed(this, NumberPicker.k(NumberPicker.this));
    }
  }
  
  public static abstract interface d
  {
    public abstract String a(int paramInt);
  }
  
  final class e
    extends NumberKeyListener
  {
    e() {}
    
    public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      CharSequence localCharSequence;
      if (NumberPicker.c(NumberPicker.this) == null)
      {
        localCharSequence = super.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
        localObject = localCharSequence;
        if (localCharSequence == null) {
          localObject = paramCharSequence.subSequence(paramInt1, paramInt2);
        }
        paramCharSequence = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + localObject + paramSpanned.subSequence(paramInt4, paramSpanned.length());
        if ("".equals(paramCharSequence)) {
          localObject = paramCharSequence;
        }
        while (NumberPicker.a(NumberPicker.this, paramCharSequence) <= NumberPicker.d(NumberPicker.this)) {
          return (CharSequence)localObject;
        }
        return "";
      }
      paramCharSequence = String.valueOf(paramCharSequence.subSequence(paramInt1, paramInt2));
      if (TextUtils.isEmpty(paramCharSequence)) {
        return "";
      }
      paramCharSequence = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + paramCharSequence + paramSpanned.subSequence(paramInt4, paramSpanned.length());
      paramSpanned = String.valueOf(paramCharSequence).toLowerCase();
      Object localObject = NumberPicker.c(NumberPicker.this);
      paramInt2 = localObject.length;
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        localCharSequence = localObject[paramInt1];
        if (localCharSequence.toLowerCase().startsWith(paramSpanned))
        {
          NumberPicker.a(NumberPicker.this, paramCharSequence.length(), localCharSequence.length());
          return localCharSequence.subSequence(paramInt3, localCharSequence.length());
        }
        paramInt1 += 1;
      }
      return "";
    }
    
    protected final char[] getAcceptedChars()
    {
      return NumberPicker.a();
    }
    
    public final int getInputType()
    {
      return 1;
    }
  }
  
  public static abstract interface f {}
  
  public static abstract interface g {}
  
  final class h
    implements Runnable
  {
    private final int b = 1;
    private final int c = 2;
    private int d;
    private int e;
    
    h() {}
    
    public final void a()
    {
      e = 0;
      d = 0;
      removeCallbacks(this);
      if (NumberPicker.e(NumberPicker.this))
      {
        NumberPicker.c(NumberPicker.this, false);
        invalidate(0, NumberPicker.f(NumberPicker.this), getRight(), getBottom());
      }
      NumberPicker.d(NumberPicker.this, false);
      if (NumberPicker.g(NumberPicker.this)) {
        invalidate(0, 0, getRight(), NumberPicker.h(NumberPicker.this));
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
          NumberPicker.c(NumberPicker.this, true);
          invalidate(0, NumberPicker.f(NumberPicker.this), getRight(), getBottom());
          return;
        }
        NumberPicker.d(NumberPicker.this, true);
        invalidate(0, 0, getRight(), NumberPicker.h(NumberPicker.this));
        return;
      }
      switch (d)
      {
      default: 
        return;
      case 1: 
        if (!NumberPicker.e(NumberPicker.this)) {
          postDelayed(this, ViewConfiguration.getPressedStateDuration());
        }
        NumberPicker.i(NumberPicker.this);
        invalidate(0, NumberPicker.f(NumberPicker.this), getRight(), getBottom());
        return;
      }
      if (!NumberPicker.g(NumberPicker.this)) {
        postDelayed(this, ViewConfiguration.getPressedStateDuration());
      }
      NumberPicker.j(NumberPicker.this);
      invalidate(0, 0, getRight(), NumberPicker.h(NumberPicker.this));
    }
  }
  
  final class i
    implements Runnable
  {
    private int b;
    private int c;
    
    i() {}
    
    public final void run()
    {
      NumberPicker.b(NumberPicker.this).setSelection(b, c);
    }
  }
  
  final class j
  {
    NumberPicker.a a;
    
    private j()
    {
      if (Build.VERSION.SDK_INT >= 16) {
        a = new NumberPicker.a(NumberPicker.this);
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
  
  static final class k
    implements NumberPicker.d
  {
    final StringBuilder a = new StringBuilder();
    char b;
    Formatter c;
    final Object[] d = new Object[1];
    
    k()
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
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui.caption;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Handler;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView.BufferType;
import aqn;
import aqp;
import aqr;
import ard;
import ard.a;
import awf;
import bbo;
import bbx;
import bch;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

public class FatCaptionEditText
  extends CaptionEditText
  implements ard.a<FatCaptionEditText>
{
  private final GestureDetector A;
  private final ScaleGestureDetector B;
  private boolean C = false;
  private CaptionColorRange D;
  private ForegroundColorSpan E;
  protected double q;
  protected double r;
  protected float s = 0.0F;
  protected float t = 1.0F;
  protected double u = -1.0D;
  protected double v = -1.0D;
  protected boolean w = false;
  protected boolean x = false;
  public boolean y = false;
  private ard<FatCaptionEditText> z = new ard(this);
  
  public FatCaptionEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setLayerType(1, null);
    setInputType(147649);
    setGravity(51);
    A = new GestureDetector(paramContext, new GestureDetector.SimpleOnGestureListener()
    {
      public final void onLongPress(MotionEvent paramAnonymousMotionEvent)
      {
        if ((k) && (!y))
        {
          FatCaptionEditText.a(FatCaptionEditText.this);
          y = true;
          performLongClick();
        }
      }
      
      public final boolean onSingleTapConfirmed(MotionEvent paramAnonymousMotionEvent)
      {
        y = false;
        FatCaptionEditText.a(FatCaptionEditText.this);
        return true;
      }
    });
    B = new ScaleGestureDetector(paramContext, new ScaleGestureDetector.OnScaleGestureListener()
    {
      public final boolean onScale(ScaleGestureDetector paramAnonymousScaleGestureDetector)
      {
        w = true;
        x = true;
        m = false;
        FatCaptionEditText.a(FatCaptionEditText.this, u * paramAnonymousScaleGestureDetector.getScaleFactor());
        return true;
      }
      
      public final boolean onScaleBegin(ScaleGestureDetector paramAnonymousScaleGestureDetector)
      {
        FatCaptionEditText.a(FatCaptionEditText.this, true);
        return true;
      }
      
      public final void onScaleEnd(ScaleGestureDetector paramAnonymousScaleGestureDetector)
      {
        FatCaptionEditText.a(FatCaptionEditText.this, false);
      }
    });
    p = new TextWatcher()
    {
      private int b = 0;
      
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        int i = 1;
        if ((f) || (FatCaptionEditText.b(FatCaptionEditText.this))) {
          return;
        }
        y = false;
        if (FatCaptionEditText.a(paramAnonymousEditable))
        {
          b(true);
          return;
        }
        paramAnonymousEditable = paramAnonymousEditable.toString();
        if (paramAnonymousEditable.length() > b) {}
        for (;;)
        {
          if ((i != 0) && (c != null)) {
            c.a(paramAnonymousEditable);
          }
          b = paramAnonymousEditable.length();
          if ((!h) || (FatCaptionEditText.this.i)) {
            break;
          }
          bbo.a().a(new bbx(-1));
          return;
          i = 0;
        }
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    };
    addTextChangedListener(p);
    setOnLongClickListener(new aqp());
  }
  
  private void a(double paramDouble)
  {
    double d;
    if (paramDouble > q)
    {
      d = q;
      if (!k) {
        break label50;
      }
      u = d;
    }
    for (;;)
    {
      e();
      return;
      d = paramDouble;
      if (paramDouble >= r) {
        break;
      }
      d = r;
      break;
      label50:
      v = d;
    }
  }
  
  private void a(Editable paramEditable, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = (ForegroundColorSpan[])paramEditable.getSpans(0, getText().length(), ForegroundColorSpan.class);
    Object localObject2 = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    int i4 = localObject1.length;
    int j = 0;
    int k = paramInt3;
    int n = paramInt2;
    if (j < i4)
    {
      Object localObject3 = localObject1[j];
      int i3 = paramEditable.getSpanStart(localObject3);
      int i2 = paramEditable.getSpanEnd(localObject3);
      int i5 = ((ForegroundColorSpan)localObject3).getForegroundColor();
      if ((i5 == paramInt1) && (i3 <= paramInt2) && (i2 >= paramInt3)) {
        return;
      }
      int i1 = 0;
      int i = i1;
      int m = n;
      if (i3 < paramInt2)
      {
        i = i1;
        m = n;
        if (i2 > paramInt2)
        {
          i = 1;
          if (paramInt1 == i5) {
            break label277;
          }
          localArrayList.add(new CaptionColorRange(i5, i3, paramInt2));
          m = n;
        }
      }
      label181:
      i1 = i;
      n = k;
      if (i3 < paramInt3)
      {
        i1 = i;
        n = k;
        if (i2 > paramInt3)
        {
          i1 = 1;
          if (paramInt1 == i5) {
            break label284;
          }
          localArrayList.add(new CaptionColorRange(i5, paramInt3, i2));
        }
      }
      label277:
      label284:
      for (n = k;; n = i2)
      {
        if (i1 != 0) {
          ((List)localObject2).add(localObject3);
        }
        j += 1;
        k = n;
        n = m;
        break;
        m = i3;
        break label181;
      }
    }
    localArrayList.add(new CaptionColorRange(paramInt1, n, k));
    localObject1 = ((List)localObject2).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ForegroundColorSpan)((Iterator)localObject1).next();
      ((ForegroundColorSpan)localObject2).getForegroundColor();
      paramEditable.getSpanStart(localObject2);
      paramEditable.getSpanEnd(localObject2);
      paramEditable.removeSpan(localObject2);
    }
    a(paramEditable, localArrayList);
  }
  
  private void a(Editable paramEditable, List<CaptionColorRange> paramList)
  {
    paramEditable = new SpannableString(paramEditable);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      CaptionColorRange localCaptionColorRange = (CaptionColorRange)paramList.next();
      int i = a;
      i = b;
      i = c;
      E = new ForegroundColorSpan(a);
      paramEditable.setSpan(E, b, c, 34);
    }
    setText(paramEditable, TextView.BufferType.SPANNABLE);
  }
  
  protected static boolean a(Editable paramEditable)
  {
    int i = paramEditable.toString().lastIndexOf('\n');
    if (i != -1)
    {
      paramEditable.replace(i, i + 1, "");
      return true;
    }
    return false;
  }
  
  private FatCaptionEditText getDraggableObjectAtPoint$3929eafb()
  {
    FatCaptionEditText localFatCaptionEditText = this;
    if (!l) {
      localFatCaptionEditText = null;
    }
    return localFatCaptionEditText;
  }
  
  private void h()
  {
    Object localObject1 = getText().toString();
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      a(q);
      return;
    }
    StringTokenizer localStringTokenizer = new StringTokenizer((String)localObject1);
    localObject1 = "";
    Object localObject2;
    if (localStringTokenizer.hasMoreTokens())
    {
      localObject2 = localStringTokenizer.nextToken();
      if (getPaint().measureText((String)localObject2) <= getPaint().measureText((String)localObject1)) {
        break label134;
      }
      localObject1 = localObject2;
    }
    label134:
    for (;;)
    {
      break;
      localObject2 = getContext().getResources().getDisplayMetrics();
      float f = getPaint().getTextSize() / getPaint().measureText((String)localObject1);
      a((awf.a((DisplayMetrics)localObject2, h) - getPaddingLeft() - getPaddingRight() - 15) * f);
      return;
    }
  }
  
  protected final void a(boolean paramBoolean)
  {
    if (C) {
      return;
    }
    k = true;
    e();
    g();
    if (!paramBoolean)
    {
      Runnable local4 = new Runnable()
      {
        public final void run()
        {
          if ((!a) && (k))
          {
            d = -1;
            a(true);
          }
        }
      };
      new Handler().postDelayed(local4, 600L);
      if (d == -1)
      {
        getKeyboardManager().toggleSoftInput(2, 0);
        a();
        return;
      }
    }
    super.a(paramBoolean);
    f = true;
    setMaxHeight(d - c.getPreviewCloseButtonBottom());
  }
  
  protected final boolean a(MotionEvent paramMotionEvent)
  {
    boolean bool = B.onTouchEvent(paramMotionEvent);
    if (C) {}
    do
    {
      return bool;
      bool = A.onTouchEvent(paramMotionEvent);
    } while (y);
    return super.a(paramMotionEvent);
  }
  
  protected final void b()
  {
    setRotation(0.0F);
    setScaleX(1.0F);
    setScaleY(1.0F);
    a(0, getCaptionEditPosition());
  }
  
  protected final void b(MotionEvent paramMotionEvent)
  {
    z.a(paramMotionEvent);
  }
  
  public final void b(boolean paramBoolean)
  {
    k = false;
    y = false;
    if (w)
    {
      v = u;
      f();
      w = false;
    }
    g();
    ((Activity)getContext()).getWindow().setSoftInputMode(16);
    getKeyboardManager().hideSoftInputFromWindow(getWindowToken(), 0);
    setRotation(s);
    setScaleX(t);
    setScaleY(t);
    if (TextUtils.isEmpty(getText())) {
      setVisibility(4);
    }
    clearFocus();
    getRootView().requestFocus();
    setCursorVisible(false);
    if (paramBoolean)
    {
      Animation localAnimation = getCloseAnimation();
      if (localAnimation != null) {
        startAnimation(localAnimation);
      }
    }
    for (;;)
    {
      bbo.a().a(new bch(false));
      if (!TextUtils.isEmpty(getText()))
      {
        d();
        setMaxHeight(n + getHeight() - o);
      }
      return;
      a((int)getLastSelectedPositionX(), (int)getLastSelectedPositionY());
    }
  }
  
  protected void c()
  {
    b();
    super.c();
    setSelection(getText().length());
    setCursorVisible(true);
    setMaxHeight(d - c.getPreviewCloseButtonBottom());
  }
  
  public final boolean c(MotionEvent paramMotionEvent)
  {
    Matrix localMatrix = new Matrix();
    getMatrix().invert(localMatrix);
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = paramMotionEvent.getX();
    arrayOfFloat[1] = paramMotionEvent.getY();
    localMatrix.mapPoints(arrayOfFloat);
    float f4 = getResources().getDimension(2131296322) / t / 2.0F;
    float f1 = getHeight() / 2;
    float f2 = Math.max(f1, f4);
    float f3 = getWidth() / 2;
    f4 = Math.max(f3, f4);
    return new RectF(f3 - f4, f1 - f2, f4 + f3, f1 + f2).contains(arrayOfFloat[0], arrayOfFloat[1]);
  }
  
  protected final void e()
  {
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    if (k) {
      if (u < 0.0D) {
        h();
      }
    }
    do
    {
      do
      {
        return;
      } while (Math.abs(u - getTextSize()) <= 1.0D);
      setTextSize(1, (float)u / density);
      return;
      if (v < 0.0D)
      {
        h();
        return;
      }
    } while (Math.abs(v - getTextSize()) <= 1.0D);
    setTextSize(1, (float)v / density);
  }
  
  protected final void f()
  {
    t = 1.0F;
    s = 0.0F;
    setCaptionPositionX(0.0F);
  }
  
  protected final void g()
  {
    if (k) {}
    for (int i = -1;; i = -2)
    {
      setLayoutParams(new FrameLayout.LayoutParams(i, -2));
      invalidate();
      return;
    }
  }
  
  protected aqn getAnalyticsDetails()
  {
    CaptionTypeEnums localCaptionTypeEnums = CaptionTypeEnums.FAT_CAPTION_TYPE;
    boolean bool2 = m;
    if (getColorSpans().size() > 0) {}
    for (boolean bool1 = true;; bool1 = false) {
      return new aqn(localCaptionTypeEnums, bool2, bool1, x);
    }
  }
  
  protected int getCaptionEditPosition()
  {
    return d - Math.min(getHeight(), d - c.getPreviewCloseButtonBottom());
  }
  
  protected Animation getCloseAnimation()
  {
    if (TextUtils.isEmpty(getText())) {
      return new CaptionEditText.a(this, false);
    }
    return new CaptionEditText.b(this, 0, (int)getLastSelectedPositionX(), getCaptionEditPosition(), Math.min((int)getLastSelectedPositionY(), n));
  }
  
  protected ArrayList<CaptionColorRange> getColorSpans()
  {
    ArrayList localArrayList = new ArrayList();
    ForegroundColorSpan[] arrayOfForegroundColorSpan = (ForegroundColorSpan[])getText().getSpans(0, getText().length(), ForegroundColorSpan.class);
    int i = arrayOfForegroundColorSpan.length;
    int k = arrayOfForegroundColorSpan.length;
    int j = 0;
    i = 0;
    while (j < k)
    {
      ForegroundColorSpan localForegroundColorSpan = arrayOfForegroundColorSpan[j];
      localForegroundColorSpan.getForegroundColor();
      getText().getSpanStart(localForegroundColorSpan);
      getText().getSpanEnd(localForegroundColorSpan);
      localArrayList.add(new CaptionColorRange(localForegroundColorSpan.getForegroundColor(), getText().getSpanStart(localForegroundColorSpan), getText().getSpanEnd(localForegroundColorSpan)));
      j += 1;
      i += 1;
    }
    return localArrayList;
  }
  
  protected double getMaxFontSize()
  {
    return q;
  }
  
  protected Animation getOpenAnimation()
  {
    return new CaptionEditText.b(this, (int)getLastSelectedPositionX(), 0, (int)getLastSelectedPositionY(), getCaptionEditPosition());
  }
  
  public void setColor(int paramInt)
  {
    y = false;
    int k = getSelectionStart();
    int j = getSelectionEnd();
    if ((k != -1) && (j != -1)) {
      if (k != j) {
        break label187;
      }
    }
    label187:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        j = getText().length();
        k = 0;
      }
      if ((D == null) || (D.b != k) || (D.c != j) || (D.a == paramInt)) {
        break label200;
      }
      if (E != null) {
        getText().removeSpan(E);
      }
      E = new ForegroundColorSpan(paramInt);
      D = new CaptionColorRange(paramInt, k, j);
      getText().setSpan(E, k, j, 34);
      setText(getText(), TextView.BufferType.SPANNABLE);
      if (i == 0) {
        break;
      }
      setSelection(getText().length());
      return;
    }
    setSelection(k, j);
    return;
    label200:
    if (D == null)
    {
      if (i == 0) {
        break label274;
      }
      getText().clearSpans();
      List localList = Collections.singletonList(new CaptionColorRange(paramInt, 0, j));
      a(getText(), localList);
      setSelection(getText().length());
    }
    for (;;)
    {
      D = new CaptionColorRange(paramInt, k, j);
      return;
      label274:
      a(getText(), paramInt, k, j);
      setSelection(k, j);
    }
  }
  
  protected void setColorSpans(ArrayList<CaptionColorRange> paramArrayList)
  {
    SpannableString localSpannableString = new SpannableString(getText());
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      CaptionColorRange localCaptionColorRange = (CaptionColorRange)paramArrayList.next();
      if (c <= getText().length()) {
        localSpannableString.setSpan(new ForegroundColorSpan(a), b, c, 34);
      }
    }
    setText(localSpannableString, TextView.BufferType.SPANNABLE);
  }
  
  protected void setMaxFontSize(double paramDouble)
  {
    q = paramDouble;
  }
  
  protected void setMinFontSize(double paramDouble)
  {
    r = paramDouble;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCaptionEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
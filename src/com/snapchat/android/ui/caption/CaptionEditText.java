package com.snapchat.android.ui.caption;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.view.MotionEventCompat;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import apo;
import aps;
import ban;
import bbh;
import com.snapchat.android.Timber;
import com.squareup.otto.Bus;
import java.util.ArrayList;

public abstract class CaptionEditText
  extends EditText
{
  private static final double q = Math.tan(Math.toRadians(30.0D));
  private ArrayList<CaptionColorRange> A = new ArrayList();
  boolean a = false;
  protected IMMResult b = new IMMResult();
  protected aps c;
  protected int d = -1;
  protected boolean e = false;
  protected boolean f = false;
  boolean g = false;
  protected boolean h = false;
  boolean i;
  protected int j = -1;
  protected boolean k = false;
  protected boolean l = false;
  protected boolean m = false;
  protected int n = -1;
  protected int o = -1;
  protected TextWatcher p;
  private InputMethodManager r;
  private boolean s = false;
  private float t;
  private float u;
  private float v;
  private float w;
  private float x;
  private float y;
  private float z;
  
  public CaptionEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt == 0) || (paramAnonymousInt == 6)) {
          b(true);
        }
        return false;
      }
    });
    x = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    setVisibility(4);
    clearFocus();
    getRootView().requestFocus();
  }
  
  protected final void a()
  {
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  protected final void a(float paramFloat1, float paramFloat2)
  {
    setCaptionPositionX(paramFloat1);
    setCaptionPositionY(paramFloat2);
  }
  
  protected final void a(int paramInt1, int paramInt2)
  {
    setX(paramInt1);
    setY(paramInt2);
  }
  
  protected void a(boolean paramBoolean)
  {
    b();
    k = true;
    s = false;
    setVisibility(0);
    setAlpha(1.0F);
    invalidate();
    if (l)
    {
      l = false;
      return;
    }
    requestFocus();
    setCursorVisible(false);
    if (paramBoolean) {
      setY((int)getLastSelectedPositionY());
    }
    for (Object localObject = new a(true);; localObject = getOpenAnimation())
    {
      startAnimation((Animation)localObject);
      r.showSoftInput(this, 2, b);
      setSelection(getText().length());
      setCursorVisible(true);
      ban.a().a(new bbh(true));
      return;
    }
  }
  
  protected boolean a(MotionEvent paramMotionEvent)
  {
    if (MotionEventCompat.getActionMasked(paramMotionEvent) == 1)
    {
      if (!s)
      {
        int i1 = getOffsetForPosition(paramMotionEvent.getX(), paramMotionEvent.getY() - getCaptionEditPosition());
        if (i1 >= 0) {
          setSelection(i1);
        }
      }
      s = false;
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  protected abstract void b();
  
  protected abstract void b(MotionEvent paramMotionEvent);
  
  public abstract void b(boolean paramBoolean);
  
  protected void c()
  {
    k = true;
    s = false;
    requestFocus();
    ban.a().a(new bbh(true));
    r.showSoftInput(this, 2, b);
  }
  
  public boolean c(MotionEvent paramMotionEvent)
  {
    return (paramMotionEvent.getRawY() > getTop() - 75) && (paramMotionEvent.getY() < getBottom() + 75);
  }
  
  public final void d()
  {
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    n = Math.min((int)(heightPixels / 2.0F + widthPixels * 1.5F / 2.0F - getHeight()), heightPixels - getHeight());
    o = Math.max((int)(heightPixels / 2.0F - widthPixels * 1.5F / 2.0F), 0);
  }
  
  protected abstract apo getAnalyticsDetails();
  
  protected abstract int getCaptionEditPosition();
  
  protected abstract Animation getCloseAnimation();
  
  protected ArrayList<CaptionColorRange> getColorSpans()
  {
    return A;
  }
  
  protected int getKeyboardHeight()
  {
    return d;
  }
  
  protected InputMethodManager getKeyboardManager()
  {
    return r;
  }
  
  protected float[] getLastSelectedCenterPoint()
  {
    return new float[] { getLastSelectedPositionX() + getWidth() / 2, getLastSelectedPositionY() + getHeight() / 2 };
  }
  
  protected float getLastSelectedPositionX()
  {
    return t;
  }
  
  protected float getLastSelectedPositionY()
  {
    return u;
  }
  
  protected abstract Animation getOpenAnimation();
  
  public boolean onKeyPreIme(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((k) && (paramKeyEvent.getAction() == 1) && (paramInt == 4)) {
      b(true);
    }
    if ((k) && (!a) && (paramInt == 67) && (TextUtils.isEmpty(getText()))) {
      b(true);
    }
    return super.onKeyPreIme(paramInt, paramKeyEvent);
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    s = true;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (k)
    {
      setVisibility(0);
      r.showSoftInput(this, 2, b);
      requestFocus();
    }
    while ((TextUtils.isEmpty(getText())) || (!g) || (getTop() + paramInt2 < n)) {
      return;
    }
    post(new Runnable()
    {
      public final void run()
      {
        d();
        int i = Math.min((int)getLastSelectedPositionY(), n);
        if (i != getTop()) {
          setCaptionPositionY(i);
        }
        setVisibility(0);
      }
    }
    {
      public final void run()
      {
        setVisibility(4);
        setY(0.0F);
        a.postDelayed(b, 10L);
      }
    });
    g = false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = true;
    boolean bool1 = false;
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    if ((hasFocus()) && (k))
    {
      bool1 = a(paramMotionEvent);
      return bool1;
    }
    switch (i1)
    {
    }
    for (;;)
    {
      bool1 = bool2;
      if (k) {
        break;
      }
      b(paramMotionEvent);
      return true;
      v = paramMotionEvent.getRawY();
      w = paramMotionEvent.getRawX();
      d();
      continue;
      float f1 = paramMotionEvent.getRawY();
      float f2 = paramMotionEvent.getRawX();
      float f3 = f2 - w;
      float f4 = f1 - v;
      y += Math.abs(f3);
      z += Math.abs(f4);
      if ((Math.abs(f3) >= x) || (Math.abs(f4) >= x) || (y >= x) || (z >= x)) {
        l = true;
      }
      if (!m)
      {
        if (Math.abs(y) > z * q) {
          bool1 = true;
        }
        m = bool1;
      }
      v = f1;
      w = f2;
      continue;
      y = 0.0F;
      z = 0.0F;
      if (l) {
        l = false;
      } else {
        a(false);
      }
    }
  }
  
  protected void setCaptionPositionX(float paramFloat)
  {
    setX(paramFloat);
    t = paramFloat;
  }
  
  protected void setCaptionPositionY(float paramFloat)
  {
    setY(paramFloat);
    u = paramFloat;
  }
  
  protected void setColorSpans(ArrayList<CaptionColorRange> paramArrayList)
  {
    A = paramArrayList;
  }
  
  public void setInterface(aps paramaps)
  {
    c = paramaps;
  }
  
  protected void setIsVideoSnap(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  protected void setKeyboardHeight(int paramInt)
  {
    d = paramInt;
  }
  
  protected void setKeyboardManager(InputMethodManager paramInputMethodManager)
  {
    r = paramInputMethodManager;
  }
  
  protected void setLandscapeMode(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  protected void setMaxTextLengthInputFilter(int paramInt)
  {
    Timber.c("CaptionEditText", "Set Input filter with max text length: " + paramInt, new Object[0]);
    setFilters(new InputFilter[] { new InputFilter.LengthFilter(paramInt) });
    j = paramInt;
  }
  
  class IMMResult
    extends ResultReceiver
  {
    public IMMResult()
    {
      super();
    }
    
    public void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      Timber.c("CaptionEditText", "CaptionDebug: result from IME is %d", new Object[] { Integer.valueOf(paramInt) });
      if ((paramInt == 2) || (paramInt == 0)) {
        CaptionEditText.a(CaptionEditText.this, true);
      }
      while ((paramInt != 3) && (paramInt != 1)) {
        return;
      }
      CaptionEditText.a(CaptionEditText.this, false);
    }
  }
  
  public final class a
    extends AlphaAnimation
  {
    a(final boolean paramBoolean) {}
  }
  
  public final class b
    extends TranslateAnimation
  {
    b(int paramInt1, final int paramInt2, int paramInt3, final int paramInt4)
    {
      super(paramInt1, 0, paramInt2, 0, paramInt3, 0, paramInt4);
      setDuration(410L);
      setFillAfter(true);
      setInterpolator(new DecelerateInterpolator());
      a(0, 0);
      setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (b)
          {
            setVisibility(0);
            setAlpha(1.0F);
            setCursorVisible(true);
          }
          for (;;)
          {
            invalidate();
            a(paramInt2, paramInt4);
            clearAnimation();
            f = false;
            e = false;
            CaptionEditText.a(CaptionEditText.this);
            return;
            setVisibility(4);
            setAlpha(0.0F);
          }
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation)
        {
          e = true;
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
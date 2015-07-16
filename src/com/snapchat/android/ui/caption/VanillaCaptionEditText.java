package com.snapchat.android.ui.caption;

import android.app.Activity;
import android.content.Context;
import android.graphics.Matrix;
import android.os.Handler;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import aqn;
import aqr;
import ard;
import ard.a;
import bbo;
import bbx;
import bch;
import com.squareup.otto.Bus;

public class VanillaCaptionEditText
  extends CaptionEditText
  implements ard.a<VanillaCaptionEditText>
{
  int q;
  private ard<VanillaCaptionEditText> r = new ard(this);
  private int s;
  
  public VanillaCaptionEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setInputType(16577);
    p = new TextWatcher()
    {
      private int b = 0;
      
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (f) {}
        label74:
        label135:
        label257:
        do
        {
          return;
          String str2 = paramAnonymousEditable.toString();
          VanillaCaptionEditText localVanillaCaptionEditText = VanillaCaptionEditText.this;
          String str1 = str2;
          if (localVanillaCaptionEditText.getPaint().measureText(str1) > 0.975F * q) {}
          for (int i = 1;; i = 0)
          {
            if (i == 0) {
              break label74;
            }
            str1 = str1.substring(0, str1.length() - 1);
            break;
          }
          if (!TextUtils.equals(str2, str1))
          {
            setMaxTextLengthInputFilter(str1.length());
            f = true;
            paramAnonymousEditable.clear();
            paramAnonymousEditable.append(str1);
            j = str1.length();
            f = false;
            if (h)
            {
              if (!e()) {
                continue;
              }
              bbo.a().a(new bbx(6));
            }
          }
          else
          {
            if (j > 0) {
              j = Math.max(j, str2.length());
            }
            if (str2.length() <= b) {
              break label257;
            }
          }
          for (i = 1;; i = 0)
          {
            b = str2.length();
            if ((i == 0) || (c == null)) {
              break label135;
            }
            c.a(str2);
            break label135;
            break;
          }
        } while (VanillaCaptionEditText.this.i);
        bbo.a().a(new bbx(-1));
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    };
    addTextChangedListener(p);
  }
  
  private VanillaCaptionEditText getDraggableObjectAtPoint$30a38aa3()
  {
    return this;
  }
  
  protected final void a(boolean paramBoolean)
  {
    k = true;
    if (!paramBoolean)
    {
      Runnable local2 = new Runnable()
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
      new Handler().postDelayed(local2, 600L);
      if (d == -1)
      {
        getKeyboardManager().toggleSoftInput(2, 0);
        a();
        return;
      }
    }
    super.a(paramBoolean);
    f = true;
  }
  
  protected final void b()
  {
    setGravity(3);
  }
  
  protected final void b(MotionEvent paramMotionEvent)
  {
    r.a(paramMotionEvent);
  }
  
  public final void b(boolean paramBoolean)
  {
    k = false;
    boolean bool = a;
    getKeyboardManager().hideSoftInputFromWindow(getWindowToken(), 0, b);
    if ((TextUtils.isEmpty(getText())) || (bool)) {
      setVisibility(4);
    }
    clearFocus();
    getRootView().requestFocus();
    setCursorVisible(false);
    setGravity(17);
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
      return;
      if (!TextUtils.isEmpty(getText()))
      {
        setY((int)getLastSelectedPositionY());
        setVisibility(0);
      }
    }
  }
  
  protected final void c()
  {
    ((Activity)getContext()).getWindow().setSoftInputMode(16);
    super.c();
    setGravity(3);
    requestFocus();
    setSelection(getText().length());
    setCursorVisible(true);
  }
  
  public final boolean c(MotionEvent paramMotionEvent)
  {
    Matrix localMatrix = new Matrix();
    getMatrix().invert(localMatrix);
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = paramMotionEvent.getX();
    arrayOfFloat[1] = paramMotionEvent.getY();
    localMatrix.mapPoints(arrayOfFloat);
    return (arrayOfFloat[1] < getHeight()) && (arrayOfFloat[1] > 0.0F);
  }
  
  protected final boolean e()
  {
    return getPaint().measureText(getText().toString()) > 0.975F * Math.min(q, s);
  }
  
  protected aqn getAnalyticsDetails()
  {
    return new aqn(CaptionTypeEnums.NON_FAT_VANILLA_CAPTION_TYPE, false, false, false);
  }
  
  protected int getCaptionEditPosition()
  {
    return d - getHeight();
  }
  
  protected Animation getCloseAnimation()
  {
    if (TextUtils.isEmpty(getText())) {
      return new CaptionEditText.a(this, false);
    }
    return new CaptionEditText.b(this, 0, 0, getCaptionEditPosition(), (int)getLastSelectedPositionY());
  }
  
  protected Animation getOpenAnimation()
  {
    return new CaptionEditText.b(this, 0, 0, (int)getLastSelectedPositionY(), getCaptionEditPosition());
  }
  
  protected void setHeightPixels(int paramInt)
  {
    s = paramInt;
  }
  
  protected void setWidthPixels(int paramInt)
  {
    q = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.VanillaCaptionEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
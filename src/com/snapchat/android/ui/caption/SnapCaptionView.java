package com.snapchat.android.ui.caption;

import akr;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import aqn;
import aqr;
import avt;
import awf;
import bbo;
import bch;
import bcv;
import bpi;
import chd;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

public abstract class SnapCaptionView<T extends CaptionEditText>
  extends FrameLayout
{
  protected final XmlResourceParser a;
  protected final T b;
  protected int c;
  protected int d;
  protected boolean e = false;
  private final avt f;
  
  public SnapCaptionView(Context paramContext)
  {
    super(paramContext);
    InputMethodManager localInputMethodManager = (InputMethodManager)paramContext.getSystemService("input_method");
    setFocusable(true);
    setFocusableInTouchMode(true);
    f = new avt(paramContext);
    a = getLayout();
    b = b(paramContext);
    b.f = true;
    d();
    c();
    b.f = false;
    b.setKeyboardManager(localInputMethodManager);
    addView(b);
  }
  
  private void a(int paramInt)
  {
    if (b.e) {
      return;
    }
    b.setCaptionPositionY(paramInt);
    b.a(false);
  }
  
  public Bundle a()
  {
    akr.a(e, b.getKeyboardHeight());
    Bundle localBundle = new Bundle();
    localBundle.putFloat("captionPreviousYPercentageOnScreen", getCaptionPositionY() / c);
    localBundle.putString("captionViewText", getText());
    localBundle.putBoolean("isEditing", b.k);
    localBundle.putInt("captionType", getCaptionType().ordinal());
    localBundle.putInt("keyboardHeight", b.getKeyboardHeight());
    localBundle.putParcelableArrayList("captionInitializationColorSpans", b.getColorSpans());
    if (b.j > 0) {
      localBundle.putInt("captionMaxLength", b.j);
    }
    return localBundle;
  }
  
  public void a(Bundle paramBundle, boolean paramBoolean)
  {
    int i = 0;
    if (paramBundle == null) {}
    label183:
    label212:
    label215:
    for (;;)
    {
      return;
      b.setKeyboardHeight(paramBundle.getInt("keyboardHeight"));
      Object localObject = paramBundle.getString("captionViewText");
      if (localObject != null)
      {
        b.f = true;
        b.setText((CharSequence)localObject);
        b.f = false;
      }
      if ((!paramBoolean) && (TextUtils.isEmpty((CharSequence)localObject)))
      {
        b.setVisibility(4);
        b.setCursorVisible(false);
        b.k = paramBundle.getBoolean("isEditing");
        localObject = paramBundle.getParcelableArrayList("captionInitializationColorSpans");
        b.setColorSpans((ArrayList)localObject);
        a(paramBundle, paramBoolean, b);
        if (!b.k) {
          break label212;
        }
        if (!paramBoolean) {
          break label183;
        }
        b.c();
      }
      for (;;)
      {
        if (i == 0) {
          break label215;
        }
        bbo.a().a(new bch(b.k));
        return;
        b.setVisibility(0);
        break;
        b.b();
        b.setSelection(getText().length());
        b.setCursorVisible(true);
        i = 1;
      }
    }
  }
  
  protected void a(Bundle paramBundle, boolean paramBoolean, T paramT)
  {
    float f1 = paramBundle.getFloat("captionPreviousYPercentageOnScreen");
    int i = paramT.getHeight();
    float f2 = f1 * c;
    float f3 = i + f2 - c;
    f1 = f2;
    if (f3 > 0.0F) {
      f1 = f2 - f3;
    }
    paramT.setCaptionPositionY(f1);
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    if ((b.getVisibility() == 0) && (!b.c(paramMotionEvent))) {}
    while (paramMotionEvent.getAction() != 1) {
      return;
    }
    a((int)paramMotionEvent.getY());
  }
  
  public void a(boolean paramBoolean)
  {
    if ((!b.k) || (b.e)) {
      return;
    }
    b.b(paramBoolean);
  }
  
  protected abstract T b(Context paramContext);
  
  protected void b()
  {
    b.setCaptionPositionY(getCaptionPositionY() * c / d);
  }
  
  public final boolean b(MotionEvent paramMotionEvent)
  {
    if (b.getVisibility() != 0) {
      return false;
    }
    return b.c(paramMotionEvent);
  }
  
  protected void c() {}
  
  public final boolean d()
  {
    boolean bool2 = true;
    boolean bool3 = e;
    if (!awf.e(getContext()))
    {
      bool1 = true;
      e = bool1;
      if (e == bool3) {
        break label112;
      }
    }
    label112:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
      d = awf.a(localDisplayMetrics, e);
      c = awf.b(localDisplayMetrics, e);
      b.setLandscapeMode(e);
      b.setKeyboardHeight(akr.n(e));
      if (bool1) {
        b();
      }
      return bool1;
      bool1 = false;
      break;
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return b.dispatchTouchEvent(paramMotionEvent);
  }
  
  public final void e()
  {
    if (!e)
    {
      c = awf.h(getContext());
      return;
    }
    c = awf.b(getResources().getDisplayMetrics(), e);
  }
  
  public final void f()
  {
    a(c / 2);
  }
  
  public final boolean g()
  {
    return b.k;
  }
  
  protected AttributeSet getAttributes()
  {
    int i = 0;
    try
    {
      do
      {
        j = a.next();
        if ((j == 2) && (TextUtils.equals(a.getName(), "EditText"))) {
          return Xml.asAttributeSet(a);
        }
        i = j;
      } while (j != 1);
      return null;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        j = i;
      }
    }
    catch (XmlPullParserException localXmlPullParserException)
    {
      for (;;)
      {
        int j = i;
      }
    }
  }
  
  @chd
  public aqn getCaptionAnalyticsDetails()
  {
    if (TextUtils.isEmpty(b.getText())) {
      return null;
    }
    return b.getAnalyticsDetails();
  }
  
  protected int getCaptionPositionX()
  {
    return (int)b.getLastSelectedPositionX();
  }
  
  protected int getCaptionPositionY()
  {
    return (int)b.getLastSelectedPositionY();
  }
  
  public int getCaptionTop()
  {
    return b.getTop();
  }
  
  public abstract CaptionTypeEnums getCaptionType();
  
  protected abstract XmlResourceParser getLayout();
  
  public String getText()
  {
    if (b.isInEditMode()) {
      return b.getEditableText().toString();
    }
    return b.getText().toString();
  }
  
  public final boolean h()
  {
    return b.l;
  }
  
  public final boolean i()
  {
    return TextUtils.isEmpty(b.getText());
  }
  
  public final void j()
  {
    b.g = true;
  }
  
  @bpi
  public void onKeyDownEvent(bcv parambcv)
  {
    if (b.k) {}
    while (event.getUnicodeChar() == 0) {
      return;
    }
    setCaptionPositionY((int)(0.62D * c));
    b.a(true);
    b.append(String.valueOf((char)event.getUnicodeChar()));
  }
  
  public void setCaptionEditTextOnTouchListener(@chd View.OnTouchListener paramOnTouchListener)
  {
    b.setOnTouchListener(paramOnTouchListener);
  }
  
  protected void setCaptionPositionX(int paramInt)
  {
    b.setCaptionPositionX(paramInt);
  }
  
  protected void setCaptionPositionY(int paramInt)
  {
    b.setCaptionPositionY(paramInt);
  }
  
  public void setInterface(aqr paramaqr)
  {
    b.setInterface(paramaqr);
  }
  
  public void setIsVideoSnap(boolean paramBoolean)
  {
    b.setIsVideoSnap(paramBoolean);
  }
  
  public void setText(String paramString)
  {
    b.setText(paramString);
    b.setVisibility(0);
    int i = awf.a(b);
    int j = PreferenceManager.getDefaultSharedPreferences(getContext()).getInt(SharedPreferenceKey.KEYBOARD_HEIGHT_PORTRAIT.getKey(), -1);
    if (j == -1) {
      setCaptionPositionY((int)(c * 0.6F));
    }
    for (;;)
    {
      b.a(0, getCaptionPositionY());
      return;
      setCaptionPositionY(j - i);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.SnapCaptionView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.ui.caption;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import aqo;
import awf;
import bcc;
import bch;
import bct;
import bpi;

public class FatCaptionView
  extends SnapCaptionView<FatCaptionEditText>
{
  private double f = getOrientationAngle();
  
  public FatCaptionView(Context paramContext)
  {
    super(paramContext);
  }
  
  public final Bundle a()
  {
    Bundle localBundle = super.a();
    localBundle.putFloat("captionPreviousXPercentageOnScreen", getCaptionPositionX() / d);
    localBundle.putParcelable("captionPositionState", new FatCaptionParcelableState((FatCaptionEditText)b));
    localBundle.putDouble("captionLastOrientationAngle", f);
    localBundle.putBoolean("captionInFreeMode", b).m);
    localBundle.putBoolean("captionScaleEdited", b).w);
    return localBundle;
  }
  
  protected FatCaptionEditText a(Context paramContext)
  {
    return new FatCaptionEditText(paramContext, getAttributes());
  }
  
  public final void a(Bundle paramBundle, boolean paramBoolean)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("captionMaxLength"))) {
      ((FatCaptionEditText)b).setMaxTextLengthInputFilter(paramBundle.getInt("captionMaxLength"));
    }
    super.a(paramBundle, paramBoolean);
    c();
  }
  
  protected void a(Bundle paramBundle, boolean paramBoolean, FatCaptionEditText paramFatCaptionEditText)
  {
    if (!paramBoolean)
    {
      double d1 = getOrientationAngle();
      m = paramBundle.getBoolean("captionInFreeMode", false);
      w = paramBundle.getBoolean("captionScaleEdited", false);
      FatCaptionParcelableState localFatCaptionParcelableState = (FatCaptionParcelableState)paramBundle.getParcelable("captionPositionState");
      v = h;
      u = i;
      if (!m)
      {
        super.a(paramBundle, false, paramFatCaptionEditText);
        paramFatCaptionEditText.setCaptionPositionX(paramBundle.getFloat("captionPreviousXPercentageOnScreen") * d);
        return;
      }
      float f1;
      if (localFatCaptionParcelableState != null)
      {
        f1 = a;
        if (localFatCaptionParcelableState == null) {
          break label404;
        }
      }
      label404:
      for (float f2 = b;; f2 = 1.0F)
      {
        double d4 = paramBundle.getDouble("captionLastOrientationAngle") - d1;
        f = d1;
        float f3 = c[0];
        float f4 = c[1];
        int i = f;
        int j = g;
        double d5 = Math.cos(d4);
        double d6 = Math.sin(d4);
        double d2 = f3 * d5 - f4 * d6;
        d1 = f3;
        double d3 = f4 * d5 + d1 * d6;
        d1 = d2;
        if (d5 - d6 < 0.0D) {
          d1 = d2 + d;
        }
        d2 = d3;
        if (d5 + d6 < 0.0D) {
          d2 = d3 + c;
        }
        f3 = (float)d1;
        f4 = i / 2;
        float f5 = (float)d2;
        float f6 = j / 2;
        paramBundle = new float[2];
        paramBundle[0] = (f3 - f4);
        paramBundle[1] = (f5 - f6);
        paramFatCaptionEditText.a(paramBundle[0], paramBundle[1]);
        s = ((float)Math.toDegrees(d4) + f1);
        t = f2;
        paramFatCaptionEditText.setRotation(s);
        paramFatCaptionEditText.setScaleX(t);
        paramFatCaptionEditText.setScaleY(t);
        paramFatCaptionEditText.setMaxWidth(i);
        paramFatCaptionEditText.setMaxHeight(j);
        paramBundle = getContext().getResources().getDisplayMetrics();
        paramFatCaptionEditText.setTextSize(1, (float)h / density);
        return;
        f1 = 0.0F;
        break;
      }
    }
    super.a(paramBundle, paramBoolean, paramFatCaptionEditText);
    paramFatCaptionEditText.f();
  }
  
  protected final void b()
  {
    if (!b).m) {
      ((FatCaptionEditText)b).a(getCaptionPositionX() * d / c, getCaptionPositionY() * c / d);
    }
  }
  
  protected final void c()
  {
    ((FatCaptionEditText)b).setMaxFontSize(Math.min(d, c) * 0.053125F * 3.0F);
    ((FatCaptionEditText)b).setMinFontSize(((FatCaptionEditText)b).getMaxFontSize() / 4.0D);
    if (!b).m) {
      ((FatCaptionEditText)b).g();
    }
    ((FatCaptionEditText)b).setVerticalFadingEdgeEnabled(true);
    ((FatCaptionEditText)b).setFadingEdgeLength(45);
    ((FatCaptionEditText)b).d();
    if (!b).m) {
      ((FatCaptionEditText)b).e();
    }
  }
  
  public CaptionTypeEnums getCaptionType()
  {
    return CaptionTypeEnums.FAT_CAPTION_TYPE;
  }
  
  protected XmlResourceParser getLayout()
  {
    return getResources().getLayout(2130968602);
  }
  
  protected double getOrientationAngle()
  {
    switch (awf.d(getContext()))
    {
    case 0: 
    default: 
      return 0.0D;
    case 1: 
      return 1.5707963267948966D;
    case 2: 
      return 3.141592653589793D;
    }
    return -1.5707963267948966D;
  }
  
  @bpi
  public void onCaptionColorPickedEvent(aqo paramaqo)
  {
    ((FatCaptionEditText)b).setColor(mColor);
  }
  
  @bpi
  public void onEditCaptionEvent(bch parambch)
  {
    if (mIsEditing)
    {
      setBackgroundColor(getResources().getColor(2131230731));
      return;
    }
    setBackgroundColor(0);
  }
  
  @bpi
  public void onGlobalLayoutEvent(bct parambct)
  {
    if (!b).m) {
      ((FatCaptionEditText)b).e();
    }
    if ((!b).f) && (b).k)) {
      ((FatCaptionEditText)b).b();
    }
    parambct = getRootView();
    Rect localRect = new Rect();
    parambct.getWindowVisibleDisplayFrame(localRect);
    int i = c - (bottom - top);
    if (i > 100)
    {
      i = c - i;
      if (((FatCaptionEditText)b).getKeyboardHeight() != i)
      {
        ((FatCaptionEditText)b).setKeyboardHeight(i);
        if (b).k) {
          ((FatCaptionEditText)b).a(false);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCaptionView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
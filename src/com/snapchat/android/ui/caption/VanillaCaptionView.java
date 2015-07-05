package com.snapchat.android.ui.caption;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.InputFilter;
import android.util.DisplayMetrics;
import android.view.View;
import ban;
import baw;
import bbt;
import boh;
import com.squareup.otto.Bus;

public class VanillaCaptionView
  extends SnapCaptionView<VanillaCaptionEditText>
{
  public VanillaCaptionView(Context paramContext)
  {
    super(paramContext);
  }
  
  public final void a(Bundle paramBundle, boolean paramBoolean)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("captionMaxLength"))) {
      b).j = paramBundle.getInt("captionMaxLength");
    }
    super.a(paramBundle, paramBoolean);
    if (!b).k) {
      ((VanillaCaptionEditText)b).setGravity(17);
    }
    if (((VanillaCaptionEditText)b).e()) {
      ban.a().a(new baw(6));
    }
  }
  
  protected final void b()
  {
    super.b();
    ((VanillaCaptionEditText)b).setWidthPixels(d);
    ((VanillaCaptionEditText)b).setHeightPixels(c);
    ((VanillaCaptionEditText)b).setFilters(new InputFilter[0]);
  }
  
  protected final void c()
  {
    ((VanillaCaptionEditText)b).setWidthPixels(d);
    ((VanillaCaptionEditText)b).setHeightPixels(c);
    ((VanillaCaptionEditText)b).setLandscapeMode(e);
    DisplayMetrics localDisplayMetrics = ((VanillaCaptionEditText)b).getContext().getResources().getDisplayMetrics();
    ((VanillaCaptionEditText)b).setTextSize(Math.min(d, c) * 0.053125F / density);
  }
  
  public CaptionTypeEnums getCaptionType()
  {
    return CaptionTypeEnums.NON_FAT_VANILLA_CAPTION_TYPE;
  }
  
  protected XmlResourceParser getLayout()
  {
    return getResources().getLayout(2130968602);
  }
  
  @boh
  public void onGlobalLayoutEvent(bbt parambbt)
  {
    if ((!b).f) && (b).k) && (((VanillaCaptionEditText)b).getTop() != ((VanillaCaptionEditText)b).getCaptionEditPosition())) {
      ((VanillaCaptionEditText)b).setY(((VanillaCaptionEditText)b).getCaptionEditPosition());
    }
    parambbt = getRootView();
    Rect localRect = new Rect();
    parambbt.getWindowVisibleDisplayFrame(localRect);
    int i = c - (bottom - top);
    if (i > 100)
    {
      i = c - i;
      if (((VanillaCaptionEditText)b).getKeyboardHeight() != i)
      {
        ((VanillaCaptionEditText)b).setKeyboardHeight(i);
        if (b).k) {
          ((VanillaCaptionEditText)b).a(false);
        }
      }
    }
  }
  
  public void setText(String paramString)
  {
    super.setText(paramString);
    if (!g())
    {
      ((VanillaCaptionEditText)b).setGravity(17);
      return;
    }
    ((VanillaCaptionEditText)b).setGravity(3);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.VanillaCaptionView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
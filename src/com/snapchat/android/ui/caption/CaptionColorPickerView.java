package com.snapchat.android.ui.caption;

import android.content.Context;
import android.util.AttributeSet;
import aqo;
import bbo;
import com.snapchat.android.ui.ColorPickerView;
import com.squareup.otto.Bus;

public class CaptionColorPickerView
  extends ColorPickerView
{
  public CaptionColorPickerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected final void a(int paramInt)
  {
    bbo.a().a(new aqo(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.CaptionColorPickerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
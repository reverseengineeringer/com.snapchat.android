package com.snapchat.android.ui.caption;

import android.content.Context;
import android.util.AttributeSet;
import apo;
import java.util.ArrayList;

public class FatCenterCaptionEditText
  extends FatCaptionEditText
{
  public FatCenterCaptionEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setGravity(49);
  }
  
  protected final void c()
  {
    super.c();
    setGravity(49);
  }
  
  protected apo getAnalyticsDetails()
  {
    CaptionTypeEnums localCaptionTypeEnums = CaptionTypeEnums.FAT_CENTER_CAPTION_TYPE;
    boolean bool2 = m;
    if (getColorSpans().size() > 0) {}
    for (boolean bool1 = true;; bool1 = false) {
      return new apo(localCaptionTypeEnums, bool2, bool1, x);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCenterCaptionEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
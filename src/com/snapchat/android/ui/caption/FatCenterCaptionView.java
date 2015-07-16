package com.snapchat.android.ui.caption;

import android.content.Context;
import android.os.Bundle;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import aqo;
import bch;
import bct;
import bpi;

public class FatCenterCaptionView
  extends FatCaptionView
{
  public FatCenterCaptionView(Context paramContext)
  {
    super(paramContext);
  }
  
  private FatCenterCaptionEditText k()
  {
    return new FatCenterCaptionEditText(getContext(), getAttributes());
  }
  
  protected final void a(Bundle paramBundle, boolean paramBoolean, FatCaptionEditText paramFatCaptionEditText)
  {
    super.a(paramBundle, paramBoolean, paramFatCaptionEditText);
    paramBundle = (FatCaptionParcelableState)paramBundle.getParcelable("captionPositionState");
    if ((paramBoolean) && (!g()) && (paramBundle != null))
    {
      int i = f;
      paramFatCaptionEditText.setCaptionPositionX((d - i) / 2);
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (b).m)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      super.a(paramBoolean);
      if (!b).m)
      {
        final ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
        localViewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
        {
          public final boolean onPreDraw()
          {
            int i = ((FatCaptionEditText)b).getWidth();
            setCaptionPositionX((d - i) / 2);
            if (localViewTreeObserver.isAlive()) {
              localViewTreeObserver.removeOnPreDrawListener(this);
            }
            return false;
          }
        });
      }
      return;
    }
  }
  
  public CaptionTypeEnums getCaptionType()
  {
    return CaptionTypeEnums.FAT_CENTER_CAPTION_TYPE;
  }
  
  @bpi
  public void onCaptionColorPickedEvent(aqo paramaqo)
  {
    super.onCaptionColorPickedEvent(paramaqo);
  }
  
  @bpi
  public void onEditCaptionEvent(bch parambch)
  {
    super.onEditCaptionEvent(parambch);
  }
  
  @bpi
  public void onGlobalLayoutEvent(bct parambct)
  {
    super.onGlobalLayoutEvent(parambct);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCenterCaptionView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
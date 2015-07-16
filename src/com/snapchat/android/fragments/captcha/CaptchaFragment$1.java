package com.snapchat.android.fragments.captcha;

import ago;
import ago.a;
import android.content.Context;
import android.widget.GridView;
import java.util.List;

final class CaptchaFragment$1
  extends ago
{
  CaptchaFragment$1(CaptchaFragment paramCaptchaFragment, Context paramContext, List paramList, ago.a parama)
  {
    super(paramContext, paramList, parama);
  }
  
  public final boolean areAllItemsEnabled()
  {
    return CaptchaFragment.a(b).isClickable();
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return CaptchaFragment.a(b).isClickable();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.captcha.CaptchaFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.verification;

import ajx;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import kv;

final class NewUserPhoneVerificationFragment$1
  implements View.OnClickListener
{
  NewUserPhoneVerificationFragment$1(NewUserPhoneVerificationFragment paramNewUserPhoneVerificationFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = a.c;
    if (ajx.v()) {
      ScAnalyticsEventEngine.a(new kv());
    }
    a.i();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.NewUserPhoneVerificationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
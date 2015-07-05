package com.snapchat.android.fragments.verification;

import ajx;
import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import ki;

final class PhoneVerificationFragment$5
  implements View.OnClickListener
{
  PhoneVerificationFragment$5(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onClick(View paramView)
  {
    PhoneVerificationFragment.n(a).show();
    paramView = a.c;
    if (!PhoneVerificationFragment.o(a)) {}
    for (paramView = PhoneVerificationFragment.p(a);; paramView = null)
    {
      if (ajx.v())
      {
        ki localki = new ki();
        country = paramView;
        ScAnalyticsEventEngine.a(localki);
        if (ajx.v()) {
          new EasyMetric("R01_FOCUS_ON_COUNTRY").d();
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
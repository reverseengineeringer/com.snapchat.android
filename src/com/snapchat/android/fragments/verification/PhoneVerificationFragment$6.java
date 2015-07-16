package com.snapchat.android.fragments.verification;

import akr;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import awf;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import ld;

final class PhoneVerificationFragment$6
  implements View.OnFocusChangeListener
{
  PhoneVerificationFragment$6(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      PhoneVerificationFragment.a(a, WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
      awf.g(a.getActivity());
      paramView = a.c;
      if (akr.v())
      {
        ScAnalyticsEventEngine.a(new ld());
        if (akr.v()) {
          new EasyMetric("R01_FOCUS_ON_PHONE_NUMBER").e();
        }
      }
      return;
    }
    PhoneVerificationFragment.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
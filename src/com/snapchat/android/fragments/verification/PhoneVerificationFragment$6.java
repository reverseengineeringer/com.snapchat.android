package com.snapchat.android.fragments.verification;

import ajx;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import avh;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import kl;

final class PhoneVerificationFragment$6
  implements View.OnFocusChangeListener
{
  PhoneVerificationFragment$6(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      PhoneVerificationFragment.a(a, WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
      avh.g(a.getActivity());
      paramView = a.c;
      if (ajx.v())
      {
        ScAnalyticsEventEngine.a(new kl());
        if (ajx.v()) {
          new EasyMetric("R01_FOCUS_ON_PHONE_NUMBER").d();
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
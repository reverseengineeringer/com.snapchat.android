package com.snapchat.android.fragments.verification;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;

final class PhoneVerificationFragment$10
  implements View.OnFocusChangeListener
{
  PhoneVerificationFragment$10(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      PhoneVerificationFragment.b(a, WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI);
      RegistrationAnalytics.i();
      return;
    }
    PhoneVerificationFragment.b(a, false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
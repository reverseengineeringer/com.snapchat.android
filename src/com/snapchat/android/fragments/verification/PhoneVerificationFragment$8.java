package com.snapchat.android.fragments.verification;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.snapchat.android.analytics.RegistrationAnalytics;

final class PhoneVerificationFragment$8
  implements View.OnClickListener
{
  PhoneVerificationFragment$8(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onClick(View paramView)
  {
    PhoneVerificationFragment.a(a, null);
    a.g.setText("");
    a.g.requestFocus();
    RegistrationAnalytics.l();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.verification;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.snapchat.android.analytics.RegistrationAnalytics;

final class PhoneVerificationFragment$11
  implements View.OnClickListener
{
  PhoneVerificationFragment$11(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onClick(View paramView)
  {
    PhoneVerificationFragment.e(a);
    a.j.setText("");
    a.j.requestFocus();
    RegistrationAnalytics.m();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
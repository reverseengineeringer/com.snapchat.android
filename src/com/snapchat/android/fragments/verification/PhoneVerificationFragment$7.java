package com.snapchat.android.fragments.verification;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.analytics.RegistrationAnalytics;

final class PhoneVerificationFragment$7
  implements TextWatcher
{
  PhoneVerificationFragment$7(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    a.m = "";
    if (PhoneVerificationFragment.b(a) != null)
    {
      PhoneVerificationFragment.b(a).c();
      PhoneVerificationFragment.a(a, null);
    }
    PhoneVerificationFragment.a(a, null);
    PhoneVerificationFragment.c(a);
    a.t();
    if (!PhoneVerificationFragment.d(a))
    {
      RegistrationAnalytics.d();
      PhoneVerificationFragment.a(a, true);
    }
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
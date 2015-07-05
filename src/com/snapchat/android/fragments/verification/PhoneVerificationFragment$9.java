package com.snapchat.android.fragments.verification;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.analytics.RegistrationAnalytics;

final class PhoneVerificationFragment$9
  implements TextWatcher
{
  PhoneVerificationFragment$9(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    PhoneVerificationFragment.e(a);
    a.t();
    if (!PhoneVerificationFragment.f(a))
    {
      RegistrationAnalytics.j();
      PhoneVerificationFragment.b(a, true);
    }
    PhoneVerificationFragment.g(a);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
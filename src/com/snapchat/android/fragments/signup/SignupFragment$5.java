package com.snapchat.android.fragments.signup;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SignupFragment$5
  implements TextWatcher
{
  SignupFragment$5(SignupFragment paramSignupFragment) {}
  
  public final void afterTextChanged(Editable paramEditable)
  {
    SignupFragment.f(a);
    SignupFragment.g(a);
    if (!SignupFragment.h(a))
    {
      AnalyticsEvents.p();
      SignupFragment.a(a, true);
    }
    SignupFragment.i(a);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.signup;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import kk;

final class SignupFragment$9
  implements View.OnFocusChangeListener
{
  SignupFragment$9(SignupFragment paramSignupFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      SignupFragment.e(a);
      ScAnalyticsEventEngine.a(new kk());
      AnalyticsEvents.s();
      return;
    }
    SignupFragment.b(a, false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
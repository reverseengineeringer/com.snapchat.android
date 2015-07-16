package com.snapchat.android.fragments.signup;

import akr;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import lq;

final class LoginAndSignupFragment$2
  implements View.OnClickListener
{
  LoginAndSignupFragment$2(LoginAndSignupFragment paramLoginAndSignupFragment, ViewGroup paramViewGroup) {}
  
  public final void onClick(View paramView)
  {
    if (!LoginAndSignupFragment.a(b)) {
      return;
    }
    b.getFragmentManager().beginTransaction().replace(a.getId(), new SignupFragment(LoginAndSignupFragment.c(b))).addToBackStack("SignupFragment").commit();
    akr.c(true);
    LoginAndSignupFragment.d(b);
    ScAnalyticsEventEngine.a(new lq());
    AnalyticsEvents.l();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.LoginAndSignupFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
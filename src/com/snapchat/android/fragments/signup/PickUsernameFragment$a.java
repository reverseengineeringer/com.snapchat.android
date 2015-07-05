package com.snapchat.android.fragments.signup;

import ajv;
import ajx;
import aku;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ProgressBar;
import bjp;
import cgc;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.util.AlertDialogUtils;
import lb;
import lu;
import ot;

final class PickUsernameFragment$a
  extends ot
{
  private ajv b = ajv.g();
  private String c;
  
  public PickUsernameFragment$a(PickUsernameFragment paramPickUsernameFragment, String paramString)
  {
    c = paramString;
  }
  
  protected final String a()
  {
    return "/loq/register_username";
  }
  
  protected final void a(String paramString, int paramInt)
  {
    super.a(paramString, paramInt);
    if (!a.isAdded()) {
      return;
    }
    PickUsernameFragment.p(a).setVisibility(4);
    PickUsernameFragment.q(a).setVisibility(8);
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("selected_username", c);
    localBundle.putString("username", ajx.G());
    return localBundle;
  }
  
  protected final void b(aku paramaku)
  {
    super.b(paramaku);
    String str1;
    boolean bool1;
    boolean bool2;
    String str2;
    int i;
    lb locallb;
    if (a.isAdded())
    {
      ajx.a(updates_response);
      ajx.b(updates_response.n());
      a.getActivity();
      LoginAndSignupActivity.a(verification_needed);
      PickUsernameFragment.r(a);
      if (!ajx.r())
      {
        PickUsernameFragment.r(a);
        if (!ajx.q())
        {
          ajx.c(false);
          RegistrationAnalytics.a(false);
          b.a(null);
          PickUsernameFragment.s(a);
        }
      }
    }
    else
    {
      PickUsernameFragment.k(a);
      str1 = c;
      bool1 = PickUsernameFragment.j(a);
      bool2 = PickUsernameFragment.t(a);
      str2 = PickUsernameFragment.u(a);
      i = PickUsernameFragment.v(a);
      locallb = new lb();
      if (bool1) {
        break label220;
      }
      paramaku = lu.DEFAULT_SUGGESTION;
    }
    for (;;)
    {
      username = str1;
      usernameType = paramaku;
      usernameSuggestion = str2;
      usernameIndexPos = Long.valueOf(i);
      ScAnalyticsEventEngine.a(locallb);
      AnalyticsEvents.F();
      AnalyticsEvents.a(str1, bool1, bool2, str2, i);
      return;
      RegistrationAnalytics.a(true);
      break;
      label220:
      if (!bool2) {
        paramaku = lu.OTHER_SUGGESTION;
      } else {
        paramaku = lu.CUSTOM;
      }
    }
  }
  
  protected final String c()
  {
    return "RegisterUsernameTask";
  }
  
  protected final void d(@cgc aku paramaku)
  {
    super.d(paramaku);
    if (!a.isAdded()) {
      return;
    }
    if (paramaku == null) {}
    for (int i = 2147483642;; i = status) {
      switch (i)
      {
      case 70: 
      default: 
        PickUsernameFragment.f(a);
        AlertDialogUtils.a(PickUsernameFragment.b(a), mFailureMessage);
        return;
      }
    }
    a.a(mFailureMessage);
    a.a(PickUsernameFragment.UsernameState.RED_X);
    return;
    AnalyticsEvents.d(c.length());
    a.a(mFailureMessage);
    a.a(PickUsernameFragment.UsernameState.RED_X);
    return;
    AnalyticsEvents.E();
    a.a(mFailureMessage);
    a.a(PickUsernameFragment.UsernameState.RED_X);
    return;
    AnalyticsEvents.D();
    a.a(mFailureMessage);
    a.a(PickUsernameFragment.UsernameState.RED_X);
  }
  
  protected final void onPreExecute()
  {
    a.a(PickUsernameFragment.UsernameState.CLEAR);
    PickUsernameFragment.p(a).setVisibility(0);
    PickUsernameFragment.q(a).setClickable(false);
    PickUsernameFragment.q(a).setText("");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.verification;

import akr;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import aph;
import blt.a;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import java.util.Set;
import li;
import lk;
import lp;

final class PhoneVerificationFragment$12
  implements View.OnClickListener
{
  PhoneVerificationFragment$12(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onClick(View paramView)
  {
    if ((TextUtils.equals(a.g.getText(), a.m)) && (a.j.length() == 6))
    {
      a.w();
      paramView = PhoneVerificationFragment.a(a);
      aph localaph = PhoneVerificationFragment.h(a);
      FragmentActivity localFragmentActivity = a.getActivity();
      String str1 = a.j.getText().toString();
      String str2 = a.m().name();
      Intent localIntent = localaph.b(localFragmentActivity);
      localIntent.putExtra("op_code", 1024);
      localIntent.putExtra("action", "verifyPhoneNumber");
      localIntent.putExtra("code", str1);
      localIntent.putExtra("type", str2);
      paramView.add(Integer.valueOf(localaph.a(localFragmentActivity, localIntent)));
      paramView = a.c;
      boolean bool = PhoneVerificationFragment.i(a);
      if (akr.v())
      {
        paramView = new lk();
        autofill = Boolean.valueOf(bool);
        ScAnalyticsEventEngine.a(paramView);
        if (akr.v()) {
          new EasyMetric("R01_ATTEMPT_VERIFY_WITH_CODE").e();
        }
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          PhoneVerificationFragment.j(a);
          RegistrationAnalytics.g();
          if (PhoneVerificationFragment.k(a)) {
            break;
          }
          paramView = a.c;
        } while (!akr.v());
        ScAnalyticsEventEngine.a(new li());
        return;
        paramView = a.c;
      } while (!akr.v());
      ScAnalyticsEventEngine.a(new lp());
    } while (!akr.v());
    new EasyMetric("R01_RESEND_VERIFICATION_CODE").e();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
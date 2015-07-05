package com.snapchat.android.fragments.verification;

import ajx;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import aol;
import bks.a;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import java.util.Set;
import kq;
import ks;
import kx;

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
      aol localaol = PhoneVerificationFragment.h(a);
      FragmentActivity localFragmentActivity = a.getActivity();
      String str1 = a.j.getText().toString();
      String str2 = a.m().name();
      Intent localIntent = localaol.b(localFragmentActivity);
      localIntent.putExtra("op_code", 1024);
      localIntent.putExtra("action", "verifyPhoneNumber");
      localIntent.putExtra("code", str1);
      localIntent.putExtra("type", str2);
      paramView.add(Integer.valueOf(localaol.a(localFragmentActivity, localIntent)));
      paramView = a.c;
      boolean bool = PhoneVerificationFragment.i(a);
      if (ajx.v())
      {
        paramView = new ks();
        autofill = Boolean.valueOf(bool);
        ScAnalyticsEventEngine.a(paramView);
        if (ajx.v()) {
          new EasyMetric("R01_ATTEMPT_VERIFY_WITH_CODE").d();
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
        } while (!ajx.v());
        ScAnalyticsEventEngine.a(new kq());
        return;
        paramView = a.c;
      } while (!ajx.v());
      ScAnalyticsEventEngine.a(new kx());
    } while (!ajx.v());
    new EasyMetric("R01_RESEND_VERIFICATION_CODE").d();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
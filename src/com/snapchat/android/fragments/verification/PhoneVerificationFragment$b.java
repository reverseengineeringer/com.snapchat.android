package com.snapchat.android.fragments.verification;

import akr;
import alp;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;
import awf;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.concurrent.TimeUnit;
import pk;

final class PhoneVerificationFragment$b
  extends pk
{
  private final String b;
  private String c = null;
  
  public PhoneVerificationFragment$b(PhoneVerificationFragment paramPhoneVerificationFragment, boolean paramBoolean1, boolean paramBoolean2)
  {
    m = g.getText().toString();
    if (paramBoolean2)
    {
      b = "requestPhoneVerification";
      if (paramBoolean1)
      {
        c = "text";
        return;
      }
      c = "call";
      return;
    }
    if (paramBoolean1)
    {
      b = "updatePhoneNumber";
      return;
    }
    b = "updatePhoneNumberWithCall";
  }
  
  protected final String a()
  {
    return "/bq/phone_verify";
  }
  
  protected final void a(alp paramalp)
  {
    if (a.isAdded())
    {
      a.l.setVisibility(8);
      a.g.setEnabled(true);
    }
    super.a(paramalp);
  }
  
  protected final void a(String paramString, int paramInt)
  {
    super.a(paramString, paramInt);
    if (a.isAdded())
    {
      a.m = "";
      a.t();
      PhoneVerificationFragment.a(a, paramString);
      awf.a(a.e, a.g);
    }
    a.a(paramString);
    RegistrationAnalytics.e();
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("action", b);
    localBundle.putString("username", akr.l());
    localBundle.putString("phoneNumber", a.m);
    localBundle.putString("countryCode", PhoneVerificationFragment.p(a));
    localBundle.putBoolean("skipConfirmation", a.x());
    if (c != null) {
      localBundle.putString("method", c);
    }
    return localBundle;
  }
  
  protected final void b(alp paramalp)
  {
    super.b(paramalp);
    if (!TextUtils.isEmpty(message_format)) {
      akr.v(message_format);
    }
    if (a.isAdded())
    {
      PhoneVerificationFragment.c(a);
      a.j.requestFocus();
      PhoneVerificationFragment.a(a, new PhoneVerificationFragment.a(a, (int)TimeUnit.MINUTES.toSeconds(1L), TimeUnit.SECONDS.toMillis(1L), PhoneVerificationFragment.q(a)));
      PhoneVerificationFragment.b(a).e();
      a.t();
      if (b.equals("updatePhoneNumberWithCall")) {
        AlertDialogUtils.a(2131493060, a.e);
      }
    }
    RegistrationAnalytics.h();
  }
  
  protected final String c()
  {
    return "RequestPhoneVerificationCodeTask";
  }
  
  protected final void onPreExecute()
  {
    super.onPreExecute();
    a.g.setEnabled(false);
    a.k.setText("");
    a.k.setEnabled(false);
    a.l.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
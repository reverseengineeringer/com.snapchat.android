package com.snapchat.android.fragments.verification;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import auh;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics.PhoneVerificationMethod;

final class PhoneVerificationFragment$2
  implements DialogInterface.OnClickListener
{
  PhoneVerificationFragment$2(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PhoneVerificationFragment.l(a);
    a.t();
    new PhoneVerificationFragment.b(a, true, a.r()).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
    paramDialogInterface = a.c;
    RegistrationAnalytics.a(RegistrationAnalytics.PhoneVerificationMethod.TEXT);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
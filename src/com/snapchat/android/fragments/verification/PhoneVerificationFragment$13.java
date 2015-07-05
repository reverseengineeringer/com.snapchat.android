package com.snapchat.android.fragments.verification;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import auh;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics.PhoneVerificationMethod;

final class PhoneVerificationFragment$13
  implements DialogInterface.OnClickListener
{
  PhoneVerificationFragment$13(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.t();
    new PhoneVerificationFragment.b(a, false, a.r()).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
    paramDialogInterface = a.c;
    RegistrationAnalytics.a(RegistrationAnalytics.PhoneVerificationMethod.CALL);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
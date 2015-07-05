package com.snapchat.android.fragments.verification;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.RegistrationAnalytics.PhoneVerificationMethod;

final class PhoneVerificationFragment$3
  implements DialogInterface.OnClickListener
{
  PhoneVerificationFragment$3(PhoneVerificationFragment paramPhoneVerificationFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a.c;
    RegistrationAnalytics.a(RegistrationAnalytics.PhoneVerificationMethod.CANCEL);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
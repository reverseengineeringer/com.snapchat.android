package com.snapchat.android.fragments.verification;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;
import com.snapchat.android.analytics.RegistrationAnalytics;

final class PhoneVerificationFragment$4
  implements DialogInterface.OnClickListener
{
  PhoneVerificationFragment$4(PhoneVerificationFragment paramPhoneVerificationFragment, String[] paramArrayOfString, TextView paramTextView, CharSequence[] paramArrayOfCharSequence) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PhoneVerificationFragment.b(d, a[paramInt]);
    b.setText(c[paramInt]);
    d.t();
    paramDialogInterface.dismiss();
    RegistrationAnalytics.f();
    PhoneVerificationFragment.m(d);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.PhoneVerificationFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
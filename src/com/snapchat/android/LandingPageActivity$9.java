package com.snapchat.android;

import ajx;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import bbm;
import bdw;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment;
import com.squareup.otto.Bus;

final class LandingPageActivity$9
  implements DialogInterface.OnClickListener
{
  LandingPageActivity$9(LandingPageActivity paramLandingPageActivity, bbm parambbm) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PhoneVerificationAnalytics.a(false, ajx.f());
    b.r.a(new bdw(new SettingsPhoneVerificationFragment(a)));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LandingPageActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
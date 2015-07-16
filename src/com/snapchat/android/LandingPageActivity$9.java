package com.snapchat.android;

import akr;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import bcm;
import bev;
import com.snapchat.android.analytics.PhoneVerificationAnalytics;
import com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment;
import com.squareup.otto.Bus;

final class LandingPageActivity$9
  implements DialogInterface.OnClickListener
{
  LandingPageActivity$9(LandingPageActivity paramLandingPageActivity, bcm parambcm) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PhoneVerificationAnalytics.a(false, akr.f());
    b.r.a(new bev(new SettingsPhoneVerificationFragment(a)));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.LandingPageActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
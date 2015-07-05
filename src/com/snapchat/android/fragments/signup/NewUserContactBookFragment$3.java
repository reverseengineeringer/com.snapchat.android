package com.snapchat.android.fragments.signup;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;

final class NewUserContactBookFragment$3
  implements DialogInterface.OnClickListener
{
  NewUserContactBookFragment$3(NewUserContactBookFragment paramNewUserContactBookFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    NewUserContactBookFragment.c(a);
    AnalyticsEvents.e(true);
    AnalyticsEvents.I();
    NewUserContactBookFragment.a(a);
    RegistrationAnalytics.b(true);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.NewUserContactBookFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
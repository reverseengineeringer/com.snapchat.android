package com.snapchat.android.fragments.settings;

import akr;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.snapchat.android.fragments.settings.email.EmailSettingsFragment;
import com.snapchat.android.fragments.settings.email.EmailVerificationSentFragment;
import com.squareup.otto.Bus;

final class SettingsFragment$10
  implements View.OnClickListener
{
  SettingsFragment$10(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    SettingsFragment.a(a);
    if (TextUtils.isEmpty(akr.bk()))
    {
      bbo.a().a(new bev(new EmailSettingsFragment(), EmailSettingsFragment.class.getSimpleName(), null));
      return;
    }
    bbo.a().a(new bev(new EmailVerificationSentFragment()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
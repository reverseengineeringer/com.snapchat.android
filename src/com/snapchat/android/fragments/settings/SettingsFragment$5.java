package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import bbo;
import bev;
import com.squareup.otto.Bus;

final class SettingsFragment$5
  implements View.OnClickListener
{
  SettingsFragment$5(SettingsFragment paramSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    bbo.a().a(new bev(new WebFragment("https://www.snapchat.com/licenses/android", a.getString(2131493451))));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SettingsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
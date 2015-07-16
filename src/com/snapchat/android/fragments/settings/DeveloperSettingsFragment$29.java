package com.snapchat.android.fragments.settings;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import ava;
import com.snapchat.android.database.SharedPreferenceKey;

final class DeveloperSettingsFragment$29
  implements CompoundButton.OnCheckedChangeListener
{
  DeveloperSettingsFragment$29(DeveloperSettingsFragment paramDeveloperSettingsFragment) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    ava.b(SharedPreferenceKey.DEVELOPER_OPTIONS_FAKE_FRIENDMOJI_ENABLED.getKey(), paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.29
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
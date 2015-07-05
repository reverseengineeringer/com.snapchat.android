package com.snapchat.android.fragments.settings;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import auc;
import com.snapchat.android.database.SharedPreferenceKey;

final class DeveloperSettingsFragment$31
  implements CompoundButton.OnCheckedChangeListener
{
  DeveloperSettingsFragment$31(DeveloperSettingsFragment paramDeveloperSettingsFragment) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    auc.b(SharedPreferenceKey.DEVELOPER_OPTIONS_FAKE_FRIENDMOJI_ENABLED.getKey(), paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.31
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
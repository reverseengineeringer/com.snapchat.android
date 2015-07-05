package com.snapchat.android.fragments.settings;

import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import azm;
import com.snapchat.android.util.AlertDialogUtils;

final class DeveloperSettingsFragment$19
  implements CompoundButton.OnCheckedChangeListener
{
  DeveloperSettingsFragment$19(DeveloperSettingsFragment paramDeveloperSettingsFragment, CheckBox paramCheckBox) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    azm.c(paramBoolean);
    AlertDialogUtils.a(a.getContext(), "The app needs to be killed and restarted before this change comes into effect.");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
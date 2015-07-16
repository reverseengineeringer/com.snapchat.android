package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import bal;
import com.snapchat.android.util.AlertDialogUtils;

final class DeveloperSettingsFragment$17
  implements CompoundButton.OnCheckedChangeListener
{
  DeveloperSettingsFragment$17(DeveloperSettingsFragment paramDeveloperSettingsFragment, Context paramContext) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    DeveloperSettingsFragment.c(b);
    if (bal.d() != paramBoolean)
    {
      DeveloperSettingsFragment.c(b);
      bal.b(paramBoolean);
      AlertDialogUtils.c(a, "You will need to refresh your Stories page to see an update since you have changed your horizontal scroll setting! Thanks for testing TTV/HS :D", "OK");
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
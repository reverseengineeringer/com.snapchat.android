package com.snapchat.android.fragments.settings;

import android.view.View;
import android.view.View.OnClickListener;
import com.addlive.platform.ADL;
import com.addlive.service.AddLiveService;

final class DeveloperSettingsFragment$10
  implements View.OnClickListener
{
  DeveloperSettingsFragment$10(DeveloperSettingsFragment paramDeveloperSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    ADL.getService().setProperty(ADL.r(), "global.die", "");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
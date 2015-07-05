package com.snapchat.android.fragments.settings;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.HttpMetricsActivity;

final class DeveloperSettingsFragment$13
  implements View.OnClickListener
{
  DeveloperSettingsFragment$13(DeveloperSettingsFragment paramDeveloperSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent(a.getActivity(), HttpMetricsActivity.class);
    paramView.addFlags(67108864);
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
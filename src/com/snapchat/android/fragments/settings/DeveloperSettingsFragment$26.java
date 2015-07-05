package com.snapchat.android.fragments.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import com.snapchat.android.database.SharedPreferenceKey;

final class DeveloperSettingsFragment$26
  implements AdapterView.OnItemSelectedListener
{
  DeveloperSettingsFragment$26(DeveloperSettingsFragment paramDeveloperSettingsFragment, SharedPreferences paramSharedPreferences) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = a.edit();
    paramAdapterView.putInt(SharedPreferenceKey.REGISTRATION_TESTING_ENDPOINT.getKey(), paramInt);
    paramAdapterView.apply();
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
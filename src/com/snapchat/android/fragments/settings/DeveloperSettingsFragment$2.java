package com.snapchat.android.fragments.settings;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import ava;
import bhp;
import com.snapchat.android.database.SharedPreferenceKey;

final class DeveloperSettingsFragment$2
  implements AdapterView.OnItemSelectedListener
{
  DeveloperSettingsFragment$2(DeveloperSettingsFragment paramDeveloperSettingsFragment) {}
  
  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, final int paramInt, long paramLong)
  {
    bhp.b(new Runnable()
    {
      public final void run()
      {
        ava.a(SharedPreferenceKey.REGISTRATION_CONTACTBOOK_EXPERIMENT.getKey(), paramInt);
      }
    });
  }
  
  public final void onNothingSelected(AdapterView<?> paramAdapterView) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
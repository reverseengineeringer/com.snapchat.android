package com.snapchat.android.fragments.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.snapchat.android.database.SharedPreferenceKey;

final class DeveloperSettingsFragment$5
  implements SeekBar.OnSeekBarChangeListener
{
  DeveloperSettingsFragment$5(DeveloperSettingsFragment paramDeveloperSettingsFragment, TextView paramTextView, SharedPreferences paramSharedPreferences) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    paramInt *= 100;
    a.setText(paramInt + "ms");
    paramSeekBar = b.edit();
    paramSeekBar.putInt(SharedPreferenceKey.DEVELOPER_OPTIONS_RELEASE_DELAY_TIMER.getKey(), paramInt);
    paramSeekBar.apply();
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
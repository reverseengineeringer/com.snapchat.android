package com.snapchat.android.fragments.addfriends;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import bew;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

final class AddFriendsBySnapcodeSetupFragment$3
  implements CompoundButton.OnCheckedChangeListener
{
  AddFriendsBySnapcodeSetupFragment$3(AddFriendsBySnapcodeSetupFragment paramAddFriendsBySnapcodeSetupFragment) {}
  
  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = PreferenceManager.getDefaultSharedPreferences(a.getActivity()).edit();
    paramCompoundButton.putBoolean(SharedPreferenceKey.AUTO_LIBRARY_SCANNING_ENABLED.getKey(), paramBoolean);
    paramCompoundButton.apply();
    if (paramBoolean)
    {
      ((TextView)a.c(2131361826)).setText(2131492868);
      AddFriendsBySnapcodeSetupFragment.a(a).a(new bew());
      new EasyMetric("SNAPCODE_AUTOSCAN_ENABLED").b(false);
      return;
    }
    ((TextView)a.c(2131361826)).setText(2131492869);
    new EasyMetric("SNAPCODE_AUTOSCAN_DISABLED").b(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsBySnapcodeSetupFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
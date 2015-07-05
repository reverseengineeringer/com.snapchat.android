package com.snapchat.android.fragments.settings;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;

final class CustomStoryPrivacyFragment$2
  implements AdapterView.OnItemClickListener
{
  CustomStoryPrivacyFragment$2(CustomStoryPrivacyFragment paramCustomStoryPrivacyFragment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (CheckBox)paramView.findViewById(2131362196);
    if (paramAdapterView == null) {
      return;
    }
    if (!paramAdapterView.isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      paramAdapterView.setChecked(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.CustomStoryPrivacyFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
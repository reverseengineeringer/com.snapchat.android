package com.snapchat.android.fragments.settings.displayname;

import ajx;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.FriendAction;
import pp;

final class DisplayNameSettingsFragment$5
  implements View.OnClickListener
{
  DisplayNameSettingsFragment$5(DisplayNameSettingsFragment paramDisplayNameSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    DisplayNameSettingsFragment.e(a).setText("");
    DisplayNameSettingsFragment.e(a).setClickable(false);
    DisplayNameSettingsFragment.f(a).setVisibility(0);
    DisplayNameSettingsFragment.g(a);
    paramView = ajx.l();
    DisplayNameSettingsFragment.g(a);
    paramView = new Friend(paramView, ajx.y());
    String str = paramView.a();
    mDisplayName = DisplayNameSettingsFragment.a(a).getText().toString().trim();
    paramView = new pp(paramView, FriendAction.SET_DISPLAY_NAME, str);
    mFriendActionCompleteCallback = a;
    mAnalyticsContext = AnalyticsEvents.AnalyticsContext.SETTINGS_DISPLAYNAME_CHANGE;
    mShowFailureDialog = false;
    paramView.f();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.displayname.DisplayNameSettingsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
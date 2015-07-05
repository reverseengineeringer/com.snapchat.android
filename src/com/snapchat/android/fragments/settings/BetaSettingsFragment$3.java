package com.snapchat.android.fragments.settings;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class BetaSettingsFragment$3
  implements View.OnClickListener
{
  BetaSettingsFragment$3(BetaSettingsFragment paramBetaSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/apps/testing/com.snapchat.android"));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.BetaSettingsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
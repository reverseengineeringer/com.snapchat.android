package com.snapchat.android.fragments.settings;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class BetaSettingsFragment$2
  implements View.OnClickListener
{
  BetaSettingsFragment$2(BetaSettingsFragment paramBetaSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.VIEW", Uri.parse("https://plus.google.com/u/0/communities/101602008277453798645"));
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.BetaSettingsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
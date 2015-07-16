package com.snapchat.android.fragments.settings;

import ajz;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import apw;
import bal;
import bgr;
import com.snapchat.android.SnapchatApplication;

final class DeveloperSettingsFragment$12$1
  extends apw
{
  DeveloperSettingsFragment$12$1(DeveloperSettingsFragment.12 param12, Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext, paramString1, paramString2, 1);
  }
  
  protected final void a(String paramString)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
    if (TextUtils.equals(paramString, amProxyEndpoint.mBaseUrl)) {
      bal.a(localSharedPreferences, null);
    }
    for (;;)
    {
      a.b.setText(paramString);
      return;
      bal.a(localSharedPreferences, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.12.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
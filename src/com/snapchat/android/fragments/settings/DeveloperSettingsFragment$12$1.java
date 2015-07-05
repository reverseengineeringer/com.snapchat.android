package com.snapchat.android.fragments.settings;

import ajd;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import apa;
import azm;
import bfr;
import com.snapchat.android.SnapchatApplication;

final class DeveloperSettingsFragment$12$1
  extends apa
{
  DeveloperSettingsFragment$12$1(DeveloperSettingsFragment.12 param12, Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext, paramString1, paramString2, 1);
  }
  
  protected final void a(String paramString)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b());
    if (TextUtils.equals(paramString, amProxyEndpoint.mBaseUrl)) {
      azm.a(localSharedPreferences, null);
    }
    for (;;)
    {
      a.b.setText(paramString);
      return;
      azm.a(localSharedPreferences, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.12.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import aqb;

final class SnapkidzSettingsActivity$a
  extends aqb
{
  public SnapkidzSettingsActivity$a(SnapkidzSettingsActivity paramSnapkidzSettingsActivity)
  {
    super(SnapkidzSettingsActivity.b(paramSnapkidzSettingsActivity), paramSnapkidzSettingsActivity.getString(2131493057));
  }
  
  protected final void a()
  {
    int j = SnapkidzSettingsActivity.c(a).getInt("SnapKidzLoginManager_numAccounts", 0);
    int i = 0;
    while (i < j)
    {
      SnapkidzSettingsActivity.d(a).putString("SnapKidzLoginManager_username_" + i, "");
      i += 1;
    }
    SnapkidzSettingsActivity.d(a).putInt("SnapKidzLoginManager_numAccounts", 0);
    SnapkidzSettingsActivity.d(a).apply();
    SnapkidzSettingsActivity.a(a);
  }
  
  protected final void b() {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapkidzSettingsActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import apw;
import avw;
import bam;

final class DeveloperSettingsFragment$20$1
  extends apw
{
  DeveloperSettingsFragment$20$1(DeveloperSettingsFragment.20 param20, Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramString1, paramString2, 2);
  }
  
  protected final void a(String paramString)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      DeveloperSettingsFragment.b(b.b).a(i);
      b.a.setText(Integer.toString(i));
      if (!TextUtils.equals(a, paramString)) {
        avw.a().b();
      }
      return;
    }
    catch (NumberFormatException paramString) {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.20.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
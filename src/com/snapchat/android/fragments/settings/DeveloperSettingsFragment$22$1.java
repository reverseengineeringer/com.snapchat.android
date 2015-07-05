package com.snapchat.android.fragments.settings;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import apa;
import auy;
import azn;
import com.snapchat.android.Timber;

final class DeveloperSettingsFragment$22$1
  extends apa
{
  DeveloperSettingsFragment$22$1(DeveloperSettingsFragment.22 param22, Context paramContext, String paramString1, String paramString2, String paramString3)
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
        auy.a().b();
      }
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Timber.e("DeveloperSettingsFragment", "Invalid number: " + paramString, new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.22.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
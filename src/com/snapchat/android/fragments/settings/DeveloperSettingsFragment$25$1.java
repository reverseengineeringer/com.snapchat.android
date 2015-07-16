package com.snapchat.android.fragments.settings;

import akr;
import android.widget.CompoundButton;
import android.widget.TextView;
import bal;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;
import yj;
import yn;

final class DeveloperSettingsFragment$25$1
  implements AlertDialogUtils.a
{
  DeveloperSettingsFragment$25$1(DeveloperSettingsFragment.25 param25, CompoundButton paramCompoundButton) {}
  
  public final void a(AlertDialogUtils.YesNoOption paramYesNoOption)
  {
    if (paramYesNoOption == AlertDialogUtils.YesNoOption.YES)
    {
      bal.a(true);
      bal.a(b.a, "https://cash-dot-feelinsonice-hrd.appspot.com");
      b.b.setText("https://cash-dot-feelinsonice-hrd.appspot.com");
      akr.ah();
      b.c.a.a(null);
      b.c.b.b();
      return;
    }
    a.setTag(Boolean.valueOf(true));
    a.setChecked(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.25.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
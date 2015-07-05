package com.snapchat.android.fragments.settings;

import ajx;
import android.widget.CompoundButton;
import android.widget.TextView;
import azm;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;
import xn;
import xr;

final class DeveloperSettingsFragment$27$1
  implements AlertDialogUtils.a
{
  DeveloperSettingsFragment$27$1(DeveloperSettingsFragment.27 param27, CompoundButton paramCompoundButton) {}
  
  public final void a(AlertDialogUtils.YesNoOption paramYesNoOption)
  {
    if (paramYesNoOption == AlertDialogUtils.YesNoOption.YES)
    {
      azm.a(true);
      azm.a(b.a, "https://cash-dot-feelinsonice-hrd.appspot.com");
      b.b.setText("https://cash-dot-feelinsonice-hrd.appspot.com");
      ajx.ai();
      b.c.a.a(null);
      b.c.b.b();
      return;
    }
    a.setTag(Boolean.valueOf(true));
    a.setChecked(false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.27.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.settings;

import ajd;
import ajx;
import android.content.SharedPreferences;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import azm;
import bfr;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;
import xn;
import xr;

final class DeveloperSettingsFragment$27
  implements CompoundButton.OnCheckedChangeListener
{
  DeveloperSettingsFragment$27(DeveloperSettingsFragment paramDeveloperSettingsFragment, SharedPreferences paramSharedPreferences, TextView paramTextView) {}
  
  public final void onCheckedChanged(final CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramCompoundButton.getTag() != null)
    {
      paramCompoundButton.setTag(null);
      return;
    }
    if (paramBoolean)
    {
      AlertDialogUtils.a(c.getActivity(), null, "This will also change the Snapchat endpoint to https://cash-dot-feelinsonice-hrd.appspot.com. Proceed?", new AlertDialogUtils.a()
      {
        public final void a(AlertDialogUtils.YesNoOption paramAnonymousYesNoOption)
        {
          if (paramAnonymousYesNoOption == AlertDialogUtils.YesNoOption.YES)
          {
            azm.a(true);
            azm.a(a, "https://cash-dot-feelinsonice-hrd.appspot.com");
            b.setText("https://cash-dot-feelinsonice-hrd.appspot.com");
            ajx.ai();
            c.a.a(null);
            c.b.b();
            return;
          }
          paramCompoundButton.setTag(Boolean.valueOf(true));
          paramCompoundButton.setChecked(false);
        }
      });
      return;
    }
    azm.a(false);
    azm.a(a, null);
    b.setText(amProxyEndpoint.mBaseUrl);
    ajx.ai();
    c.a.a(null);
    c.b.b();
    AlertDialogUtils.a(c.getActivity(), "The Snapchat endpoint has also been reset to default.");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
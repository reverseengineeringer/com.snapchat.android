package com.snapchat.android.fragments.settings;

import ajz;
import akr;
import android.content.SharedPreferences;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import bal;
import bgr;
import com.snapchat.android.util.AlertDialogUtils;
import com.snapchat.android.util.AlertDialogUtils.YesNoOption;
import com.snapchat.android.util.AlertDialogUtils.a;
import yj;
import yn;

final class DeveloperSettingsFragment$25
  implements CompoundButton.OnCheckedChangeListener
{
  DeveloperSettingsFragment$25(DeveloperSettingsFragment paramDeveloperSettingsFragment, SharedPreferences paramSharedPreferences, TextView paramTextView) {}
  
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
            bal.a(true);
            bal.a(a, "https://cash-dot-feelinsonice-hrd.appspot.com");
            b.setText("https://cash-dot-feelinsonice-hrd.appspot.com");
            akr.ah();
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
    bal.a(false);
    bal.a(a, null);
    b.setText(amProxyEndpoint.mBaseUrl);
    akr.ah();
    c.a.a(null);
    c.b.b();
    AlertDialogUtils.a(c.getActivity(), "The Snapchat endpoint has also been reset to default.");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.DeveloperSettingsFragment.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
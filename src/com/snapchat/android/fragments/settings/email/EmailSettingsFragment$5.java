package com.snapchat.android.fragments.settings.email;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import aol;
import java.util.Set;

final class EmailSettingsFragment$5
  implements View.OnClickListener
{
  EmailSettingsFragment$5(EmailSettingsFragment paramEmailSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    EmailSettingsFragment.a(a).add(Integer.valueOf(EmailSettingsFragment.g(a).a(a.getActivity(), "verifyEmail", null, null)));
    EmailSettingsFragment.h(a).setText("");
    EmailSettingsFragment.h(a).setClickable(false);
    EmailSettingsFragment.i(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailSettingsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
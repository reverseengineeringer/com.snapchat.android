package com.snapchat.android.fragments.settings.email;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import aol;
import java.util.Set;

final class EmailSettingsFragment$6
  implements View.OnClickListener
{
  EmailSettingsFragment$6(EmailSettingsFragment paramEmailSettingsFragment) {}
  
  public final void onClick(View paramView)
  {
    EmailSettingsFragment.a(a).add(Integer.valueOf(EmailSettingsFragment.g(a).a(a.getActivity(), EmailSettingsFragment.b(a).getText().toString())));
    EmailSettingsFragment.j(a).setText("");
    EmailSettingsFragment.j(a).setClickable(false);
    EmailSettingsFragment.i(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailSettingsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
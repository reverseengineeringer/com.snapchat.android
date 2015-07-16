package com.snapchat.android.fragments.settings.password;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import aph;
import java.util.Set;

final class PasswordValidationFragment$2
  implements View.OnClickListener
{
  PasswordValidationFragment$2(PasswordValidationFragment paramPasswordValidationFragment) {}
  
  public final void onClick(View paramView)
  {
    PasswordValidationFragment.a(a).add(Integer.valueOf(PasswordValidationFragment.c(a).b(a.getActivity(), PasswordValidationFragment.b(a).getText().toString())));
    PasswordValidationFragment.d(a).setClickable(false);
    PasswordValidationFragment.e(a).setText("");
    PasswordValidationFragment.f(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.PasswordValidationFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
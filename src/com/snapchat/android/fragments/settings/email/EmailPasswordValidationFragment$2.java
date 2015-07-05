package com.snapchat.android.fragments.settings.email;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import aol;
import java.util.Set;

final class EmailPasswordValidationFragment$2
  implements View.OnClickListener
{
  EmailPasswordValidationFragment$2(EmailPasswordValidationFragment paramEmailPasswordValidationFragment) {}
  
  public final void onClick(View paramView)
  {
    EmailPasswordValidationFragment.a(a).add(Integer.valueOf(EmailPasswordValidationFragment.c(a).b(a.getActivity(), EmailPasswordValidationFragment.b(a).getText().toString())));
    EmailPasswordValidationFragment.d(a).setClickable(false);
    EmailPasswordValidationFragment.e(a).setText("");
    EmailPasswordValidationFragment.f(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.email.EmailPasswordValidationFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
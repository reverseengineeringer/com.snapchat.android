package com.snapchat.android.fragments.settings.phone;

import ajx;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import aol;
import java.util.Set;

final class PhonePasswordValidationFragment$2
  implements View.OnClickListener
{
  PhonePasswordValidationFragment$2(PhonePasswordValidationFragment paramPhonePasswordValidationFragment) {}
  
  public final void onClick(View paramView)
  {
    PhonePasswordValidationFragment.a(a).add(Integer.valueOf(PhonePasswordValidationFragment.c(a).a(a.getActivity(), "pwConfirmPhoneNumber", ajx.e(), PhonePasswordValidationFragment.b(a).getText().toString())));
    PhonePasswordValidationFragment.d(a).setClickable(false);
    PhonePasswordValidationFragment.e(a).setText("");
    PhonePasswordValidationFragment.f(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.phone.PhonePasswordValidationFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
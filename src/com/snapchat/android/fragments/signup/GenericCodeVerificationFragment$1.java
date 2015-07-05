package com.snapchat.android.fragments.signup;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ProgressBar;

final class GenericCodeVerificationFragment$1
  implements View.OnClickListener
{
  GenericCodeVerificationFragment$1(GenericCodeVerificationFragment paramGenericCodeVerificationFragment) {}
  
  public final void onClick(View paramView)
  {
    a.e.setVisibility(0);
    if (GenericCodeVerificationFragment.a(a) != null)
    {
      GenericCodeVerificationFragment.a(a).c();
      GenericCodeVerificationFragment.b(a);
    }
    a.d.setText("");
    a.d.setClickable(false);
    a.a.setEnabled(false);
    if (a.a.length() < 6)
    {
      a.m();
      return;
    }
    a.i();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.GenericCodeVerificationFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
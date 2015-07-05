package com.snapchat.android.fragments.signup;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

final class LoginAndSignupFragment$1
  implements View.OnClickListener
{
  LoginAndSignupFragment$1(LoginAndSignupFragment paramLoginAndSignupFragment, ViewGroup paramViewGroup) {}
  
  public final void onClick(View paramView)
  {
    if (!LoginAndSignupFragment.a(b)) {
      return;
    }
    b.getFragmentManager().beginTransaction().replace(a.getId(), new LoginFragment(LoginAndSignupFragment.b(b))).addToBackStack("LoginFragment").commit();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.LoginAndSignupFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
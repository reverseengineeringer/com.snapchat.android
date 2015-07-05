package com.snapchat.android.fragments.signup;

import android.content.SharedPreferences;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import auo;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.Locale;

final class LoginFragment$1
  implements View.OnClickListener
{
  LoginFragment$1(LoginFragment paramLoginFragment) {}
  
  public final void onClick(View paramView)
  {
    ((InputMethodManager)a.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(LoginFragment.a(a).getApplicationWindowToken(), 0);
    paramView = LoginFragment.a(a).getText().toString().trim().toLowerCase(Locale.US);
    String str = LoginFragment.b(a).getText().toString().trim();
    if (LoginFragment.i().a(paramView))
    {
      auo localauo = LoginFragment.i();
      int i = localauo.b(paramView);
      if (mSharedPreferences.getInt("SnapKidzLoginManager_passkey_" + i, -1) == str.hashCode()) {}
      for (i = 1; i != 0; i = 0)
      {
        LoginFragment.a(a, paramView);
        return;
      }
      AlertDialogUtils.a(a.getActivity(), a.getString(2131493202));
      return;
    }
    LoginFragment.c(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.LoginFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
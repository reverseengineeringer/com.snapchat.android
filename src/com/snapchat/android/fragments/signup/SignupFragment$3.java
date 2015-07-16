package com.snapchat.android.fragments.signup;

import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import avm;
import com.snapchat.android.util.AlertDialogUtils;
import java.util.GregorianCalendar;
import java.util.Locale;

final class SignupFragment$3
  implements View.OnClickListener
{
  SignupFragment$3(SignupFragment paramSignupFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = SignupFragment.b(a).getText().toString().trim().toLowerCase(Locale.US);
    String str = SignupFragment.k(a).getText().toString().trim();
    if (SignupFragment.i().a(paramView))
    {
      AlertDialogUtils.a(SignupFragment.q(a), a.getString(2131493227, new Object[] { paramView }));
      return;
    }
    Object localObject = (GregorianCalendar)GregorianCalendar.getInstance();
    ((GregorianCalendar)localObject).add(1, -13);
    if (!SignupFragment.m(a).before(localObject))
    {
      localObject = SignupFragment.i();
      if (!((avm)localObject).a(paramView))
      {
        mSharedPreferencesEditor.putString("SnapKidzLoginManager_username_" + numAccounts, paramView);
        mSharedPreferencesEditor.putInt("SnapKidzLoginManager_passkey_" + numAccounts, str.hashCode());
        numAccounts += 1;
        mSharedPreferencesEditor.putInt("SnapKidzLoginManager_numAccounts", numAccounts);
        mSharedPreferencesEditor.apply();
      }
      AlertDialogUtils.a(2131493498, SignupFragment.q(a));
      SignupFragment.a(a, paramView);
      return;
    }
    SignupFragment.r(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.SignupFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
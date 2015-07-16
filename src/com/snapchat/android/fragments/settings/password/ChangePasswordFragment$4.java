package com.snapchat.android.fragments.settings.password;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import aph;
import java.util.Set;

final class ChangePasswordFragment$4
  implements View.OnFocusChangeListener
{
  ChangePasswordFragment$4(ChangePasswordFragment paramChangePasswordFragment) {}
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if ((!paramBoolean) && (!TextUtils.isEmpty(a.a.getText())))
    {
      paramView = ChangePasswordFragment.a(a);
      aph localaph = ChangePasswordFragment.d(a);
      FragmentActivity localFragmentActivity = a.getActivity();
      String str = a.a.getText().toString();
      Intent localIntent = localaph.b(localFragmentActivity);
      localIntent.putExtra("op_code", 1018);
      localIntent.putExtra("new_password", str);
      paramView.add(Integer.valueOf(localaph.a(localFragmentActivity, localIntent)));
      a.e.setVisibility(0);
      a.b.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.ChangePasswordFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
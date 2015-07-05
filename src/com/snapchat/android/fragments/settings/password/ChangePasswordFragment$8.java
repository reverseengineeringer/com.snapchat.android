package com.snapchat.android.fragments.settings.password;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import aol;
import java.util.Set;

final class ChangePasswordFragment$8
  implements View.OnClickListener
{
  ChangePasswordFragment$8(ChangePasswordFragment paramChangePasswordFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = ChangePasswordFragment.a(a);
    aol localaol = ChangePasswordFragment.d(a);
    FragmentActivity localFragmentActivity = a.getActivity();
    String str = a.a.getText().toString();
    Intent localIntent = localaol.b(localFragmentActivity);
    localIntent.putExtra("op_code", 1017);
    localIntent.putExtra("new_password", str);
    paramView.add(Integer.valueOf(localaol.a(localFragmentActivity, localIntent)));
    a.i.setClickable(false);
    a.i.setText("");
    a.j.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.password.ChangePasswordFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
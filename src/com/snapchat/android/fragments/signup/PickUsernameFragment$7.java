package com.snapchat.android.fragments.signup;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import auh;
import avh;

final class PickUsernameFragment$7
  implements View.OnClickListener
{
  PickUsernameFragment$7(PickUsernameFragment paramPickUsernameFragment) {}
  
  public final void onClick(View paramView)
  {
    paramView = PickUsernameFragment.c(a).getText().toString().trim();
    PickUsernameFragment.o(a).removeMessages(1);
    PickUsernameFragment.o(a).removeMessages(2);
    new PickUsernameFragment.a(a, paramView).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
    avh.a(PickUsernameFragment.b(a), PickUsernameFragment.c(a));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
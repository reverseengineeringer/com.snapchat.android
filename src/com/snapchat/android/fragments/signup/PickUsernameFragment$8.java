package com.snapchat.android.fragments.signup;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import java.util.List;

final class PickUsernameFragment$8
  implements View.OnClickListener
{
  PickUsernameFragment$8(PickUsernameFragment paramPickUsernameFragment, TextView paramTextView, String paramString, List paramList) {}
  
  public final void onClick(View paramView)
  {
    PickUsernameFragment.c(d, true);
    PickUsernameFragment.c(d).setText(a.getText());
    PickUsernameFragment.c(d).setSelection(a.getText().length());
    PickUsernameFragment.c(d, false);
    PickUsernameFragment.a(d, b);
    PickUsernameFragment.a(d, c.indexOf(b));
    PickUsernameFragment.a(d, false);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.PickUsernameFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
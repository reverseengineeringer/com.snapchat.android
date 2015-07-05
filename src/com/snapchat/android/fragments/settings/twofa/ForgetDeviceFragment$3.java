package com.snapchat.android.fragments.settings.twofa;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;
import android.widget.TextView;
import aol;
import java.util.Set;

final class ForgetDeviceFragment$3
  implements View.OnClickListener
{
  ForgetDeviceFragment$3(ForgetDeviceFragment paramForgetDeviceFragment) {}
  
  public final void onClick(View paramView)
  {
    ForgetDeviceFragment.a(a).add(Integer.valueOf(ForgetDeviceFragment.b(a).a(a.getActivity(), "twoFAForgetDevice", null, null)));
    a.a.setClickable(false);
    a.a.setText("");
    a.b.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.ForgetDeviceFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
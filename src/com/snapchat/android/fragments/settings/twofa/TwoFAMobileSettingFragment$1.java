package com.snapchat.android.fragments.settings.twofa;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import awf;

final class TwoFAMobileSettingFragment$1
  implements View.OnClickListener
{
  TwoFAMobileSettingFragment$1(TwoFAMobileSettingFragment paramTwoFAMobileSettingFragment) {}
  
  public final void onClick(View paramView)
  {
    awf.a(a.getActivity(), TwoFAMobileSettingFragment.a(a));
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFAMobileSettingFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
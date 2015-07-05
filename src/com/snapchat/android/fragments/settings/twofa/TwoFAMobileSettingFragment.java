package com.snapchat.android.fragments.settings.twofa;

import ajx;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import avh;
import ban;
import bdw;
import bet;
import bkr;
import bks.a;
import boh;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.fragments.verification.PhoneVerificationFragment;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.squareup.otto.Bus;

public class TwoFAMobileSettingFragment
  extends PhoneVerificationFragment
{
  protected final void a(bkr parambkr) {}
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  protected final void e()
  {
    super.e();
    if ((TextUtils.isEmpty(g.getText())) && (g.requestFocus())) {
      avh.g(getActivity());
    }
  }
  
  protected final void f()
  {
    super.f();
    avh.a(getActivity(), mFragmentLayout);
  }
  
  protected final void i()
  {
    ban.a().a(new bdw(new TwoFactorSettingsEnabledFragment(), TwoFactorSettingsEnabledFragment.class.getSimpleName(), LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag()));
  }
  
  protected final bks.a m()
  {
    return bks.a.TWO_FA_TYPE;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968773, paramViewGroup, false);
    q();
    p();
    u();
    n();
    o();
    c(2131362828).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        avh.a(getActivity(), TwoFAMobileSettingFragment.a(TwoFAMobileSettingFragment.this));
        getActivity().onBackPressed();
      }
    });
    if (ajx.f()) {
      g.setText(ajx.e());
    }
    for (;;)
    {
      return mFragmentLayout;
      if ((g.requestFocus()) && (!ajx.aF())) {
        avh.g(e);
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    g.clearFocus();
  }
  
  @boh
  public void onVerificationCodeReceivedEvent(bet parambet)
  {
    super.onVerificationCodeReceivedEvent(parambet);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFAMobileSettingFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
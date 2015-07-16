package com.snapchat.android.fragments.settings.twofa;

import akr;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import awf;
import bbo;
import bev;
import bfs;
import bls;
import blt.a;
import bpi;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.fragments.verification.PhoneVerificationFragment;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.squareup.otto.Bus;

public class TwoFAMobileSettingFragment
  extends PhoneVerificationFragment
{
  protected final void a(bls parambls) {}
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  protected final void e()
  {
    super.e();
    if ((TextUtils.isEmpty(g.getText())) && (g.requestFocus())) {
      awf.g(getActivity());
    }
  }
  
  protected final void f()
  {
    super.f();
    awf.a(getActivity(), mFragmentLayout);
  }
  
  protected final void i()
  {
    bbo.a().a(new bev(new TwoFactorSettingsEnabledFragment(), TwoFactorSettingsEnabledFragment.class.getSimpleName(), LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag()));
  }
  
  protected final blt.a m()
  {
    return blt.a.TWO_FA_TYPE;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968775, paramViewGroup, false);
    q();
    p();
    u();
    n();
    o();
    c(2131362821).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        awf.a(getActivity(), TwoFAMobileSettingFragment.a(TwoFAMobileSettingFragment.this));
        getActivity().onBackPressed();
      }
    });
    if (akr.f()) {
      g.setText(akr.e());
    }
    for (;;)
    {
      return mFragmentLayout;
      if ((g.requestFocus()) && (!akr.aE())) {
        awf.g(e);
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    g.clearFocus();
  }
  
  @bpi
  public void onVerificationCodeReceivedEvent(bfs parambfs)
  {
    super.onVerificationCodeReceivedEvent(parambfs);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFAMobileSettingFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
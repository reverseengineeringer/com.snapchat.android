package com.snapchat.android.fragments.verification;

import akr;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import aqv;
import aqx;
import auh;
import awf;
import bfs;
import bls;
import bpi;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.captcha.CaptchaFragment;
import com.snapchat.android.fragments.signup.NewUserContactBookFragment;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import lm;
import ln;

public class NewUserPhoneVerificationFragment
  extends PhoneVerificationFragment
{
  private int a;
  
  public NewUserPhoneVerificationFragment()
  {
    this(new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  private NewUserPhoneVerificationFragment(RegistrationAnalytics paramRegistrationAnalytics, akr paramakr, WindowConfiguration paramWindowConfiguration)
  {
    super(paramRegistrationAnalytics, paramakr, paramWindowConfiguration);
  }
  
  @SuppressLint({"ValidFragment"})
  public NewUserPhoneVerificationFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(RegistrationAnalytics.a(), akr.a(), paramWindowConfiguration);
  }
  
  protected final void a(bls parambls)
  {
    getActivity();
    LoginAndSignupActivity.a(parambls);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final boolean g()
  {
    if ((akr.r()) || (akr.q())) {
      new aqx(e, a).show();
    }
    for (;;)
    {
      return true;
      new aqv(e).show();
    }
  }
  
  protected final void i()
  {
    if (akr.r()) {}
    try
    {
      FragmentTransaction localFragmentTransaction = e.mFragments.beginTransaction();
      CaptchaFragment localCaptchaFragment = new CaptchaFragment(akr.s(), mWindowConfiguration);
      localFragmentTransaction.replace(a, localCaptchaFragment).commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException2) {}
    if (akr.f())
    {
      akr.c(false);
      try
      {
        e.mFragments.beginTransaction().replace(a, new NewUserContactBookFragment(mWindowConfiguration)).commit();
        return;
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        return;
      }
    }
    RegistrationAnalytics.n();
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
    localEditor.putBoolean(SharedPreferenceKey.SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED.getKey(), true);
    localEditor.apply();
    akr.c(false);
    startActivity(new Intent(e, LandingPageActivity.class));
    e.finish();
    return;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    a = paramViewGroup.getId();
    paramLayoutInflater = (Button)c(2131361808);
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    if (!akr.q())
    {
      paramLayoutInflater.setVisibility(0);
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = c;
          if (akr.v()) {
            ScAnalyticsEventEngine.a(new ln());
          }
          i();
        }
      });
    }
    if (g.requestFocus()) {
      awf.f(e);
    }
    mFragmentLayout.setBackgroundColor(0);
    if (akr.v()) {
      ScAnalyticsEventEngine.a(new lm());
    }
    return mFragmentLayout;
  }
  
  public void onResume()
  {
    super.onResume();
    if (akr.f()) {
      i();
    }
  }
  
  @bpi
  public void onVerificationCodeReceivedEvent(bfs parambfs)
  {
    super.onVerificationCodeReceivedEvent(parambfs);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.NewUserPhoneVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
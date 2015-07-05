package com.snapchat.android.fragments.verification;

import ajx;
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
import apw;
import apy;
import atj;
import avh;
import bet;
import bkr;
import boh;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.LoginAndSignupActivity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.captcha.CaptchaFragment;
import com.snapchat.android.fragments.signup.NewUserContactBookFragment;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import ku;
import kv;

public class NewUserPhoneVerificationFragment
  extends PhoneVerificationFragment
{
  private int a;
  
  public NewUserPhoneVerificationFragment()
  {
    this(new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  private NewUserPhoneVerificationFragment(RegistrationAnalytics paramRegistrationAnalytics, ajx paramajx, WindowConfiguration paramWindowConfiguration)
  {
    super(paramRegistrationAnalytics, paramajx, paramWindowConfiguration);
  }
  
  @SuppressLint({"ValidFragment"})
  public NewUserPhoneVerificationFragment(WindowConfiguration paramWindowConfiguration)
  {
    this(RegistrationAnalytics.a(), ajx.a(), paramWindowConfiguration);
  }
  
  protected final void a(bkr parambkr)
  {
    getActivity();
    LoginAndSignupActivity.a(parambkr);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final boolean g()
  {
    if ((ajx.r()) || (ajx.q())) {
      new apy(e, a).show();
    }
    for (;;)
    {
      return true;
      new apw(e).show();
    }
  }
  
  protected final void i()
  {
    if (ajx.r()) {
      try
      {
        FragmentTransaction localFragmentTransaction = e.mFragments.beginTransaction();
        CaptchaFragment localCaptchaFragment = new CaptchaFragment(ajx.s(), mWindowConfiguration);
        localFragmentTransaction.replace(a, localCaptchaFragment).commit();
        return;
      }
      catch (IllegalStateException localIllegalStateException1)
      {
        Timber.f("NewUserPhoneVerificationFragment", "Attempted to go to CaptchaFragment", new Object[0]);
        return;
      }
    }
    if (ajx.f())
    {
      ajx.c(false);
      try
      {
        e.mFragments.beginTransaction().replace(a, new NewUserContactBookFragment(mWindowConfiguration)).commit();
        return;
      }
      catch (IllegalStateException localIllegalStateException2)
      {
        Timber.f("NewUserPhoneVerificationFragment", "Attempted to go to NewUserAddFriendsFragment", new Object[0]);
        return;
      }
    }
    RegistrationAnalytics.n();
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
    localEditor.putBoolean(SharedPreferenceKey.BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING.getKey(), true);
    localEditor.apply();
    ajx.c(false);
    startActivity(new Intent(e, LandingPageActivity.class));
    e.finish();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    a = paramViewGroup.getId();
    paramLayoutInflater = (Button)c(2131361807);
    getActivity().getAssets();
    atj.a(paramLayoutInflater);
    if (!ajx.q())
    {
      paramLayoutInflater.setVisibility(0);
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = c;
          if (ajx.v()) {
            ScAnalyticsEventEngine.a(new kv());
          }
          i();
        }
      });
    }
    if (g.requestFocus()) {
      avh.f(e);
    }
    mFragmentLayout.setBackgroundColor(0);
    if (ajx.v()) {
      ScAnalyticsEventEngine.a(new ku());
    }
    return mFragmentLayout;
  }
  
  public void onResume()
  {
    super.onResume();
    if (ajx.f()) {
      i();
    }
  }
  
  @boh
  public void onVerificationCodeReceivedEvent(bet parambet)
  {
    super.onVerificationCodeReceivedEvent(parambet);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.NewUserPhoneVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
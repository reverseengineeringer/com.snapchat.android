package com.snapchat.android.fragments.signup;

import akr;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import aph;
import auh;
import com.snapchat.android.SnapchatCameraBackgroundActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.HashSet;
import java.util.Set;
import lq;

public class LoginAndSignupFragment
  extends SnapchatFragment
{
  private FragmentActivity a;
  private final Set<Integer> b = new HashSet();
  private final akr c;
  private final aph d;
  private final RegistrationAnalytics e;
  
  public LoginAndSignupFragment()
  {
    this(akr.a(), aph.a(), RegistrationAnalytics.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private LoginAndSignupFragment(akr paramakr, aph paramaph, RegistrationAnalytics paramRegistrationAnalytics)
  {
    c = paramakr;
    d = paramaph;
    e = paramRegistrationAnalytics;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = getActivity();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968697, null);
    paramLayoutInflater = c(2131362416);
    paramBundle = c(2131362417);
    a.getAssets();
    auh.a(paramLayoutInflater);
    a.getAssets();
    auh.a(paramBundle);
    paramLayoutInflater.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!LoginAndSignupFragment.a(LoginAndSignupFragment.this)) {
          return;
        }
        getFragmentManager().beginTransaction().replace(paramViewGroup.getId(), new LoginFragment(LoginAndSignupFragment.b(LoginAndSignupFragment.this))).addToBackStack("LoginFragment").commit();
      }
    });
    paramBundle.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!LoginAndSignupFragment.a(LoginAndSignupFragment.this)) {
          return;
        }
        getFragmentManager().beginTransaction().replace(paramViewGroup.getId(), new SignupFragment(LoginAndSignupFragment.c(LoginAndSignupFragment.this))).addToBackStack("SignupFragment").commit();
        akr.c(true);
        LoginAndSignupFragment.d(LoginAndSignupFragment.this);
        ScAnalyticsEventEngine.a(new lq());
        AnalyticsEvents.l();
      }
    });
    return mFragmentLayout;
  }
  
  public void onDetach()
  {
    super.onDetach();
    a = null;
  }
  
  public void onResume()
  {
    super.onResume();
    if ((a != null) && ((a instanceof SnapchatCameraBackgroundActivity))) {
      ((SnapchatCameraBackgroundActivity)a).a(getResources().getColor(2131230760));
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.signup.LoginAndSignupFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
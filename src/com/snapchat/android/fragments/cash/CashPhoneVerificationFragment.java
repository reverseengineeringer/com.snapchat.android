package com.snapchat.android.fragments.cash;

import akr;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import awf;
import bfs;
import bls;
import bpi;
import chd;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.fragments.verification.PhoneVerificationFragment;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;

public class CashPhoneVerificationFragment
  extends PhoneVerificationFragment
{
  @chd
  public a a;
  public boolean b;
  
  protected final void a(bls parambls) {}
  
  protected final void a(String paramString)
  {
    AnalyticsEvents.k(paramString);
  }
  
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
  
  public final boolean f_()
  {
    return true;
  }
  
  public final boolean g()
  {
    if ((!b) && (a != null)) {
      a.b();
    }
    a = null;
    return super.g();
  }
  
  protected final void i()
  {
    b = true;
    getActivitymFragments.popBackStackImmediate();
    if (a != null) {
      a.a();
    }
    a = null;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968609, paramViewGroup, false);
    q();
    p();
    u();
    n();
    o();
    c(2131362008).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        awf.a(getActivity(), CashPhoneVerificationFragment.a(CashPhoneVerificationFragment.this));
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
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CashPhoneVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
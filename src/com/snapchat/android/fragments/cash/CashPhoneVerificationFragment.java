package com.snapchat.android.fragments.cash;

import ajx;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import avh;
import bet;
import bkr;
import boh;
import cgc;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.fragments.verification.PhoneVerificationFragment;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;

public class CashPhoneVerificationFragment
  extends PhoneVerificationFragment
{
  @cgc
  public a a;
  public boolean b;
  
  protected final void a(bkr parambkr) {}
  
  protected final void a(String paramString)
  {
    AnalyticsEvents.l(paramString);
  }
  
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
  
  public final boolean g()
  {
    if ((!b) && (a != null)) {
      a.b();
    }
    a = null;
    Timber.b("CashPhoneVerificationFragment", "CASH-LOG: Phone is not verified. Closing", new Object[0]);
    return super.g();
  }
  
  public final boolean g_()
  {
    return true;
  }
  
  protected final void i()
  {
    Timber.b("CashPhoneVerificationFragment", "CASH-LOG: Phone is verified successfully. Closing", new Object[0]);
    b = true;
    getActivitymFragments.popBackStackImmediate();
    if (a != null) {
      a.a();
    }
    a = null;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968608, paramViewGroup, false);
    q();
    p();
    u();
    n();
    o();
    c(2131362008).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        avh.a(getActivity(), CashPhoneVerificationFragment.a(CashPhoneVerificationFragment.this));
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
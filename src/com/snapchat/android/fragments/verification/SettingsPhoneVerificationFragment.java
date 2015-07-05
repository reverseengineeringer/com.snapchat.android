package com.snapchat.android.fragments.verification;

import ajx;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import auh;
import avh;
import ban;
import bbm;
import bcm;
import bet;
import bkr;
import boh;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.squareup.otto.Bus;
import ot;
import pa;

public class SettingsPhoneVerificationFragment
  extends PhoneVerificationFragment
{
  private View a;
  private bbm b;
  private Button p;
  private ajx q = ajx.a();
  
  public SettingsPhoneVerificationFragment()
  {
    if ((ajx.aF()) && (ajx.f())) {}
    for (boolean bool = true;; bool = false)
    {
      n = bool;
      return;
    }
  }
  
  @SuppressLint({"ValidFragment"})
  public SettingsPhoneVerificationFragment(bbm parambbm)
  {
    this();
    b = parambbm;
  }
  
  protected final void a(bkr parambkr) {}
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  protected final void i() {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968698, paramViewGroup, false);
    q();
    p();
    u();
    n();
    o();
    if (ajx.aF())
    {
      a = c(2131362435);
      a.setVisibility(0);
    }
    c(2131361893).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        avh.a(getActivity(), SettingsPhoneVerificationFragment.a(SettingsPhoneVerificationFragment.this));
        getActivity().onBackPressed();
      }
    });
    paramLayoutInflater = (CheckBox)c(2131362433);
    paramLayoutInflater.setChecked(ajx.ag());
    paramLayoutInflater.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {}
        for (paramAnonymousCompoundButton = "1";; paramAnonymousCompoundButton = "0")
        {
          new pa("updateSearchableByPhoneNumber", new String[] { paramAnonymousCompoundButton }).executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
          AnalyticsEvents.b(paramAnonymousBoolean);
          return;
        }
      }
    });
    if (ajx.f()) {
      g.setText(ajx.e());
    }
    for (;;)
    {
      return mFragmentLayout;
      if ((g.requestFocus()) && (!ajx.aF())) {
        avh.f(e);
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    avh.a(getActivity(), mFragmentLayout);
  }
  
  @boh
  public void onVerificationCodeReceivedEvent(bet parambet)
  {
    super.onVerificationCodeReceivedEvent(parambet);
  }
  
  protected final void q()
  {
    super.q();
    p = ((Button)c(2131362436));
    p.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView) {}
    });
  }
  
  protected final void t()
  {
    super.t();
  }
  
  protected final void v()
  {
    n = false;
    g.setEnabled(true);
    k.setVisibility(8);
    l.setVisibility(8);
    j.setText("");
    j.setVisibility(8);
    h.setVisibility(8);
    i.setVisibility(8);
    ban.a().a(new bcm());
    if (ajx.aF())
    {
      a.setVisibility(8);
      AlertDialogUtils.a(2131493582, e);
      ajx.p(false);
      if ((b != null) && (b.mOnSuccessTask != null)) {
        b.mOnSuccessTask.execute(new String[0]);
      }
      return;
    }
    AlertDialogUtils.a(2131493066, e);
  }
  
  protected final boolean x()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.SettingsPhoneVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
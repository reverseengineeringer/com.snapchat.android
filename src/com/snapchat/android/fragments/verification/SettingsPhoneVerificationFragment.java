package com.snapchat.android.fragments.verification;

import akr;
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
import avf;
import awf;
import bbo;
import bcm;
import bdm;
import bfs;
import bls;
import bpi;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.AlertDialogUtils;
import com.squareup.otto.Bus;
import pk;
import pr;

public class SettingsPhoneVerificationFragment
  extends PhoneVerificationFragment
{
  private View a;
  private bcm b;
  private Button p;
  private akr q = akr.a();
  
  public SettingsPhoneVerificationFragment()
  {
    if ((akr.aE()) && (akr.f())) {}
    for (boolean bool = true;; bool = false)
    {
      n = bool;
      return;
    }
  }
  
  @SuppressLint({"ValidFragment"})
  public SettingsPhoneVerificationFragment(bcm parambcm)
  {
    this();
    b = parambcm;
  }
  
  protected final void a(bls parambls) {}
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  protected final void i() {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968699, paramViewGroup, false);
    q();
    p();
    u();
    n();
    o();
    if (akr.aE())
    {
      a = c(2131362433);
      a.setVisibility(0);
    }
    c(2131361895).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        awf.a(getActivity(), SettingsPhoneVerificationFragment.a(SettingsPhoneVerificationFragment.this));
        getActivity().onBackPressed();
      }
    });
    paramLayoutInflater = (CheckBox)c(2131362431);
    paramLayoutInflater.setChecked(akr.af());
    paramLayoutInflater.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {}
        for (paramAnonymousCompoundButton = "1";; paramAnonymousCompoundButton = "0")
        {
          new pr("updateSearchableByPhoneNumber", new String[] { paramAnonymousCompoundButton }).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
          AnalyticsEvents.b(paramAnonymousBoolean);
          return;
        }
      }
    });
    if (akr.f()) {
      g.setText(akr.e());
    }
    for (;;)
    {
      return mFragmentLayout;
      if ((g.requestFocus()) && (!akr.aE())) {
        awf.f(e);
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    awf.a(getActivity(), mFragmentLayout);
  }
  
  @bpi
  public void onVerificationCodeReceivedEvent(bfs parambfs)
  {
    super.onVerificationCodeReceivedEvent(parambfs);
  }
  
  protected final void q()
  {
    super.q();
    p = ((Button)c(2131362434));
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
    bbo.a().a(new bdm());
    if (akr.aE())
    {
      a.setVisibility(8);
      AlertDialogUtils.a(2131493580, e);
      akr.o(false);
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
package com.snapchat.android.fragments.settings.twofa;

import amk;
import anc;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import aok;
import aol;
import aqb;
import ban;
import bdw;
import cf;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Set;

public class TwoFactorSettingsEnabledFragment
  extends SnapchatFragment
{
  private CheckBox a;
  private final Set<Integer> b = new HashSet();
  private final aol c;
  private aok d = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (TwoFactorSettingsEnabledFragment.a(TwoFactorSettingsEnabledFragment.this).contains(Integer.valueOf(i)))
      {
        TwoFactorSettingsEnabledFragment.a(TwoFactorSettingsEnabledFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousamk instanceof anc)) {
          TwoFactorSettingsEnabledFragment.a(TwoFactorSettingsEnabledFragment.this, b);
        }
      }
    }
  };
  
  public TwoFactorSettingsEnabledFragment()
  {
    this(aol.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private TwoFactorSettingsEnabledFragment(aol paramaol)
  {
    c = paramaol;
  }
  
  public final boolean g()
  {
    if (d(LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag())) {
      return true;
    }
    return super.g();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968768, paramViewGroup, false);
    c(2131362808).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    a = ((CheckBox)c(2131362812));
    a.setChecked(true);
    c(2131362813).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(new RecoveryCodeFragment()));
      }
    });
    c(2131362814).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        ban.a().a(new bdw(new ForgetDeviceFragment()));
      }
    });
    a.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        new aqb(getActivity(), getString(2131493572), getString(2131493603), getString(2131492952))
        {
          protected final void a()
          {
            TwoFactorSettingsEnabledFragment.a(TwoFactorSettingsEnabledFragment.this).add(Integer.valueOf(TwoFactorSettingsEnabledFragment.c(TwoFactorSettingsEnabledFragment.this).a(getContext(), "disableTwoFA", null, null)));
          }
          
          protected final void b()
          {
            TwoFactorSettingsEnabledFragment.b(TwoFactorSettingsEnabledFragment.this).setChecked(true);
            dismiss();
          }
        }.show();
      }
    });
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    c.b(1012, d);
    b.clear();
  }
  
  public void onResume()
  {
    super.onResume();
    c.a(1012, d);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.twofa.TwoFactorSettingsEnabledFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
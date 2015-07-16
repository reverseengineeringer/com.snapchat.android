package com.snapchat.android.fragments.settings.twofa;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import anh;
import anz;
import apg;
import aph;
import ara;
import bbo;
import bev;
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
  private final aph c;
  private apg d = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (TwoFactorSettingsEnabledFragment.a(TwoFactorSettingsEnabledFragment.this).contains(Integer.valueOf(i)))
      {
        TwoFactorSettingsEnabledFragment.a(TwoFactorSettingsEnabledFragment.this).remove(Integer.valueOf(i));
        if ((paramAnonymousanh instanceof anz)) {
          TwoFactorSettingsEnabledFragment.a(TwoFactorSettingsEnabledFragment.this, b);
        }
      }
    }
  };
  
  public TwoFactorSettingsEnabledFragment()
  {
    this(aph.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private TwoFactorSettingsEnabledFragment(aph paramaph)
  {
    c = paramaph;
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968770, paramViewGroup, false);
    c(2131362801).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    a = ((CheckBox)c(2131362805));
    a.setChecked(true);
    c(2131362806).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(new RecoveryCodeFragment()));
      }
    });
    c(2131362807).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(new ForgetDeviceFragment()));
      }
    });
    a.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        new ara(getActivity(), getString(2131493570), getString(2131493601), getString(2131492952))
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
package com.snapchat.android.fragments.settings;

import akr;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import cf;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class NotificationSettingsFragment
  extends SnapchatFragment
{
  private final akr a;
  
  public NotificationSettingsFragment()
  {
    this(akr.a());
  }
  
  @SuppressLint({"ValidFragment"})
  @cf
  private NotificationSettingsFragment(akr paramakr)
  {
    a = paramakr;
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968704, paramViewGroup, false);
    c(2131361895).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    paramLayoutInflater = (CheckBox)c(2131362471);
    paramViewGroup = (CheckBox)c(2131362474);
    paramBundle = (CheckBox)c(2131362477);
    final CheckBox localCheckBox1 = (CheckBox)c(2131362480);
    final CheckBox localCheckBox2 = (CheckBox)c(2131362483);
    c(2131362470).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = paramLayoutInflater;
        if (!paramLayoutInflater.isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setChecked(bool);
          return;
        }
      }
    });
    final View localView1 = c(2131362472);
    localView1.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = paramViewGroup;
        if (!paramViewGroup.isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setChecked(bool);
          return;
        }
      }
    });
    final View localView2 = c(2131362478);
    localView2.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = localCheckBox1;
        if (!localCheckBox1.isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setChecked(bool);
          return;
        }
      }
    });
    final View localView3 = c(2131362475);
    localView3.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = paramBundle;
        if (!paramBundle.isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setChecked(bool);
          return;
        }
      }
    });
    final View localView4 = c(2131362481);
    localView4.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = localCheckBox2;
        if (!localCheckBox2.isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setChecked(bool);
          return;
        }
      }
    });
    final View localView5 = c(2131362473);
    final View localView6 = c(2131362479);
    final View localView7 = c(2131362476);
    paramLayoutInflater.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        NotificationSettingsFragment.a(NotificationSettingsFragment.this);
        akr.D(paramAnonymousBoolean);
        localCheckBox1.setEnabled(paramAnonymousBoolean);
        localCheckBox2.setEnabled(paramAnonymousBoolean);
        paramBundle.setEnabled(paramAnonymousBoolean);
        paramViewGroup.setEnabled(paramAnonymousBoolean);
        localView2.setEnabled(paramAnonymousBoolean);
        localView4.setEnabled(paramAnonymousBoolean);
        localView3.setEnabled(paramAnonymousBoolean);
        localView1.setEnabled(paramAnonymousBoolean);
        localView6.setEnabled(paramAnonymousBoolean);
        j.setEnabled(paramAnonymousBoolean);
        localView7.setEnabled(paramAnonymousBoolean);
        localView5.setEnabled(paramAnonymousBoolean);
        StringBuilder localStringBuilder = new StringBuilder("NOTIFICATIONS_");
        if (paramAnonymousBoolean) {}
        for (paramAnonymousCompoundButton = "ENABLED";; paramAnonymousCompoundButton = "DISABLED")
        {
          new EasyMetric(paramAnonymousCompoundButton).e();
          return;
        }
      }
    });
    paramLayoutInflater.setChecked(akr.bG());
    localCheckBox1.setChecked(akr.bC());
    localCheckBox2.setChecked(akr.bD());
    paramViewGroup.setChecked(akr.bF());
    paramBundle.setChecked(akr.bE());
    localCheckBox1.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        NotificationSettingsFragment.a(NotificationSettingsFragment.this);
        akr.z(paramAnonymousBoolean);
      }
    });
    localCheckBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        NotificationSettingsFragment.a(NotificationSettingsFragment.this);
        akr.A(paramAnonymousBoolean);
      }
    });
    paramBundle.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        NotificationSettingsFragment.a(NotificationSettingsFragment.this);
        akr.B(paramAnonymousBoolean);
      }
    });
    paramViewGroup.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        NotificationSettingsFragment.a(NotificationSettingsFragment.this);
        akr.C(paramAnonymousBoolean);
      }
    });
    return mFragmentLayout;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.NotificationSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
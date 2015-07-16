package com.snapchat.android.fragments.settings;

import aim;
import aim.a;
import aio;
import aix;
import aiz;
import aja;
import akk;
import akr;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import auv;
import avf;
import axn;
import bbo;
import bdo;
import bev;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.List;
import java.util.Map;
import pw;

public class AdditionalServicesFragment
  extends SnapchatFragment
{
  private final aim a;
  private final auv b;
  private boolean c;
  private CheckBox d;
  
  public AdditionalServicesFragment()
  {
    this(new aim(), new auv());
  }
  
  @SuppressLint({"ValidFragment"})
  private AdditionalServicesFragment(aim paramaim, auv paramauv)
  {
    a = paramaim;
    b = paramauv;
  }
  
  public final void i()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
    aim localaim = new aim();
    if (d.isChecked())
    {
      if ((!localSharedPreferences.getBoolean(SharedPreferenceKey.ALLOWED_GPS.getKey(), false)) || (!akr.aa()))
      {
        localaim.a(getActivity(), new aim.a()
        {
          public final void a(boolean paramAnonymousBoolean)
          {
            if (!paramAnonymousBoolean)
            {
              AdditionalServicesFragment.a(AdditionalServicesFragment.this).setChecked(false);
              return;
            }
            AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", true);
            AdditionalServicesFragment.b(AdditionalServicesFragment.this);
          }
        }).show();
        return;
      }
      akr.i(false);
      aim.a(true);
      AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", true);
      c = true;
      return;
    }
    aim.a(false);
    AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", false);
    c = true;
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968584, paramViewGroup, false);
    c(2131361895).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    c(2131361906).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        bbo.a().a(new bev(new PermissionsExplanationFragment()));
      }
    });
    d = ((CheckBox)c(2131361902));
    paramLayoutInflater = (CheckBox)c(2131361905);
    d.setChecked(akr.aa());
    paramLayoutInflater.setChecked(akr.ab());
    c(2131361898).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = AdditionalServicesFragment.a(AdditionalServicesFragment.this);
        if (!AdditionalServicesFragment.a(AdditionalServicesFragment.this).isChecked()) {}
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.setChecked(bool);
          i();
          return;
        }
      }
    });
    c(2131361904).setOnClickListener(new View.OnClickListener()
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
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        i();
      }
    });
    paramLayoutInflater.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        AdditionalServicesFragment.b(AdditionalServicesFragment.this);
        akr.k(paramAnonymousBoolean);
        AnalyticsEvents.a("TOGGLE_SETTING_FLASH", paramAnonymousBoolean);
      }
    });
    ((TextView)c(2131361900)).append(" " + auv.a(2131493484, new Object[] { auv.a(2131493599, new Object[0]) }));
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    aio localaio;
    aix localaix;
    if (c)
    {
      new pw().executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      if (!akr.aa())
      {
        localaio = aio.c();
        if (localaio != null)
        {
          d = "{}";
          ??? = a;
          a.d();
          localaix = b;
          if (!g) {}
        }
      }
    }
    synchronized (e)
    {
      f.clear();
      d.b();
      c = null;
      b.mPostToStories.clear();
      bbo.a().a(new bdo());
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    TextView localTextView1 = (TextView)c(2131361900);
    TextView localTextView2 = (TextView)c(2131361901);
    if (!akr.aa())
    {
      localTextView1.setVisibility(8);
      localTextView2.setVisibility(0);
      return;
    }
    localTextView1.setVisibility(0);
    localTextView2.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.AdditionalServicesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
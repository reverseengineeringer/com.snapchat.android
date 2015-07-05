package com.snapchat.android.fragments.settings;

import ahq;
import ahq.a;
import ahs;
import aib;
import aid;
import aie;
import ajq;
import ajx;
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
import atx;
import auh;
import awp;
import ban;
import bco;
import bdw;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.List;
import java.util.Map;
import pf;

public class AdditionalServicesFragment
  extends SnapchatFragment
{
  private final ahq a;
  private final atx b;
  private boolean c;
  private CheckBox d;
  
  public AdditionalServicesFragment()
  {
    this(new ahq(), new atx());
  }
  
  @SuppressLint({"ValidFragment"})
  private AdditionalServicesFragment(ahq paramahq, atx paramatx)
  {
    a = paramahq;
    b = paramatx;
  }
  
  public final void i()
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
    ahq localahq = new ahq();
    if (d.isChecked())
    {
      if ((!localSharedPreferences.getBoolean(SharedPreferenceKey.ALLOWED_GPS.getKey(), false)) || (!ajx.ab()))
      {
        localahq.a(getActivity(), new ahq.a()
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
      ajx.i(false);
      ahq.a(true);
      AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", true);
      c = true;
      return;
    }
    ahq.a(false);
    AnalyticsEvents.a("TOGGLE_SETTING_FILTERS", false);
    c = true;
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968583, paramViewGroup, false);
    c(2131361893).setOnClickListener(new View.OnClickListener()
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
        ban.a().a(new bdw(new PermissionsExplanationFragment()));
      }
    });
    d = ((CheckBox)c(2131361900));
    paramLayoutInflater = (CheckBox)c(2131361903);
    paramViewGroup = (CheckBox)c(2131361905);
    d.setChecked(ajx.ab());
    paramLayoutInflater.setChecked(ajx.ac());
    paramViewGroup.setChecked(ajx.aa());
    c(2131361896).setOnClickListener(new View.OnClickListener()
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
    c(2131361902).setOnClickListener(new View.OnClickListener()
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
    c(2131361904).setOnClickListener(new View.OnClickListener()
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
        ajx.l(paramAnonymousBoolean);
        AnalyticsEvents.a("TOGGLE_SETTING_FLASH", paramAnonymousBoolean);
      }
    });
    paramViewGroup.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public final void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        AdditionalServicesFragment.b(AdditionalServicesFragment.this);
        ajx.j(paramAnonymousBoolean);
        AnalyticsEvents.a("TOGGLE_SETTING_REPLAY", paramAnonymousBoolean);
      }
    });
    ((TextView)c(2131361898)).append(" " + atx.a(2131493484, new Object[] { atx.a(2131493601, new Object[0]) }));
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    super.onPause();
    ahs localahs;
    aib localaib;
    if (c)
    {
      new pf().executeOnExecutor(auh.NETWORK_EXECUTOR, new String[0]);
      if (!ajx.ab())
      {
        localahs = ahs.c();
        if (localahs != null)
        {
          d = "{}";
          ??? = a;
          a.d();
          localaib = b;
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
      ban.a().a(new bco());
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    TextView localTextView1 = (TextView)c(2131361898);
    TextView localTextView2 = (TextView)c(2131361899);
    if (!ajx.ab())
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
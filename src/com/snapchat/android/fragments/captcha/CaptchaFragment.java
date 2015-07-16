package com.snapchat.android.fragments.captcha;

import ago;
import ago.a;
import ago.b;
import akp;
import akr;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import aqx;
import auh;
import avf;
import awf;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.RegistrationAnalytics;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.fragments.signup.NewUserContactBookFragment;
import com.snapchat.android.ui.window.WindowConfiguration;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kp;
import kq;
import kr;
import ml;
import pd;
import pd.b;
import pu;
import pu.a;

public class CaptchaFragment
  extends SnapchatFragment
  implements ago.a, pd.b, pu.a
{
  private String a;
  private int b;
  private int c;
  private Button d;
  private ProgressBar e;
  private int f;
  private GridView g;
  private RelativeLayout h;
  private final RegistrationAnalytics i;
  
  public CaptchaFragment()
  {
    this(null, new WindowConfiguration());
  }
  
  @SuppressLint({"ValidFragment"})
  private CaptchaFragment(String paramString, RegistrationAnalytics paramRegistrationAnalytics, WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
    a = paramString;
    i = paramRegistrationAnalytics;
  }
  
  @SuppressLint({"ValidFragment"})
  public CaptchaFragment(String paramString, WindowConfiguration paramWindowConfiguration)
  {
    this(paramString, RegistrationAnalytics.a(), paramWindowConfiguration);
  }
  
  public final void a()
  {
    final TextView localTextView = (TextView)c(2131361962);
    localTextView.setText(2131492955);
    final ProgressBar localProgressBar = (ProgressBar)c(2131361963);
    localProgressBar.setVisibility(4);
    e.setVisibility(4);
    h.setVisibility(8);
    final Button localButton = (Button)c(2131361964);
    localButton.setVisibility(0);
    localButton.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (getActivity() == null) {
          return;
        }
        localButton.setVisibility(8);
        localTextView.setText(2131492956);
        localProgressBar.setVisibility(0);
        new pd(CaptchaFragment.this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      }
    });
  }
  
  public final void a(int paramInt)
  {
    if (paramInt > 0)
    {
      h.setVisibility(0);
      d.setText(2131493356);
      d.setClickable(true);
    }
    for (;;)
    {
      c = paramInt;
      return;
      h.setVisibility(8);
    }
  }
  
  public final void a(final String paramString, final List<Bitmap> paramList)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (localFragmentActivity == null) {
      return;
    }
    paramList = new ago(localFragmentActivity, paramList, this)
    {
      public final boolean areAllItemsEnabled()
      {
        return CaptchaFragment.a(CaptchaFragment.this).isClickable();
      }
      
      public final boolean isEnabled(int paramAnonymousInt)
      {
        return CaptchaFragment.a(CaptchaFragment.this).isClickable();
      }
    };
    g.setAdapter(paramList);
    g.setOnItemClickListener(paramList);
    g.setVisibility(0);
    g.setClickable(true);
    g.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return paramAnonymousMotionEvent.getAction() == 2;
      }
    });
    d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (getActivity() == null) {
          return;
        }
        Object localObject = paramList;
        paramAnonymousView = new ArrayList(a.size());
        localObject = a.iterator();
        while (((Iterator)localObject).hasNext()) {
          paramAnonymousView.add(Boolean.valueOf(nexta));
        }
        new pu(paramString, paramAnonymousView, CaptchaFragment.this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
        CaptchaFragment.a(CaptchaFragment.this).setClickable(false);
        CaptchaFragment.b(CaptchaFragment.this).setText("");
        CaptchaFragment.b(CaptchaFragment.this).setClickable(false);
        CaptchaFragment.c(CaptchaFragment.this).setVisibility(0);
      }
    });
    c(2131361962).setVisibility(4);
    c(2131361963).setVisibility(4);
  }
  
  public final void d()
  {
    t_();
  }
  
  public final boolean g()
  {
    new aqx(getActivity(), f).show();
    return true;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968598, paramViewGroup, false);
    awf.a(getActivity(), mFragmentLayout);
    new pd(this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    ((TextView)c(2131361959)).setText(a);
    d = ((Button)c(2131361966));
    paramLayoutInflater = d;
    getActivity().getAssets();
    auh.a(paramLayoutInflater);
    e = ((ProgressBar)c(2131361967));
    h = ((RelativeLayout)c(2131361965));
    g = ((GridView)c(2131361961));
    g.setVerticalScrollBarEnabled(false);
    f = paramViewGroup.getId();
    ScAnalyticsEventEngine.a(new kq());
    return mFragmentLayout;
  }
  
  public final void s_()
  {
    akr.c(false);
    int j = b + 1;
    int k = c;
    Object localObject = new kr();
    attemptCount = Long.valueOf(j);
    imageCount = Long.valueOf(k);
    ScAnalyticsEventEngine.a((ml)localObject);
    AnalyticsEvents.a(Integer.toString(j - 1));
    AnalyticsEvents.a(true);
    akp.a(getActivity());
    if (akr.f()) {}
    try
    {
      getActivitymFragments.beginTransaction().replace(f, new NewUserContactBookFragment()).commit();
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
    localObject = PreferenceManager.getDefaultSharedPreferences(getActivity()).edit();
    ((SharedPreferences.Editor)localObject).putBoolean(SharedPreferenceKey.SHOULD_BOUNCE_TEAM_SNAPCHAT_CELL_IN_FEED.getKey(), true);
    ((SharedPreferences.Editor)localObject).apply();
    akr.c(false);
    localObject = getActivity();
    startActivity(new Intent((Context)localObject, LandingPageActivity.class));
    ((FragmentActivity)localObject).finish();
    RegistrationAnalytics.n();
    return;
  }
  
  public final void t_()
  {
    if (getActivity() == null) {
      return;
    }
    ((TextView)c(2131361962)).setText(2131492956);
    c(2131361962).setVisibility(0);
    c(2131361963).setVisibility(0);
    ((TextView)c(2131361959)).setText(2131492957);
    ((TextView)c(2131361959)).setTextColor(-65536);
    g.setVisibility(4);
    b += 1;
    int j = b;
    int k = c;
    kp localkp = new kp();
    attemptCount = Long.valueOf(j);
    imageCount = Long.valueOf(k);
    ScAnalyticsEventEngine.a(localkp);
    AnalyticsEvents.a(false);
    new pd(this).executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
    a(0);
    h.setVisibility(8);
    e.setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.captcha.CaptchaFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
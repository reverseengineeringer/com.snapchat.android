package com.snapchat.android.discover.ui.fragment;

import acy;
import acz;
import ade;
import aej;
import aej.7;
import aej.a;
import aek;
import aep;
import afh;
import afl;
import afw;
import afy;
import alv;
import alz;
import ama;
import amt;
import amu;
import amu.a;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import anh;
import apg;
import aph;
import awf;
import bet;
import bfg;
import bpi;
import chc;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelGroupView;
import com.snapchat.android.discover.ui.ChannelView;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.1;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState;
import com.snapchat.android.discover.ui.OpenChannelAnimationView;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager.a;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;
import com.snapchat.android.util.fragment.SnapchatFragment;
import com.squareup.otto.Bus;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import nw;

public class DiscoverFragment
  extends SnapchatFragment
  implements aej.a, alz, DiscoverEndpointManager.a
{
  private final aph a;
  private final DiscoverEndpointManager b;
  private final acz c;
  private final ama d;
  private final DiscoverLoadingStatePresenter e;
  private final aej f;
  private final acy g;
  private final afh h;
  private afl i = null;
  private ChannelGroupView j;
  private GridLayoutManager k;
  private OpenChannelAnimationView l;
  private boolean m = false;
  private Set<Integer> n = new HashSet();
  private List<ChannelPage> o;
  private final apg p = new apg()
  {
    public final void a(anh paramAnonymousanh)
    {
      int i = aph.a(paramAnonymousanh);
      if (DiscoverFragment.a(DiscoverFragment.this).contains(Integer.valueOf(i)))
      {
        DiscoverFragment.a(DiscoverFragment.this).remove(Integer.valueOf(i));
        if (!DiscoverFragment.b(DiscoverFragment.this).d()) {
          DiscoverFragment.c(DiscoverFragment.this).d();
        }
        if ((DiscoverFragment.a(DiscoverFragment.this).isEmpty()) && ((paramAnonymousanh instanceof aek)) && (a == 0) && (DiscoverFragment.d(DiscoverFragment.this).a() == 0))
        {
          DiscoverFragment.e(DiscoverFragment.this).a(DiscoverLoadingStatePresenter.LoadingState.GENERIC_ERROR);
          i();
        }
      }
    }
  };
  private final View.OnClickListener q = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if (!i())
      {
        DiscoverFragment.e(DiscoverFragment.this).a(DiscoverLoadingStatePresenter.LoadingState.LOADING);
        d();
      }
    }
  };
  
  public DiscoverFragment()
  {
    this(aph.a(), DiscoverEndpointManager.a(), acz.a(), ama.a(), new DiscoverLoadingStatePresenter(), aej.a(), acy.a(), afh.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private DiscoverFragment(aph paramaph, DiscoverEndpointManager paramDiscoverEndpointManager, acz paramacz, ama paramama, DiscoverLoadingStatePresenter paramDiscoverLoadingStatePresenter, aej paramaej, acy paramacy, afh paramafh)
  {
    a = paramaph;
    b = paramDiscoverEndpointManager;
    c = paramacz;
    d = paramama;
    e = paramDiscoverLoadingStatePresenter;
    f = paramaej;
    g = paramacy;
    h = paramafh;
  }
  
  private void a(int paramInt)
  {
    ChannelSpanSizeLookup localChannelSpanSizeLookup = new ChannelSpanSizeLookup(paramInt);
    aep localaep = new aep(localChannelSpanSizeLookup);
    k.g = localChannelSpanSizeLookup;
    j.a(localaep);
    j.removeAllViews();
  }
  
  private void b(@chc final List<ChannelPage> paramList)
  {
    if (mFragmentLayout != null) {
      mFragmentLayout.post(new Runnable()
      {
        public final void run()
        {
          DiscoverFragment.a(DiscoverFragment.this, paramList);
        }
      });
    }
  }
  
  public final void a()
  {
    DiscoverEndpointManager.Compatibility localCompatibility = b.b;
    if (TextUtils.isEmpty(b.b()))
    {
      e.a(DiscoverEndpointManager.Compatibility.NOT_SUPPORTED);
      i();
    }
    do
    {
      return;
      e.a(localCompatibility);
    } while ((i()) || (localCompatibility != DiscoverEndpointManager.Compatibility.SUPPORTED));
    d();
  }
  
  public final void a(NetworkInfo paramNetworkInfo)
  {
    if (d.d()) {
      g.c();
    }
  }
  
  public final void a(@chc List<ChannelPage> paramList)
  {
    if (!mAreLargeUiUpdatesEnabled)
    {
      o = paramList;
      return;
    }
    b(paramList);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void c()
  {
    super.c();
    if (o != null)
    {
      b(o);
      o = null;
    }
  }
  
  protected final void d()
  {
    if ((b.b() != null) && (b.b == DiscoverEndpointManager.Compatibility.SUPPORTED) && (n.isEmpty()))
    {
      if (i.a() == 0) {
        e.a(DiscoverLoadingStatePresenter.LoadingState.LOADING);
      }
      Set localSet = n;
      aph localaph = a;
      FragmentActivity localFragmentActivity = getActivity();
      Intent localIntent = localaph.b(localFragmentActivity);
      localIntent.putExtra("op_code", 1007);
      localSet.add(Integer.valueOf(localaph.a(localFragmentActivity, localIntent)));
    }
  }
  
  protected final void e()
  {
    nw.d();
    super.e();
    getActivity().setVolumeControlStream(3);
    c.c();
    Object localObject = g;
    DiscoverMediaCategory localDiscoverMediaCategory = DiscoverMediaCategory.HOME_PAGE;
    localObject = b.iterator();
    while (((Iterator)localObject).hasNext())
    {
      ade localade = (ade)((Iterator)localObject).next();
      if (localDiscoverMediaCategory.equals(localade.d())) {
        localade.c();
      }
    }
    d.a(this);
    nw.e();
  }
  
  protected final void f()
  {
    d.b(this);
    c.c();
    super.f();
  }
  
  public final boolean g()
  {
    return h.b();
  }
  
  protected final alv h()
  {
    return new alv(new String[] { "DISCOVER" });
  }
  
  protected final boolean i()
  {
    NetworkInfo localNetworkInfo = d.b();
    if (getActivity().getExternalCacheDir() == null)
    {
      e.a(DiscoverLoadingStatePresenter.LoadingState.EXTERNAL_STORAGE_UNAVAILABLE);
      return true;
    }
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      e.a(DiscoverLoadingStatePresenter.LoadingState.NETWORK_ERROR);
      return true;
    }
    return false;
  }
  
  public final amt k()
  {
    new amt()
    {
      public final boolean a(amu.a paramAnonymousa)
      {
        return amu.g.contains(c);
      }
      
      public final boolean b(amu.a paramAnonymousa)
      {
        return false;
      }
    };
  }
  
  public void onCreate(Bundle paramBundle)
  {
    nw.d();
    super.onCreate(paramBundle);
    paramBundle = b;
    if (this != null) {
      a.add(this);
    }
    h.c();
    nw.e();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nw.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968654, paramViewGroup, false);
    l = ((OpenChannelAnimationView)c(2131362265));
    i = new afl(getActivity(), h, l);
    c(2131362253).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    j = ((ChannelGroupView)c(2131362255));
    getActivity();
    k = new GridLayoutManager((byte)0);
    a(i.a());
    j.setLayoutManager(k);
    j.setAdapter(i);
    paramLayoutInflater = e;
    paramViewGroup = mFragmentLayout;
    paramBundle = i;
    View.OnClickListener localOnClickListener = q;
    a = paramViewGroup.findViewById(2131362256);
    b = ((TextView)a.findViewById(2131362257));
    c = ((ImageView)a.findViewById(2131362258));
    d = paramViewGroup.findViewById(2131362259);
    d.setClickable(false);
    e = ((ImageView)d.findViewById(2131362260));
    d.setOnClickListener(new DiscoverLoadingStatePresenter.1(paramLayoutInflater, localOnClickListener));
    g = paramViewGroup.findViewById(2131362262);
    f = ((ChannelGroupView)paramViewGroup.findViewById(2131362255));
    h = paramBundle;
    int i1 = getResourcesgetConfigurationscreenLayout & 0xF;
    float f1 = awf.b(getActivity()) / awf.a(getActivity());
    if ((i1 == 1) || ((i1 == 2) && (f1 <= 1.65F))) {
      ((ImageView)c(2131362252)).setImageResource(2130837771);
    }
    f.a(this);
    nw.e();
    return mFragmentLayout;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    f.b(this);
    b.a.remove(this);
  }
  
  @bpi
  public void onEditionClose(afw paramafw)
  {
    aej localaej = f;
    List localList = c;
    h.post(new aej.7(localaej, localList));
    f.d();
    paramafw = j.findViewWithTag(a);
    if (paramafw != null) {
      paramafw.invalidate();
    }
  }
  
  @bpi
  public void onPagedToDiscoverEvent(final afy paramafy)
  {
    j.post(new Runnable()
    {
      public final void run()
      {
        ChannelView localChannelView = (ChannelView)DiscoverFragment.f(DiscoverFragment.this).findViewWithTag(paramafya);
        DiscoverFragment.b(DiscoverFragment.this).a(localChannelView, DiscoverFragment.g(DiscoverFragment.this), EditionOpenOrigin.CHAT, paramafya, paramafyb, paramafyc, paramafyd);
      }
    });
  }
  
  public void onPause()
  {
    super.onPause();
    afh localafh = h;
    if (localafh.d())
    {
      EditionViewerFragment localEditionViewerFragment = c;
      if (a != null) {
        localEditionViewerFragment.b(EditionViewerPager.SwipeToExitMethod.ENTER_BACKGROUND);
      }
    }
    a.a(new bet(true));
    a.b(1007, p);
    n.clear();
  }
  
  public void onResume()
  {
    nw.d();
    super.onResume();
    a.a(1007, p);
    e.a(b.b);
    Iterator localIterator = g.b.iterator();
    while (localIterator.hasNext()) {
      ((ade)localIterator.next()).b();
    }
    if (!i()) {
      d();
    }
    nw.e();
  }
  
  @bpi
  public void onSyncAllCompletedEvent(bfg parambfg)
  {
    m = true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.DiscoverFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
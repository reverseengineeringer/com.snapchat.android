package com.snapchat.android.discover.ui.fragment;

import aby;
import abz;
import ace;
import adj;
import adj.6;
import adk;
import adp;
import aeh;
import ael;
import aew;
import aey;
import ala;
import ald;
import ale;
import alw;
import alx;
import alx.a;
import amk;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.support.v7.widget.GridLayoutManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import aok;
import aol;
import avh;
import beh;
import boh;
import com.snapchat.android.Timber;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.model.database.vtable.PublisherAndEditionVirtualTable;
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
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import nf;

public class DiscoverFragment
  extends SnapchatFragment
  implements ald, LoaderManager.LoaderCallbacks<Cursor>, DiscoverEndpointManager.a
{
  private final aol a;
  private final DiscoverEndpointManager b;
  private final abz c;
  private final ale d;
  private final DiscoverLoadingStatePresenter e;
  private final adj f;
  private final aby g;
  private final aeh h;
  private ael i = null;
  private ChannelGroupView j;
  private GridLayoutManager k;
  private OpenChannelAnimationView l;
  private boolean m = false;
  private Set<Integer> n = new HashSet();
  private Cursor o;
  private final aok p = new aok()
  {
    public final void a(amk paramAnonymousamk)
    {
      int i = aol.a(paramAnonymousamk);
      if (DiscoverFragment.a(DiscoverFragment.this).contains(Integer.valueOf(i)))
      {
        DiscoverFragment.a(DiscoverFragment.this).remove(Integer.valueOf(i));
        if (!DiscoverFragment.b(DiscoverFragment.this).d()) {
          DiscoverFragment.c(DiscoverFragment.this).c();
        }
        if ((DiscoverFragment.a(DiscoverFragment.this).isEmpty()) && ((paramAnonymousamk instanceof adk)) && (a == 0) && (DiscoverFragment.d(DiscoverFragment.this).a() == 0))
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
    this(aol.a(), DiscoverEndpointManager.a(), abz.a(), ale.a(), new DiscoverLoadingStatePresenter(), adj.a(), aby.a(), aeh.a());
  }
  
  @SuppressLint({"ValidFragment"})
  private DiscoverFragment(aol paramaol, DiscoverEndpointManager paramDiscoverEndpointManager, abz paramabz, ale paramale, DiscoverLoadingStatePresenter paramDiscoverLoadingStatePresenter, adj paramadj, aby paramaby, aeh paramaeh)
  {
    a = paramaol;
    b = paramDiscoverEndpointManager;
    c = paramabz;
    d = paramale;
    e = paramDiscoverLoadingStatePresenter;
    f = paramadj;
    g = paramaby;
    h = paramaeh;
  }
  
  private void a(int paramInt)
  {
    ChannelSpanSizeLookup localChannelSpanSizeLookup = new ChannelSpanSizeLookup(paramInt);
    adp localadp = new adp(localChannelSpanSizeLookup);
    k.g = localChannelSpanSizeLookup;
    j.a(localadp);
    j.removeAllViews();
  }
  
  private void a(Cursor paramCursor)
  {
    int i1;
    if (paramCursor == null)
    {
      i1 = 0;
      if (i1 <= 0) {
        break label56;
      }
      e.a(DiscoverLoadingStatePresenter.LoadingState.LOADED);
    }
    for (;;)
    {
      if (i1 != i.a()) {
        a(i1);
      }
      i.a(paramCursor);
      return;
      i1 = paramCursor.getCount();
      break;
      label56:
      if ((m) && (n.isEmpty()) && (i1 == 0))
      {
        Timber.c("DiscoverFragment", "onLoadFinished - No Channels.", new Object[0]);
        e.a(DiscoverLoadingStatePresenter.LoadingState.GENERIC_ERROR);
        i();
      }
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
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BEHIND;
  }
  
  public final void c()
  {
    super.c();
    Timber.a("DiscoverFragment", "Entering pager window.", new Object[0]);
    if (o != null)
    {
      Timber.a("DiscoverFragment", "Swapping cursor.", new Object[0]);
      a(o);
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
      Timber.c("DiscoverFragment", "Fetching discover channel list", new Object[0]);
      Set localSet = n;
      aol localaol = a;
      FragmentActivity localFragmentActivity = getActivity();
      Intent localIntent = localaol.b(localFragmentActivity);
      localIntent.putExtra("op_code", 1007);
      localSet.add(Integer.valueOf(localaol.a(localFragmentActivity, localIntent)));
    }
  }
  
  protected final void e()
  {
    nf.d();
    super.e();
    getActivity().setVolumeControlStream(3);
    c.c();
    Object localObject = g;
    DiscoverMediaCategory localDiscoverMediaCategory = DiscoverMediaCategory.HOME_PAGE;
    Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Retry failed media for context %s", new Object[] { localDiscoverMediaCategory });
    localObject = b.iterator();
    while (((Iterator)localObject).hasNext())
    {
      ace localace = (ace)((Iterator)localObject).next();
      if (localDiscoverMediaCategory.equals(localace.d())) {
        localace.c();
      }
    }
    d.a(this);
    nf.e();
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
  
  protected final ala h()
  {
    return new ala(new String[] { "DISCOVER" });
  }
  
  protected final boolean i()
  {
    NetworkInfo localNetworkInfo = d.b();
    if (getActivity().getExternalCacheDir() == null)
    {
      Timber.a("DiscoverFragment", "No external storage available error.", new Object[0]);
      e.a(DiscoverLoadingStatePresenter.LoadingState.EXTERNAL_STORAGE_UNAVAILABLE);
      return true;
    }
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      Timber.a("DiscoverFragment", "Network error.", new Object[0]);
      e.a(DiscoverLoadingStatePresenter.LoadingState.NETWORK_ERROR);
      return true;
    }
    return false;
  }
  
  public final alw k()
  {
    new alw()
    {
      public final boolean a(alx.a paramAnonymousa)
      {
        return alx.g.contains(c);
      }
      
      public final boolean b(alx.a paramAnonymousa)
      {
        return false;
      }
    };
  }
  
  public void onCreate(Bundle paramBundle)
  {
    nf.d();
    super.onCreate(paramBundle);
    getActivity().getSupportLoaderManager().initLoader$71be8de6(1000, this);
    paramBundle = b;
    if (this != null) {
      a.add(this);
    }
    nf.e();
  }
  
  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return new CursorLoader(getActivity(), SnapchatProvider.b, PublisherAndEditionVirtualTable.a, null);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    nf.d();
    mFragmentLayout = paramLayoutInflater.inflate(2130968653, paramViewGroup, false);
    l = ((OpenChannelAnimationView)c(2131362267));
    i = new ael(getActivity(), h, l);
    c(2131362255).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    j = ((ChannelGroupView)c(2131362257));
    getActivity();
    k = new GridLayoutManager((byte)0);
    a(i.a());
    j.setLayoutManager(k);
    j.setAdapter(i);
    paramLayoutInflater = e;
    paramViewGroup = mFragmentLayout;
    paramBundle = i;
    View.OnClickListener localOnClickListener = q;
    a = paramViewGroup.findViewById(2131362258);
    b = ((TextView)a.findViewById(2131362259));
    c = ((ImageView)a.findViewById(2131362260));
    d = paramViewGroup.findViewById(2131362261);
    d.setClickable(false);
    e = ((ImageView)d.findViewById(2131362262));
    d.setOnClickListener(new DiscoverLoadingStatePresenter.1(paramLayoutInflater, localOnClickListener));
    g = paramViewGroup.findViewById(2131362264);
    f = ((ChannelGroupView)paramViewGroup.findViewById(2131362257));
    h = paramBundle;
    int i1 = getResourcesgetConfigurationscreenLayout & 0xF;
    float f1 = avh.b(getActivity()) / avh.a(getActivity());
    if ((i1 == 1) || ((i1 == 2) && (f1 <= 1.65F))) {
      ((ImageView)c(2131362254)).setImageResource(2130837771);
    }
    nf.e();
    return mFragmentLayout;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b.a.remove(this);
  }
  
  @boh
  public void onEditionClose(aew paramaew)
  {
    adj localadj = f;
    List localList = c;
    g.post(new adj.6(localadj, localList));
    f.c();
    j.findViewWithTag(a).invalidate();
  }
  
  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    a(0);
    i.a(null);
  }
  
  @boh
  public void onPagedToDiscoverEvent(final aey paramaey)
  {
    j.post(new Runnable()
    {
      public final void run()
      {
        ChannelView localChannelView = (ChannelView)DiscoverFragment.f(DiscoverFragment.this).findViewWithTag(paramaeya);
        DiscoverFragment.b(DiscoverFragment.this).a(localChannelView, DiscoverFragment.g(DiscoverFragment.this), EditionOpenOrigin.CHAT, paramaeya, paramaeyb, paramaeyc, paramaeyd);
      }
    });
  }
  
  public void onPause()
  {
    super.onPause();
    h.c();
    a.b(1007, p);
    n.clear();
  }
  
  public void onResume()
  {
    nf.d();
    super.onResume();
    a.a(1007, p);
    e.a(b.b);
    Object localObject = g;
    Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Checking cache consistency", new Object[0]);
    localObject = b.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((ace)((Iterator)localObject).next()).b();
    }
    if (!i()) {
      d();
    }
    nf.e();
  }
  
  @boh
  public void onSyncAllCompletedEvent(beh parambeh)
  {
    m = true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.DiscoverFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
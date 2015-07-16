package com.snapchat.android.fragments.settings;

import ahi;
import akp;
import akr;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.support.v7.widget.RecyclerView.c;
import android.support.v7.widget.RecyclerView.h;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import bfq;
import bpi;
import cdn;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.List;

public class BlockedUsersFragment
  extends SnapchatFragment
{
  protected akp a;
  private final RecyclerView.c b = new RecyclerView.c()
  {
    public final void a()
    {
      BlockedUsersFragment.a(BlockedUsersFragment.this);
    }
    
    public final void a(int paramAnonymousInt)
    {
      BlockedUsersFragment.a(BlockedUsersFragment.this);
    }
    
    public final void a(int paramAnonymousInt1, int paramAnonymousInt2)
    {
      BlockedUsersFragment.a(BlockedUsersFragment.this);
    }
    
    public final void b(int paramAnonymousInt)
    {
      BlockedUsersFragment.a(BlockedUsersFragment.this);
    }
  };
  private List<Friend> c = new ArrayList();
  private View d;
  private RecyclerView e;
  private RecyclerView.h f;
  private ahi g;
  
  @cdn
  private void i()
  {
    if (a == null) {
      a = akp.g();
    }
    if (a != null)
    {
      c.clear();
      c.addAll(a.r());
      g.a.b();
    }
  }
  
  protected final void e()
  {
    i();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968588, paramViewGroup, false);
    c(2131361823).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    d = c(2131361914);
    e = ((RecyclerView)c(2131361915));
    e.setHasFixedSize(true);
    getActivity();
    f = new LinearLayoutManager();
    e.setLayoutManager(f);
    g = new ahi(getActivity(), c, akr.a());
    e.setAdapter(g);
    return mFragmentLayout;
  }
  
  public void onStart()
  {
    super.onStart();
    g.a(b);
  }
  
  public void onStop()
  {
    super.onStop();
    g.b(b);
  }
  
  @bpi
  public void onUserLoadedEvent(bfq parambfq)
  {
    if ((parambfq != null) && (user != null) && (a == null))
    {
      a = user;
      i();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.BlockedUsersFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
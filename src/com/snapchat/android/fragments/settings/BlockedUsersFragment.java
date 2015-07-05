package com.snapchat.android.fragments.settings;

import agl;
import ajv;
import ajx;
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
import ber;
import boh;
import ccm;
import com.snapchat.android.model.Friend;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.util.ArrayList;
import java.util.List;

public class BlockedUsersFragment
  extends SnapchatFragment
{
  protected ajv a;
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
  private agl g;
  
  @ccm
  private void i()
  {
    if (a == null) {
      a = ajv.g();
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
    mFragmentLayout = paramLayoutInflater.inflate(2130968587, paramViewGroup, false);
    c(2131361822).setOnClickListener(new View.OnClickListener()
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
    g = new agl(getActivity(), c, ajx.a());
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
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    if ((paramber != null) && (user != null) && (a == null))
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
package com.snapchat.android.fragments.addfriends;

import agi;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.GridLayoutManager.b;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import arp;
import arq;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class AddFriendsFromCameraRollFragment
  extends SnapchatFragment
{
  private arp a;
  private RecyclerView b;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    mFragmentLayout = paramLayoutInflater.inflate(2130968578, paramViewGroup, false);
    a = new arp(getActivity(), paramLayoutInflater, aa, ab);
    b = ((RecyclerView)mFragmentLayout.findViewById(2131361848));
    getActivity();
    paramLayoutInflater = new GridLayoutManager();
    g = new GridLayoutManager.b()
    {
      public final int a(int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0) {
          return 3;
        }
        return 1;
      }
    };
    b.setLayoutManager(paramLayoutInflater);
    b.setAdapter(a);
    c(2131361823).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    return mFragmentLayout;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onResume()
  {
    super.onResume();
    if (aa.a.length != a.c.a.length)
    {
      agi.a().a(getActivity());
      a.c = aa;
      a.d = ab;
      arq localarq = a.c;
      int i = 0;
      while (i < b.length)
      {
        b[i] = false;
        i += 1;
      }
      a.a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddFriendsFromCameraRollFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.addfriends;

import agr;
import agu;
import alw;
import alx;
import alx.a;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import bbd;
import bcw;
import bcx;
import ber;
import boh;
import com.snapchat.android.ui.window.WindowConfiguration;
import java.util.Set;

public class AddressBookFragment
  extends AddFriendsFragment
{
  public AddressBookFragment() {}
  
  @SuppressLint({"ValidFragment"})
  public AddressBookFragment(WindowConfiguration paramWindowConfiguration)
  {
    super(paramWindowConfiguration);
  }
  
  protected final void D()
  {
    A.setEnabled(true);
  }
  
  protected final void E()
  {
    if (A.isEnabled()) {
      A.setEnabled(false);
    }
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
  
  protected final int l()
  {
    switch (2.a[a.ordinal()])
    {
    default: 
      return 2131492915;
    }
    return 2131493175;
  }
  
  @boh
  public void onContactsOnSnapchatUpdatedEvent(bbd parambbd)
  {
    super.onContactsOnSnapchatUpdatedEvent(parambbd);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e = new agu();
    c = e.b();
    b = e.a();
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    d.i = true;
    d.g = true;
    return paramLayoutInflater;
  }
  
  @boh
  public void onRefreshFriendExistsTask(bcx parambcx)
  {
    super.onRefreshFriendExistsTask(parambcx);
  }
  
  @boh
  public void onRefreshOnFriendActionEvent(bcw parambcw)
  {
    super.onRefreshOnFriendActionEvent(parambcw);
  }
  
  @boh
  public void onUserLoadedEvent(ber paramber)
  {
    super.onUserLoadedEvent(paramber);
  }
  
  protected final String t()
  {
    return super.t() + "_FOR_ADDRESS_BOOK";
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddressBookFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
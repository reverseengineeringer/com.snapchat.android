package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;

public class AddressBookSearchViewFragment
  extends AddressBookFragment
{
  public final boolean g()
  {
    G();
    return false;
  }
  
  protected final void m() {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    C = AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_SEARCH_PAGE;
    m.setText(l());
    F();
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddressBookSearchViewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
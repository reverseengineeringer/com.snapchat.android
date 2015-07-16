package com.snapchat.android.fragments.addfriends;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.snapchat.android.analytics.AnalyticsEvents.AnalyticsContext;
import kf;

public class AddressBookSearchViewFragment
  extends AddressBookFragment
{
  public final boolean g()
  {
    G();
    a(kf.BACK_BUTTON);
    return false;
  }
  
  protected final void m() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null) {
      if (!paramBundle.getBoolean("contextIsAdressBook", true)) {
        break label34;
      }
    }
    label34:
    for (paramBundle = AnalyticsEvents.AnalyticsContext.PROFILE_ADD_FRIENDS_BY_CONTACTS_PAGE;; paramBundle = AnalyticsEvents.AnalyticsContext.PROFILE_MY_CONTACTS_SEARCH_PAGE)
    {
      D = paramBundle;
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
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
package com.snapchat.android.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import cgb;
import com.snapchat.android.Timber;
import com.snapchat.android.fragments.addfriends.LeftSwipeContentFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class SecurityGhostFragment
  extends SnapchatFragment
{
  private String a;
  
  public static SecurityGhostFragment a(@cgb String paramString)
  {
    SecurityGhostFragment localSecurityGhostFragment = new SecurityGhostFragment();
    Bundle localBundle = new Bundle(1);
    localBundle.putSerializable("text_message", paramString);
    localSecurityGhostFragment.setArguments(localBundle);
    return localSecurityGhostFragment;
  }
  
  public final boolean g()
  {
    if (d(LeftSwipeContentFragment.SETTINGS_FRAGMENT.tag())) {
      return true;
    }
    return super.g();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null) {
      a = paramBundle.getString("text_message");
    }
    Timber.c("SecurityGhostFragment", "onCreate - mText " + a, new Object[0]);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968722, paramViewGroup, false);
    ((TextView)c(2131362605)).setText(a);
    c(2131362602).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    return mFragmentLayout;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.SecurityGhostFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
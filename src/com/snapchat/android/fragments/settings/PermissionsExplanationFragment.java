package com.snapchat.android.fragments.settings;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class PermissionsExplanationFragment
  extends SnapchatFragment
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968706, paramViewGroup, false);
    c(2131362488).setOnClickListener(new View.OnClickListener()
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
 * Qualified Name:     com.snapchat.android.fragments.settings.PermissionsExplanationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
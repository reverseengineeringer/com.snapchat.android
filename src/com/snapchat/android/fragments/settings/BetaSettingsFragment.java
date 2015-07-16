package com.snapchat.android.fragments.settings;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.snapchat.android.util.fragment.SnapchatFragment;

public class BetaSettingsFragment
  extends SnapchatFragment
{
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968587, paramViewGroup, false);
    c(2131361895).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        getActivity().onBackPressed();
      }
    });
    c(2131361912).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse("https://plus.google.com/u/0/communities/101602008277453798645"));
        startActivity(paramAnonymousView);
      }
    });
    c(2131361913).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/apps/testing/com.snapchat.android"));
        startActivity(paramAnonymousView);
      }
    });
    return mFragmentLayout;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.BetaSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
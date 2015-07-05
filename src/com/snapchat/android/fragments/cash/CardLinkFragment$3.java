package com.snapchat.android.fragments.cash;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;

final class CardLinkFragment$3
  implements Runnable
{
  CardLinkFragment$3(CardLinkFragment paramCardLinkFragment) {}
  
  public final void run()
  {
    CardLinkFragment.l(a);
    FragmentActivity localFragmentActivity = a.getActivity();
    if ((CardLinkFragment.m(a)) && (localFragmentActivity != null)) {
      localFragmentActivity.onBackPressed();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CardLinkFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
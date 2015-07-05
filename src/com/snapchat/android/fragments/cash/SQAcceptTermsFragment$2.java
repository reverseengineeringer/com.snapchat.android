package com.snapchat.android.fragments.cash;

import ajx;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.analytics.AnalyticsEvents;

final class SQAcceptTermsFragment$2
  implements View.OnClickListener
{
  SQAcceptTermsFragment$2(SQAcceptTermsFragment paramSQAcceptTermsFragment) {}
  
  public final void onClick(View paramView)
  {
    ajx.U();
    AnalyticsEvents.M();
    a.getActivity().mFragments.popBackStack();
    if (SQAcceptTermsFragment.a(a) != null)
    {
      SQAcceptTermsFragment.a(a).a();
      SQAcceptTermsFragment.b(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.SQAcceptTermsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
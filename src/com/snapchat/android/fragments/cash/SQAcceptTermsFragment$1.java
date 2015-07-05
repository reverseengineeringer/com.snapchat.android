package com.snapchat.android.fragments.cash;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

final class SQAcceptTermsFragment$1
  implements View.OnClickListener
{
  SQAcceptTermsFragment$1(SQAcceptTermsFragment paramSQAcceptTermsFragment) {}
  
  public final void onClick(View paramView)
  {
    if (SQAcceptTermsFragment.a(a) != null)
    {
      SQAcceptTermsFragment.a(a).b();
      SQAcceptTermsFragment.b(a);
    }
    a.getActivity().onBackPressed();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.SQAcceptTermsFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
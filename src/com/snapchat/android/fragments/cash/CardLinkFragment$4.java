package com.snapchat.android.fragments.cash;

import android.widget.ProgressBar;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.blockers.CardInputError;

final class CardLinkFragment$4
  implements Runnable
{
  CardLinkFragment$4(CardLinkFragment paramCardLinkFragment, CardInputError paramCardInputError) {}
  
  public final void run()
  {
    switch (CardLinkFragment.6.a[a.ordinal()])
    {
    default: 
      CardLinkFragment.e(b, a);
    }
    for (;;)
    {
      AnalyticsEvents.v(a.name());
      CardLinkFragment.j(b).setVisibility(8);
      CardLinkFragment.c(b);
      return;
      CardLinkFragment.a(b, a);
      continue;
      CardLinkFragment.b(b, a);
      CardLinkFragment.c(b, a);
      continue;
      CardLinkFragment.d(b, a);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.CardLinkFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
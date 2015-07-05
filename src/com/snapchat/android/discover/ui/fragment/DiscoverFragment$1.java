package com.snapchat.android.discover.ui.fragment;

import adj;
import adk;
import aeh;
import ael;
import amk;
import aok;
import aol;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState;
import java.util.Set;

final class DiscoverFragment$1
  implements aok
{
  DiscoverFragment$1(DiscoverFragment paramDiscoverFragment) {}
  
  public final void a(amk paramamk)
  {
    int i = aol.a(paramamk);
    if (DiscoverFragment.a(a).contains(Integer.valueOf(i)))
    {
      DiscoverFragment.a(a).remove(Integer.valueOf(i));
      if (!DiscoverFragment.b(a).d()) {
        DiscoverFragment.c(a).c();
      }
      if ((DiscoverFragment.a(a).isEmpty()) && ((paramamk instanceof adk)) && (a == 0) && (DiscoverFragment.d(a).a() == 0))
      {
        DiscoverFragment.e(a).a(DiscoverLoadingStatePresenter.LoadingState.GENERIC_ERROR);
        a.i();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.DiscoverFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
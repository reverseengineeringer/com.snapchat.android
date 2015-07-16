package com.snapchat.android.discover.ui.fragment;

import aej;
import aek;
import afh;
import afl;
import anh;
import apg;
import aph;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState;
import java.util.Set;

final class DiscoverFragment$1
  implements apg
{
  DiscoverFragment$1(DiscoverFragment paramDiscoverFragment) {}
  
  public final void a(anh paramanh)
  {
    int i = aph.a(paramanh);
    if (DiscoverFragment.a(a).contains(Integer.valueOf(i)))
    {
      DiscoverFragment.a(a).remove(Integer.valueOf(i));
      if (!DiscoverFragment.b(a).d()) {
        DiscoverFragment.c(a).d();
      }
      if ((DiscoverFragment.a(a).isEmpty()) && ((paramanh instanceof aek)) && (a == 0) && (DiscoverFragment.d(a).a() == 0))
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
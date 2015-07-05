package com.snapchat.android.discover.ui.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter;
import com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.LoadingState;

final class DiscoverFragment$2
  implements View.OnClickListener
{
  DiscoverFragment$2(DiscoverFragment paramDiscoverFragment) {}
  
  public final void onClick(View paramView)
  {
    if (!a.i())
    {
      DiscoverFragment.e(a).a(DiscoverLoadingStatePresenter.LoadingState.LOADING);
      a.d();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.DiscoverFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
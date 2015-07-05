package com.snapchat.android.discover.ui;

import ael;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager.Compatibility;

final class DiscoverLoadingStatePresenter$2
  implements Runnable
{
  DiscoverLoadingStatePresenter$2(DiscoverLoadingStatePresenter paramDiscoverLoadingStatePresenter, DiscoverLoadingStatePresenter.LoadingState paramLoadingState) {}
  
  public final void run()
  {
    DiscoverLoadingStatePresenter localDiscoverLoadingStatePresenter = b;
    DiscoverLoadingStatePresenter.LoadingState localLoadingState = a;
    Timber.c("DiscoverLoadingStatePresenter", "Setting loading state %s (compatibility is %s)", new Object[] { localLoadingState, i });
    if ((i != DiscoverEndpointManager.Compatibility.UNKNOWN) && (i != DiscoverEndpointManager.Compatibility.SUPPORTED)) {
      switch (DiscoverLoadingStatePresenter.3.b[i.ordinal()])
      {
      default: 
        localDiscoverLoadingStatePresenter.a(2131493139);
      }
    }
    while (h == null)
    {
      return;
      localDiscoverLoadingStatePresenter.a(2131493141);
      return;
    }
    if (h.a() == 0) {}
    switch (DiscoverLoadingStatePresenter.3.a[localLoadingState.ordinal()])
    {
    default: 
      localDiscoverLoadingStatePresenter.c();
      return;
    case 1: 
      localDiscoverLoadingStatePresenter.c();
      return;
    case 2: 
      localDiscoverLoadingStatePresenter.b();
      return;
    case 3: 
      f.setVisibility(8);
      a.setVisibility(0);
      c.setVisibility(0);
      b.setVisibility(0);
      b.setText(2131493124);
      localDiscoverLoadingStatePresenter.a();
      return;
    case 4: 
      f.setVisibility(8);
      a.setVisibility(0);
      c.setVisibility(8);
      b.setVisibility(0);
      b.setText(2131493126);
      localDiscoverLoadingStatePresenter.a();
      return;
    }
    localDiscoverLoadingStatePresenter.a(2131493139);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.DiscoverLoadingStatePresenter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
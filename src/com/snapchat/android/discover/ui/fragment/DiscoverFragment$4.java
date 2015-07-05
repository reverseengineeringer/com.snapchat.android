package com.snapchat.android.discover.ui.fragment;

import aeh;
import aey;
import com.snapchat.android.discover.model.EditionOpenOrigin;
import com.snapchat.android.discover.ui.ChannelGroupView;
import com.snapchat.android.discover.ui.ChannelView;

final class DiscoverFragment$4
  implements Runnable
{
  DiscoverFragment$4(DiscoverFragment paramDiscoverFragment, aey paramaey) {}
  
  public final void run()
  {
    ChannelView localChannelView = (ChannelView)DiscoverFragment.f(b).findViewWithTag(a.a);
    DiscoverFragment.b(b).a(localChannelView, DiscoverFragment.g(b), EditionOpenOrigin.CHAT, a.a, a.b, a.c, a.d);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.fragment.DiscoverFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.support.v7.widget.LinearLayoutManager;
import android.view.View;
import bur;
import in.srain.cube.views.ptr.PtrFrameLayout;

final class FeedFragment$19
  implements bur
{
  FeedFragment$19(FeedFragment paramFeedFragment) {}
  
  public final void a(PtrFrameLayout paramPtrFrameLayout)
  {
    paramPtrFrameLayout.post(FeedFragment.j(a));
  }
  
  public final boolean a()
  {
    Object localObject = FeedFragment.i(a);
    localObject = ((LinearLayoutManager)localObject).a(0, ((LinearLayoutManager)localObject).l(), true);
    if (localObject == null) {}
    for (int i = -1; i == 0; i = LinearLayoutManager.a((View)localObject)) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
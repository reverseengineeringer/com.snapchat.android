package com.snapchat.android.fragments.stories;

import bfd;
import bur;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import in.srain.cube.views.ptr.PtrFrameLayout;

final class StoriesFragment$3
  implements bur
{
  StoriesFragment$3(StoriesFragment paramStoriesFragment) {}
  
  public final void a(PtrFrameLayout paramPtrFrameLayout)
  {
    StoriesFragment.k(a).a(NetworkAnalytics.PageContext.STORY);
    StoriesFragment.l(a);
  }
  
  public final boolean a()
  {
    return bfd.a(StoriesFragment.a(a));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
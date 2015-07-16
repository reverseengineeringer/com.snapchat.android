package com.snapchat.android.fragments.stories;

import bgd;
import bvs;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.NetworkAnalytics.PageContext;
import in.srain.cube.views.ptr.PtrFrameLayout;

final class StoriesFragment$2
  implements bvs
{
  StoriesFragment$2(StoriesFragment paramStoriesFragment) {}
  
  public final void a(PtrFrameLayout paramPtrFrameLayout)
  {
    StoriesFragment.j(a).a(NetworkAnalytics.PageContext.STORY);
    StoriesFragment.k(a);
  }
  
  public final boolean a()
  {
    return bgd.a(StoriesFragment.a(a));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.stories;

import ajr;
import android.content.Context;
import aop;
import aqb;
import bdi;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryCollection;
import java.util.List;
import lo;
import pu;

final class StoriesFragment$10
  extends aqb
{
  StoriesFragment$10(StoriesFragment paramStoriesFragment, Context paramContext, String paramString1, String paramString2, String paramString3, Friend paramFriend, StoryCollection paramStoryCollection, bdi parambdi)
  {
    super(paramContext, paramString1, paramString2, paramString3);
  }
  
  protected final void a() {}
  
  protected final void b()
  {
    new pu(a.h()).f();
    StoriesFragment.o(d);
    StoryCollection localStoryCollection = b;
    boolean bool = c.isInRecentUpdates;
    if ((localStoryCollection == null) || (localStoryCollection.e().size() == 0)) {}
    for (;;)
    {
      StoriesFragment.a(d, a);
      return;
      ajr localajr = (ajr)localStoryCollection.e().get(0);
      lo locallo = new lo();
      viewLocation = Long.valueOf(aop.a(bool));
      storyType = aop.c(localajr);
      posterId = localStoryCollection.h();
      if (localajr.aw()) {
        sponsor = localajr.ax();
      }
      if (aop.a(localStoryCollection.h())) {
        geoFence = "LOCAL";
      }
      ScAnalyticsEventEngine.a(locallo);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
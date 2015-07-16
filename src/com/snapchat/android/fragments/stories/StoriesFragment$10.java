package com.snapchat.android.fragments.stories;

import akl;
import android.content.Context;
import apl;
import ara;
import bei;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryCollection;
import mg;
import ql;

final class StoriesFragment$10
  extends ara
{
  StoriesFragment$10(StoriesFragment paramStoriesFragment, Context paramContext, String paramString1, String paramString2, String paramString3, Friend paramFriend, StoryCollection paramStoryCollection, bei parambei)
  {
    super(paramContext, paramString1, paramString2, paramString3);
  }
  
  protected final void a() {}
  
  protected final void b()
  {
    new ql(a.l()).execute();
    StoriesFragment.o(d);
    StoryCollection localStoryCollection = b;
    boolean bool = c.isInRecentUpdates;
    if (localStoryCollection != null)
    {
      akl localakl = localStoryCollection.d();
      if (localakl != null)
      {
        mg localmg = new mg();
        viewLocation = Long.valueOf(apl.b(bool));
        storyType = apl.c(localakl);
        posterId = localStoryCollection.l();
        if (apl.a(localStoryCollection.l())) {
          geoFence = "LOCAL";
        }
        ScAnalyticsEventEngine.a(localmg);
      }
    }
    StoriesFragment.a(d, a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
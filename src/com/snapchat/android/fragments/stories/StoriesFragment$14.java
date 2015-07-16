package com.snapchat.android.fragments.stories;

import ady;
import adz;
import aea;
import java.util.List;

final class StoriesFragment$14
  implements Runnable
{
  StoriesFragment$14(StoriesFragment paramStoriesFragment, List paramList, int paramInt) {}
  
  public final void run()
  {
    ady localady = StoriesFragment.q(c);
    List localList = a;
    int i = b;
    localList = a.a(localList, i);
    b.clear();
    b.addAll(localList);
    c.notifyDataSetChanged();
    c.r();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
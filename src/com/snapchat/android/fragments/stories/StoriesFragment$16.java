package com.snapchat.android.fragments.stories;

import acz.a;
import cbr;
import com.snapchat.android.discover.ui.DiscoverButtonView;

final class StoriesFragment$16
  implements acz.a
{
  StoriesFragment$16(StoriesFragment paramStoriesFragment) {}
  
  @cbr
  public final void a(final boolean paramBoolean)
  {
    StoriesFragment.f(a).post(new Runnable()
    {
      public final void run()
      {
        if (paramBoolean)
        {
          StoriesFragment.f(a).setFilled(true);
          StoriesFragment.f(a).setContentDescription("Filled");
          return;
        }
        StoriesFragment.f(a).setFilled(false);
        StoriesFragment.f(a).setContentDescription("Not Filled");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
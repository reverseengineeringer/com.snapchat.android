package com.snapchat.android.fragments.stories;

import abz.a;
import caq;
import com.snapchat.android.discover.ui.DiscoverButtonView;

final class StoriesFragment$16
  implements abz.a
{
  StoriesFragment$16(StoriesFragment paramStoriesFragment) {}
  
  @caq
  public final void a(final boolean paramBoolean)
  {
    StoriesFragment.g(a).post(new Runnable()
    {
      public final void run()
      {
        if (paramBoolean)
        {
          StoriesFragment.g(a).a();
          StoriesFragment.g(a).setContentDescription("Pulsing");
          return;
        }
        DiscoverButtonView localDiscoverButtonView = StoriesFragment.g(a);
        if (paramBoolean)
        {
          a = false;
          localDiscoverButtonView.removeCallbacks(b);
          localDiscoverButtonView.invalidate();
        }
        StoriesFragment.g(a).setContentDescription("Not Pulsing");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
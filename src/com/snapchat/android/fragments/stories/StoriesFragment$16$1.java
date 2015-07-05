package com.snapchat.android.fragments.stories;

import com.snapchat.android.discover.ui.DiscoverButtonView;

final class StoriesFragment$16$1
  implements Runnable
{
  StoriesFragment$16$1(StoriesFragment.16 param16, boolean paramBoolean) {}
  
  public final void run()
  {
    if (a)
    {
      StoriesFragment.g(b.a).a();
      StoriesFragment.g(b.a).setContentDescription("Pulsing");
      return;
    }
    DiscoverButtonView localDiscoverButtonView = StoriesFragment.g(b.a);
    if (a)
    {
      a = false;
      localDiscoverButtonView.removeCallbacks(b);
      localDiscoverButtonView.invalidate();
    }
    StoriesFragment.g(b.a).setContentDescription("Not Pulsing");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.16.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
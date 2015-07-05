package com.snapchat.android.fragments.stories;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class StoriesFragment$2
  implements AbsListView.OnScrollListener
{
  StoriesFragment$2(StoriesFragment paramStoriesFragment) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt != 0) {
      return;
    }
    StoriesFragment.j(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
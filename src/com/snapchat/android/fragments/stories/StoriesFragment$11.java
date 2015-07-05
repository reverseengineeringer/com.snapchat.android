package com.snapchat.android.fragments.stories;

import android.view.View;
import aoq;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import java.util.Iterator;
import java.util.List;

final class StoriesFragment$11
  implements Runnable
{
  StoriesFragment$11(StoriesFragment paramStoriesFragment) {}
  
  public final void run()
  {
    if (StoriesFragment.a(a) != null)
    {
      StoriesFragment.a(a).setSelection(0);
      localObject = StoriesFragment.a(a).getChildAt(0);
      if (localObject != null) {
        ((View)localObject).requestFocus();
      }
    }
    Object localObject = StoriesFragment.p(a).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((aoq)((Iterator)localObject).next()).n();
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
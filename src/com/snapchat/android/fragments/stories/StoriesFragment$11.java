package com.snapchat.android.fragments.stories;

import android.view.View;
import apm;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import java.util.Iterator;
import java.util.List;
import org.lucasr.twowayview.TwoWayView;

final class StoriesFragment$11
  implements Runnable
{
  StoriesFragment$11(StoriesFragment paramStoriesFragment) {}
  
  public final void run()
  {
    if (StoriesFragment.a(a) != null)
    {
      StoriesFragment.a(a).setSelection(0);
      localObject1 = StoriesFragment.a(a).getChildAt(0);
      if (localObject1 != null) {
        ((View)localObject1).requestFocus();
      }
    }
    Object localObject1 = StoriesFragment.p(a).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (apm)((Iterator)localObject1).next();
      if (e != null)
      {
        e.setSelection(0);
        localObject2 = e.getChildAt(0);
        if (localObject2 != null) {
          ((View)localObject2).requestFocus();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
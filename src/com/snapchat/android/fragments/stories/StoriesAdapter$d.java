package com.snapchat.android.fragments.stories;

import ahb;
import android.view.View;
import android.view.View.OnClickListener;
import bea;
import com.snapchat.android.Timber;
import com.squareup.otto.Bus;

final class StoriesAdapter$d
  implements View.OnClickListener
{
  private final ahb b;
  
  public StoriesAdapter$d(StoriesAdapter paramStoriesAdapter, ahb paramahb)
  {
    b = paramahb;
  }
  
  public final void onClick(View paramView)
  {
    StoriesAdapter.e(a).a(new bea(b));
    Timber.c("StoriesAdapter", "onClick for %s %s", new Object[] { b.getClass().getSimpleName(), b.h() });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
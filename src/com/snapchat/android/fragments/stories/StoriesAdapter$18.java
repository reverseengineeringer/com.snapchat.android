package com.snapchat.android.fragments.stories;

import ahd;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import bdh;
import com.squareup.otto.Bus;

final class StoriesAdapter$18
  implements View.OnClickListener
{
  StoriesAdapter$18(StoriesAdapter paramStoriesAdapter, ahd paramahd) {}
  
  public final void onClick(View paramView)
  {
    StoriesAdapter.c(b).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    StoriesAdapter.e(b).a(new bdh(a.d()));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
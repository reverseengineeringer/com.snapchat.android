package com.snapchat.android.fragments.stories;

import ahu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import bhr.a;
import com.snapchat.android.model.StorySnapLogbook;

final class StoriesAdapter$14
  implements bhr.a
{
  StoriesAdapter$14(StoriesAdapter paramStoriesAdapter, StorySnapLogbook paramStorySnapLogbook, ahu paramahu) {}
  
  public final void a(View paramView)
  {
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        StoriesAdapter.c(c).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
        StoriesAdapter.a(c, a, b);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
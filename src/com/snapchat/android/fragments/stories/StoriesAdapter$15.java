package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import com.snapchat.android.model.StorySnapLogbook;

final class StoriesAdapter$15
  implements View.OnClickListener
{
  StoriesAdapter$15(StoriesAdapter paramStoriesAdapter, StorySnapLogbook paramStorySnapLogbook) {}
  
  public final void onClick(View paramView)
  {
    StoriesAdapter.c(b).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    StoriesAdapter.a(b).a(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
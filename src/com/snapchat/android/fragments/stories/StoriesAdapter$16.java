package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.snapchat.android.model.StorySnapLogbook;

final class StoriesAdapter$16
  implements View.OnLongClickListener
{
  StoriesAdapter$16(StoriesAdapter paramStoriesAdapter, StorySnapLogbook paramStorySnapLogbook) {}
  
  public final boolean onLongClick(View paramView)
  {
    if (!StoriesAdapter.a(b).m()) {
      StoriesAdapter.a(b, a, paramView.getContext());
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
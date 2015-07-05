package com.snapchat.android.fragments.stories;

import ahc;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import bgr.a;
import com.snapchat.android.model.Friend;

final class StoriesAdapter$6
  implements bgr.a
{
  StoriesAdapter$6(StoriesAdapter paramStoriesAdapter, Friend paramFriend, ahc paramahc) {}
  
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
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
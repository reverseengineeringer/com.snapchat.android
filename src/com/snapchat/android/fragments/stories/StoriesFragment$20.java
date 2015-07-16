package com.snapchat.android.fragments.stories;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;

final class StoriesFragment$20
  implements View.OnTouchListener
{
  StoriesFragment$20(StoriesFragment paramStoriesFragment) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (a.h) {
      StoriesFragment.h(a).hideSoftInputFromWindow(a.getView().getWindowToken(), 0);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
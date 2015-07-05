package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;

final class StoriesAdapter$14$1
  implements View.OnClickListener
{
  StoriesAdapter$14$1(StoriesAdapter.14 param14) {}
  
  public final void onClick(View paramView)
  {
    StoriesAdapter.c(a.c).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    StoriesAdapter.a(a.c, a.a, a.b);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.14.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
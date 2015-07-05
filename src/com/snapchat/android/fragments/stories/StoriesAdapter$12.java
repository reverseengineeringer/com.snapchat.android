package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import aom;
import aom.a;
import bgr.a;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.util.AlertDialogUtils;

final class StoriesAdapter$12
  implements bgr.a
{
  StoriesAdapter$12(StoriesAdapter paramStoriesAdapter, StorySnapLogbook paramStorySnapLogbook) {}
  
  public final void a(View paramView)
  {
    paramView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        StoriesAdapter.c(b).hideSoftInputFromWindow(paramAnonymousView.getWindowToken(), 0);
        StoriesAdapter.b(b).b(a, new aom.a()
        {
          public final void a() {}
          
          public final void b() {}
          
          public final void c() {}
          
          public final void d()
          {
            AlertDialogUtils.a(2131493325, StoriesAdapter.d(b));
          }
        });
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.stories;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import aom;
import aom.a;
import com.snapchat.android.util.AlertDialogUtils;

final class StoriesAdapter$12$1
  implements View.OnClickListener
{
  StoriesAdapter$12$1(StoriesAdapter.12 param12) {}
  
  public final void onClick(View paramView)
  {
    StoriesAdapter.c(a.b).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    StoriesAdapter.b(a.b).b(a.a, new aom.a()
    {
      public final void a() {}
      
      public final void b() {}
      
      public final void c() {}
      
      public final void d()
      {
        AlertDialogUtils.a(2131493325, StoriesAdapter.d(a.b));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.12.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
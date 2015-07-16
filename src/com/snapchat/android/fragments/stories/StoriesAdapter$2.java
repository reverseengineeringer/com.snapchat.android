package com.snapchat.android.fragments.stories;

import akr;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import aqw;
import aqw.1;
import com.snapchat.android.model.StoryGroup;
import com.snapchat.android.model.StoryGroup.ActionState;
import com.snapchat.android.util.AlertDialogUtils;

final class StoriesAdapter$2
  implements View.OnClickListener
{
  StoriesAdapter$2(StoriesAdapter paramStoriesAdapter, StoryGroup paramStoryGroup) {}
  
  public final void onClick(View paramView)
  {
    paramView = new aqw(StoriesAdapter.d(b), a);
    b.a(StoryGroup.ActionState.CONFIRMING_SAVE);
    Resources localResources = a.getResources();
    if (akr.aG())
    {
      AlertDialogUtils.a(a, localResources.getString(2131493373), localResources.getString(2131493371), false, new aqw.1(paramView));
      return;
    }
    paramView.a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
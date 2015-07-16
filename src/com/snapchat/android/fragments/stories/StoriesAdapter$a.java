package com.snapchat.android.fragments.stories;

import android.view.View;
import android.widget.TextView;

final class StoriesAdapter$a
{
  final TextView a;
  final View b;
  
  StoriesAdapter$a(StoriesAdapter paramStoriesAdapter, View paramView)
  {
    a = ((TextView)paramView.findViewById(2131361919));
    b = paramView.findViewById(2131361920);
  }
  
  final void a(boolean paramBoolean)
  {
    int j = 0;
    Object localObject = a;
    if (paramBoolean)
    {
      i = 0;
      ((TextView)localObject).setVisibility(i);
      localObject = b;
      if (!paramBoolean) {
        break label45;
      }
    }
    label45:
    for (int i = j;; i = 8)
    {
      ((View)localObject).setVisibility(i);
      return;
      i = 8;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
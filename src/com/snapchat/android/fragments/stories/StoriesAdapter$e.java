package com.snapchat.android.fragments.stories;

import ahc;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewParent;
import com.snapchat.android.ui.ptr.DancingGhostPtrHeader;
import com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout;

final class StoriesAdapter$e
  implements View.OnLongClickListener
{
  private ahc b;
  
  public StoriesAdapter$e(StoriesAdapter paramStoriesAdapter, ahc paramahc)
  {
    b = paramahc;
  }
  
  public final boolean onLongClick(View paramView)
  {
    SnapchatPtrFrameLayout localSnapchatPtrFrameLayout = (SnapchatPtrFrameLayout)paramView.getRootView().findViewById(2131362762);
    paramView = (ViewParent)paramView.getRootView().findViewById(2131362763);
    if (b.r())
    {
      if (a.getHeight() + a.getTop() > 0) {}
      for (int i = 1; i == 0; i = 0)
      {
        localSnapchatPtrFrameLayout.setEnabled(false);
        paramView.requestDisallowInterceptTouchEvent(true);
        b.t();
        b.d(true);
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.snapchat.android.fragments.stories;

import ahz;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.ViewParent;
import com.snapchat.android.ui.ptr.SnapchatPtrFrameLayout;

final class StoriesAdapter$e
  implements View.OnLongClickListener
{
  private ahz b;
  
  public StoriesAdapter$e(StoriesAdapter paramStoriesAdapter, ahz paramahz)
  {
    b = paramahz;
  }
  
  public final boolean onLongClick(View paramView)
  {
    SnapchatPtrFrameLayout localSnapchatPtrFrameLayout = (SnapchatPtrFrameLayout)paramView.getRootView().findViewById(2131362758);
    paramView = (ViewParent)paramView.getRootView().findViewById(2131362759);
    if ((b.r()) && (!localSnapchatPtrFrameLayout.b()))
    {
      localSnapchatPtrFrameLayout.setEnabled(false);
      paramView.requestDisallowInterceptTouchEvent(true);
      b.t();
      b.d(true);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesAdapter.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
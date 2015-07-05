package com.snapchat.android.fragments.stories;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import com.snapchat.android.model.StoryGroup;

final class StoriesFragment$6
  implements Animation.AnimationListener
{
  StoriesFragment$6(StoriesFragment paramStoriesFragment, StoryGroup paramStoryGroup) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    StoriesFragment.n(b).setVisibility(8);
    StoriesFragment.a(b, null);
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    StoriesFragment.a(b, a.c());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
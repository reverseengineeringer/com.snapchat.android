package com.snapchat.android.fragments.stories;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.snapchat.android.model.StoryGroup;

final class StoriesFragment$7
  implements Animator.AnimatorListener
{
  StoriesFragment$7(StoriesFragment paramStoriesFragment, StoryGroup paramStoryGroup) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    b.o();
    b.q();
    StoriesFragment.a(b, null);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    StoriesFragment.a(b, a.c());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
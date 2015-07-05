package com.snapchat.android.fragments.stories;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

final class StoriesFragment$8
  implements ValueAnimator.AnimatorUpdateListener
{
  StoriesFragment$8(StoriesFragment paramStoriesFragment, View paramView) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    int i = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    paramValueAnimator = a.getLayoutParams();
    height = i;
    a.setLayoutParams(paramValueAnimator);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.stories.StoriesFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
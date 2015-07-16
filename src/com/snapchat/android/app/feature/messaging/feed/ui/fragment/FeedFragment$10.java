package com.snapchat.android.app.feature.messaging.feed.ui.fragment;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;

final class FeedFragment$10
  implements Animation.AnimationListener
{
  FeedFragment$10(FeedFragment paramFeedFragment, Runnable paramRunnable, View paramView) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = new TranslateAnimation(FeedFragment.u(c), 0.0F, 0.0F, 0.0F);
    paramAnimation.setInterpolator(new BounceInterpolator());
    paramAnimation.setDuration(400L);
    if (a != null) {
      paramAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          a.run();
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
    }
    b.startAnimation(paramAnimation);
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
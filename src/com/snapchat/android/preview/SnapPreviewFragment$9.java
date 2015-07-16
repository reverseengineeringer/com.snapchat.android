package com.snapchat.android.preview;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class SnapPreviewFragment$9
  implements Animation.AnimationListener
{
  SnapPreviewFragment$9(SnapPreviewFragment paramSnapPreviewFragment) {}
  
  public final void onAnimationEnd(Animation paramAnimation) {}
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    paramAnimation = new AlphaAnimation(1.0F, 0.0F);
    paramAnimation.setDuration(750L);
    paramAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        SnapPreviewFragment.z(a).setVisibility(8);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    SnapPreviewFragment.z(a).startAnimation(paramAnimation);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.preview.SnapPreviewFragment.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
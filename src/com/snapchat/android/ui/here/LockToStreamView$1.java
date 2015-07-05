package com.snapchat.android.ui.here;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

final class LockToStreamView$1
  extends AnimatorListenerAdapter
{
  LockToStreamView$1(LockToStreamView paramLockToStreamView, boolean paramBoolean) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (a) {
      b.setVisibility(4);
    }
    LockToStreamView.a(b);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.here.LockToStreamView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
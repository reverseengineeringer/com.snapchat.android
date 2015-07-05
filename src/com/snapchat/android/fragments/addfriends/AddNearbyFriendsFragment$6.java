package com.snapchat.android.fragments.addfriends;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class AddNearbyFriendsFragment$6
  implements Animator.AnimatorListener
{
  AddNearbyFriendsFragment$6(AddNearbyFriendsFragment paramAddNearbyFriendsFragment) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    AddNearbyFriendsFragment.a(a, false);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    AddNearbyFriendsFragment.a(a, false);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    if (AddNearbyFriendsFragment.d(a))
    {
      paramAnimator.cancel();
      return;
    }
    AddNearbyFriendsFragment.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.addfriends.AddNearbyFriendsFragment.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
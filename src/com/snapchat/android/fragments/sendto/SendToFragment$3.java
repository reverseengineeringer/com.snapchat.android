package com.snapchat.android.fragments.sendto;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.snapchat.android.ui.SendToBottomPanelView;

final class SendToFragment$3
  implements Animator.AnimatorListener
{
  SendToFragment$3(SendToFragment paramSendToFragment) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    SendToFragment.q(a).b();
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    SendToFragment.q(a).a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.sendto.SendToFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
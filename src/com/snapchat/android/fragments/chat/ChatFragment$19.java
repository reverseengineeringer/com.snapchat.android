package com.snapchat.android.fragments.chat;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import bgr;
import com.snapchat.android.ui.CashReceiverView;

final class ChatFragment$19
  implements Animator.AnimatorListener
{
  ChatFragment$19(ChatFragment paramChatFragment) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    ChatFragment.K(a);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (!ChatFragment.J(a)) {
      ((CashReceiverView)ChatFragment.G(a).a()).a();
    }
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.chat.ChatFragment.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
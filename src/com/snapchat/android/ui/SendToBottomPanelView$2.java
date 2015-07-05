package com.snapchat.android.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.TextView;

public final class SendToBottomPanelView$2
  implements Animator.AnimatorListener
{
  public SendToBottomPanelView$2(SendToBottomPanelView paramSendToBottomPanelView) {}
  
  public final void onAnimationCancel(Animator paramAnimator) {}
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    SendToBottomPanelView.a(a).setTranslationY(0.0F);
    SendToBottomPanelView.b(a).setVisibility(8);
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.SendToBottomPanelView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
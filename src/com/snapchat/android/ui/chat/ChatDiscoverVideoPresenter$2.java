package com.snapchat.android.ui.chat;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;
import android.widget.ImageView;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.TextureVideoView;

final class ChatDiscoverVideoPresenter$2
  implements Animator.AnimatorListener
{
  boolean a;
  
  ChatDiscoverVideoPresenter$2(ChatDiscoverVideoPresenter paramChatDiscoverVideoPresenter) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a = true;
    b.e = true;
    b.b.setVisibility(8);
    b.a.setAlpha(1.0F);
    b.c.setAlpha(1.0F);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (!a)
    {
      b.c.setVisibility(8);
      b.a.setVisibility(8);
      b.d.setVisibility(8);
    }
    b.g = null;
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    b.b.setAlpha(0.0F);
    b.b.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
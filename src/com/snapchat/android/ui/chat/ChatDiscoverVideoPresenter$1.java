package com.snapchat.android.ui.chat;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;
import android.widget.ImageView;
import com.snapchat.android.ui.ImageResourceView;
import com.snapchat.android.ui.TextureVideoView;

final class ChatDiscoverVideoPresenter$1
  implements Animator.AnimatorListener
{
  boolean a;
  
  ChatDiscoverVideoPresenter$1(ChatDiscoverVideoPresenter paramChatDiscoverVideoPresenter, boolean paramBoolean) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    a = true;
    c.e = false;
    c.b.setAlpha(1.0F);
    c.c.setVisibility(8);
    c.a.setVisibility(8);
    c.d.setVisibility(8);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    if (!a) {
      c.b.setVisibility(8);
    }
    c.g = null;
  }
  
  public final void onAnimationRepeat(Animator paramAnimator) {}
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    if (c.f)
    {
      c.c.setAlpha(0.0F);
      c.c.setVisibility(0);
    }
    if (b) {
      c.d.setVisibility(0);
    }
    c.a.setAlpha(0.0F);
    c.a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.chat.ChatDiscoverVideoPresenter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
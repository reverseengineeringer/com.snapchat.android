package com.snapchat.android.discover.ui;

import android.animation.Animator;

public final class OpenChannelAnimationView$2
  extends OpenChannelAnimationView.b
{
  public OpenChannelAnimationView$2(OpenChannelAnimationView paramOpenChannelAnimationView, OpenChannelAnimationView.a parama, ChannelView paramChannelView)
  {
    super(paramOpenChannelAnimationView, (byte)0);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    OpenChannelAnimationView.a(c);
    if (a != null) {
      a.a(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.ui.OpenChannelAnimationView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
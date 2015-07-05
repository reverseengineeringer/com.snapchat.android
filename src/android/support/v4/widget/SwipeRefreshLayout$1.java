package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class SwipeRefreshLayout$1
  implements Animation.AnimationListener
{
  SwipeRefreshLayout$1(SwipeRefreshLayout paramSwipeRefreshLayout) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (SwipeRefreshLayout.access$000(this$0))
    {
      SwipeRefreshLayout.access$100(this$0).setAlpha(255);
      SwipeRefreshLayout.access$100(this$0).start();
      if ((SwipeRefreshLayout.access$200(this$0)) && (SwipeRefreshLayout.access$300(this$0) != null)) {
        SwipeRefreshLayout.access$300(this$0);
      }
    }
    for (;;)
    {
      SwipeRefreshLayout.access$802(this$0, SwipeRefreshLayout.access$400(this$0).getTop());
      return;
      SwipeRefreshLayout.access$100(this$0).stop();
      SwipeRefreshLayout.access$400(this$0).setVisibility(8);
      SwipeRefreshLayout.access$500$3ab763fc(this$0);
      if (SwipeRefreshLayout.access$600(this$0)) {
        SwipeRefreshLayout.access$700(this$0, 0.0F);
      } else {
        SwipeRefreshLayout.access$900(this$0, this$0.mOriginalOffsetTop - SwipeRefreshLayout.access$800(this$0), true);
      }
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SwipeRefreshLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
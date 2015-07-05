import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;

final class aqk$1
  implements Animation.AnimationListener
{
  aqk$1(aqk paramaqk, int paramInt, View paramView1, View paramView2) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = new TranslateAnimation(aqk.a(d), 0.0F, 0.0F, 0.0F);
    paramAnimation.setInterpolator(new BounceInterpolator());
    paramAnimation.setDuration(400L);
    if ((!aqk.b(d)) && (a > 0)) {
      paramAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (!aqk.b(d)) {
            d.a(b, a - 1);
          }
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
    }
    for (;;)
    {
      c.startAnimation(paramAnimation);
      return;
      aqk.c(d);
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     aqk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
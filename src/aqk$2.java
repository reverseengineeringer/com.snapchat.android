import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.BounceInterpolator;
import android.view.animation.TranslateAnimation;

final class aqk$2
  implements Animation.AnimationListener
{
  aqk$2(aqk paramaqk, View paramView) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = new TranslateAnimation(aqk.a(b), 0.0F, 0.0F, 0.0F);
    paramAnimation.setInterpolator(new BounceInterpolator());
    paramAnimation.setDuration(400L);
    a.startAnimation(paramAnimation);
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     aqk.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
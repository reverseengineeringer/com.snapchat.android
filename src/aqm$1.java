import android.annotation.TargetApi;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

public final class aqm$1
  implements Animation.AnimationListener
{
  public aqm$1(aqm paramaqm) {}
  
  @TargetApi(16)
  public final void onAnimationEnd(Animation paramAnimation)
  {
    aqm.a(a).setVisibility(4);
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     aqm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

public final class afj$1
  implements ValueAnimator.AnimatorUpdateListener
{
  public afj$1(afj paramafj) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if ((a.a != null) && (a.a.getVisibility() != 0) && (paramValueAnimator.getCurrentPlayTime() > 25L)) {
      a.a.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     afj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
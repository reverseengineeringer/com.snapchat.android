import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

public final class aum$1
  implements ValueAnimator.AnimatorUpdateListener
{
  public aum$1(aum paramaum) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    this$0.mPreviousXPositionForShutAnimator = ((Integer)paramValueAnimator.getAnimatedValue()).intValue();
    this$0.mViewToAnimate.setTranslationX(this$0.mPreviousXPositionForShutAnimator);
  }
}

/* Location:
 * Qualified Name:     aum.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
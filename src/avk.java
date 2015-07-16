import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

public final class avk
{
  private static final int ANIMATION_DURATION_DEFAULT = 150;
  public int mDuration;
  public int mEndOffset;
  private avk.a mInterface;
  public int mPreviousXPositionForShutAnimator = 0;
  public int mStartOffset;
  View mViewToAnimate;
  
  public avk(View paramView, int paramInt)
  {
    mViewToAnimate = paramView;
    mStartOffset = paramInt;
    mEndOffset = 0;
    mInterface = null;
    mDuration = 150;
  }
  
  public static abstract interface a {}
}

/* Location:
 * Qualified Name:     avk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
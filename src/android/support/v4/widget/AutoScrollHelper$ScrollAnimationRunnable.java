package android.support.v4.widget;

import android.support.v4.view.ViewCompat;
import android.view.animation.AnimationUtils;

final class AutoScrollHelper$ScrollAnimationRunnable
  implements Runnable
{
  private AutoScrollHelper$ScrollAnimationRunnable(AutoScrollHelper paramAutoScrollHelper) {}
  
  public final void run()
  {
    int j = 0;
    if (!AutoScrollHelper.access$100(this$0)) {
      return;
    }
    if (AutoScrollHelper.access$200(this$0))
    {
      AutoScrollHelper.access$202$2149d4c8(this$0);
      localClampedScroller = AutoScrollHelper.access$300(this$0);
      mStartTime = AnimationUtils.currentAnimationTimeMillis();
      mStopTime = -1L;
      mDeltaTime = mStartTime;
      mStopValue = 0.5F;
      mDeltaX = 0;
      mDeltaY = 0;
    }
    AutoScrollHelper.ClampedScroller localClampedScroller = AutoScrollHelper.access$300(this$0);
    int i = j;
    if (mStopTime > 0L)
    {
      i = j;
      if (AnimationUtils.currentAnimationTimeMillis() > mStopTime + mEffectiveRampDown) {
        i = 1;
      }
    }
    if ((i != 0) || (!AutoScrollHelper.access$400(this$0)))
    {
      AutoScrollHelper.access$102$2149d4c8(this$0);
      return;
    }
    if (AutoScrollHelper.access$500(this$0))
    {
      AutoScrollHelper.access$502$2149d4c8(this$0);
      AutoScrollHelper.access$600(this$0);
    }
    if (mDeltaTime == 0L) {
      throw new RuntimeException("Cannot compute scroll delta before calling start()");
    }
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    float f = localClampedScroller.getValueAt(l1);
    f = f * 4.0F + -4.0F * f * f;
    long l2 = l1 - mDeltaTime;
    mDeltaTime = l1;
    mDeltaX = ((int)((float)l2 * f * mTargetVelocityX));
    mDeltaY = ((int)(f * (float)l2 * mTargetVelocityY));
    i = mDeltaY;
    this$0.scrollTargetBy$255f295(i);
    ViewCompat.postOnAnimation(AutoScrollHelper.access$700(this$0), this);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.AutoScrollHelper.ScrollAnimationRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
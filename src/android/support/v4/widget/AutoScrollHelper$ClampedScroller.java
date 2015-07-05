package android.support.v4.widget;

import android.view.animation.AnimationUtils;

final class AutoScrollHelper$ClampedScroller
{
  long mDeltaTime = 0L;
  int mDeltaX = 0;
  int mDeltaY = 0;
  int mEffectiveRampDown;
  int mRampDownDuration;
  int mRampUpDuration;
  long mStartTime = Long.MIN_VALUE;
  long mStopTime = -1L;
  float mStopValue;
  float mTargetVelocityX;
  float mTargetVelocityY;
  
  private void computeScrollDelta()
  {
    if (mDeltaTime == 0L) {
      throw new RuntimeException("Cannot compute scroll delta before calling start()");
    }
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    float f = getValueAt(l1);
    f = f * 4.0F + -4.0F * f * f;
    long l2 = l1 - mDeltaTime;
    mDeltaTime = l1;
    mDeltaX = ((int)((float)l2 * f * mTargetVelocityX));
    mDeltaY = ((int)((float)l2 * f * mTargetVelocityY));
  }
  
  private int getDeltaX()
  {
    return mDeltaX;
  }
  
  private int getDeltaY()
  {
    return mDeltaY;
  }
  
  private int getHorizontalDirection()
  {
    return (int)(mTargetVelocityX / Math.abs(mTargetVelocityX));
  }
  
  private int getVerticalDirection()
  {
    return (int)(mTargetVelocityY / Math.abs(mTargetVelocityY));
  }
  
  private static float interpolateValue(float paramFloat)
  {
    return -4.0F * paramFloat * paramFloat + 4.0F * paramFloat;
  }
  
  private boolean isFinished()
  {
    return (mStopTime > 0L) && (AnimationUtils.currentAnimationTimeMillis() > mStopTime + mEffectiveRampDown);
  }
  
  private void requestStop()
  {
    long l = AnimationUtils.currentAnimationTimeMillis();
    mEffectiveRampDown = AutoScrollHelper.access$800$4868d301((int)(l - mStartTime), mRampDownDuration);
    mStopValue = getValueAt(l);
    mStopTime = l;
  }
  
  private void setRampDownDuration(int paramInt)
  {
    mRampDownDuration = paramInt;
  }
  
  private void setRampUpDuration(int paramInt)
  {
    mRampUpDuration = paramInt;
  }
  
  private void setTargetVelocity(float paramFloat1, float paramFloat2)
  {
    mTargetVelocityX = paramFloat1;
    mTargetVelocityY = paramFloat2;
  }
  
  private void start()
  {
    mStartTime = AnimationUtils.currentAnimationTimeMillis();
    mStopTime = -1L;
    mDeltaTime = mStartTime;
    mStopValue = 0.5F;
    mDeltaX = 0;
    mDeltaY = 0;
  }
  
  final float getValueAt(long paramLong)
  {
    if (paramLong < mStartTime) {
      return 0.0F;
    }
    if ((mStopTime < 0L) || (paramLong < mStopTime)) {
      return AutoScrollHelper.access$900$483d241b((float)(paramLong - mStartTime) / mRampUpDuration) * 0.5F;
    }
    long l = mStopTime;
    float f1 = mStopValue;
    float f2 = mStopValue;
    return AutoScrollHelper.access$900$483d241b((float)(paramLong - l) / mEffectiveRampDown) * f2 + (1.0F - f1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.AutoScrollHelper.ClampedScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
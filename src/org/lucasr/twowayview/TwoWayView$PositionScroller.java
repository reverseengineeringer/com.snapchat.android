package org.lucasr.twowayview;

import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewConfiguration;

class TwoWayView$PositionScroller
  implements Runnable
{
  private static final int MOVE_AFTER_BOUND = 3;
  private static final int MOVE_AFTER_POS = 1;
  private static final int MOVE_BEFORE_BOUND = 4;
  private static final int MOVE_BEFORE_POS = 2;
  private static final int MOVE_OFFSET = 5;
  private static final int SCROLL_DURATION = 200;
  private int mBoundPosition;
  private final int mExtraScroll;
  private int mLastSeenPosition;
  private int mMode;
  private int mOffsetFromStart;
  private int mScrollDuration;
  private int mTargetPosition;
  
  TwoWayView$PositionScroller(TwoWayView paramTwoWayView)
  {
    mExtraScroll = ViewConfiguration.get(TwoWayView.access$4100(paramTwoWayView)).getScaledFadingEdgeLength();
  }
  
  public void run()
  {
    int m = TwoWayView.access$4700(this$0);
    int k = TwoWayView.access$3300(this$0);
    int i;
    if (TwoWayView.access$4800(this$0))
    {
      j = this$0.getPaddingTop();
      if (!TwoWayView.access$4800(this$0)) {
        break label104;
      }
      i = this$0.getPaddingBottom();
    }
    label54:
    label104:
    View localView;
    switch (mMode)
    {
    default: 
    case 1: 
    case 3: 
    case 2: 
    case 4: 
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      return;
                      j = this$0.getPaddingLeft();
                      break;
                      i = this$0.getPaddingRight();
                      break label54;
                      j = this$0.getChildCount() - 1;
                    } while (j < 0);
                    k += j;
                    if (k == mLastSeenPosition)
                    {
                      ViewCompat.postOnAnimation(this$0, this);
                      return;
                    }
                    localView = this$0.getChildAt(j);
                    n = TwoWayView.access$4900(this$0, localView);
                    int i1 = TwoWayView.access$4400(this$0, localView);
                    j = i;
                    if (k < TwoWayView.access$1800(this$0) - 1) {
                      j = Math.max(i, mExtraScroll);
                    }
                    this$0.smoothScrollBy(n - (m - i1) + j, mScrollDuration);
                    mLastSeenPosition = k;
                  } while (k >= mTargetPosition);
                  ViewCompat.postOnAnimation(this$0, this);
                  return;
                  j = this$0.getChildCount();
                } while ((k == mBoundPosition) || (j <= 1) || (j + k >= TwoWayView.access$1800(this$0)));
                j = k + 1;
                if (j == mLastSeenPosition)
                {
                  ViewCompat.postOnAnimation(this$0, this);
                  return;
                }
                localView = this$0.getChildAt(1);
                k = TwoWayView.access$4900(this$0, localView);
                m = TwoWayView.access$4400(this$0, localView);
                i = Math.max(i, mExtraScroll);
                if (j < mBoundPosition)
                {
                  this$0.smoothScrollBy(Math.max(0, m + k - i), mScrollDuration);
                  mLastSeenPosition = j;
                  ViewCompat.postOnAnimation(this$0, this);
                  return;
                }
              } while (k <= i);
              this$0.smoothScrollBy(k - i, mScrollDuration);
              return;
              if (k == mLastSeenPosition)
              {
                ViewCompat.postOnAnimation(this$0, this);
                return;
              }
              localView = this$0.getChildAt(0);
            } while (localView == null);
            m = TwoWayView.access$4400(this$0, localView);
            i = j;
            if (k > 0) {
              i = Math.max(mExtraScroll, j);
            }
            this$0.smoothScrollBy(m - i, mScrollDuration);
            mLastSeenPosition = k;
          } while (k <= mTargetPosition);
          ViewCompat.postOnAnimation(this$0, this);
          return;
          n = this$0.getChildCount() - 2;
        } while (n < 0);
        i = k + n;
        if (i == mLastSeenPosition)
        {
          ViewCompat.postOnAnimation(this$0, this);
          return;
        }
        localView = this$0.getChildAt(n);
        k = TwoWayView.access$4900(this$0, localView);
        n = TwoWayView.access$4400(this$0, localView);
        j = Math.max(j, mExtraScroll);
        mLastSeenPosition = i;
        if (i > mBoundPosition)
        {
          this$0.smoothScrollBy(-(m - n - j), mScrollDuration);
          ViewCompat.postOnAnimation(this$0, this);
          return;
        }
        i = m - j;
        j = n + k;
      } while (i <= j);
      this$0.smoothScrollBy(-(i - j), mScrollDuration);
      return;
    }
    if (mLastSeenPosition == k)
    {
      ViewCompat.postOnAnimation(this$0, this);
      return;
    }
    mLastSeenPosition = k;
    int j = this$0.getChildCount();
    m = mTargetPosition;
    int n = k + j - 1;
    if (m < k) {
      i = k - m + 1;
    }
    for (;;)
    {
      float f = Math.min(Math.abs(i / j), 1.0F);
      if (m < k)
      {
        i = (int)(-TwoWayView.access$5000(this$0) * f);
        j = (int)(f * mScrollDuration);
        this$0.smoothScrollBy(i, j);
        ViewCompat.postOnAnimation(this$0, this);
        return;
        if (m > n) {
          i = m - n;
        }
      }
      else
      {
        if (m > n)
        {
          i = (int)(TwoWayView.access$5000(this$0) * f);
          j = (int)(f * mScrollDuration);
          this$0.smoothScrollBy(i, j);
          ViewCompat.postOnAnimation(this$0, this);
          return;
        }
        localView = this$0.getChildAt(m - k);
        i = TwoWayView.access$4400(this$0, localView) - mOffsetFromStart;
        j = (int)(mScrollDuration * (Math.abs(i) / TwoWayView.access$5000(this$0)));
        this$0.smoothScrollBy(i, j);
        return;
      }
      i = 0;
    }
  }
  
  void scrollToVisible(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = this$0.getChildCount();
    int m = TwoWayView.access$3300(this$0);
    int n = i + m - 1;
    int j = TwoWayView.access$4300(this$0);
    int k = TwoWayView.access$4500(this$0);
    if ((paramInt1 < m) || (paramInt1 > n)) {
      new StringBuilder("scrollToVisible called with targetPosition ").append(paramInt1).append(" not visible [").append(m).append(", ").append(n).append("]");
    }
    if (paramInt2 >= m)
    {
      i = paramInt2;
      if (paramInt2 <= n) {}
    }
    else
    {
      i = -1;
    }
    View localView = this$0.getChildAt(paramInt1 - m);
    paramInt2 = TwoWayView.access$4400(this$0, localView);
    paramInt1 = TwoWayView.access$4600(this$0, localView);
    if (paramInt1 > k) {
      paramInt1 -= k;
    }
    for (;;)
    {
      if (paramInt2 < j) {
        paramInt1 = paramInt2 - j;
      }
      if (paramInt1 == 0) {
        return;
      }
      paramInt2 = paramInt1;
      if (i >= 0)
      {
        localView = this$0.getChildAt(i - m);
        i = TwoWayView.access$4400(this$0, localView);
        paramInt2 = TwoWayView.access$4600(this$0, localView);
        m = Math.abs(paramInt1);
        if ((paramInt1 >= 0) || (paramInt2 + m <= k)) {
          break label254;
        }
        paramInt2 = Math.max(0, paramInt2 - k);
      }
      for (;;)
      {
        this$0.smoothScrollBy(paramInt2, paramInt3);
        return;
        label254:
        paramInt2 = paramInt1;
        if (paramInt1 > 0)
        {
          paramInt2 = paramInt1;
          if (i - m < j) {
            paramInt2 = Math.min(0, i - j);
          }
        }
      }
      paramInt1 = 0;
    }
  }
  
  void start(final int paramInt)
  {
    stop();
    if (TwoWayView.access$500(this$0)) {
      TwoWayView.access$4202(this$0, new Runnable()
      {
        public void run()
        {
          start(paramInt);
        }
      });
    }
    do
    {
      return;
      i = this$0.getChildCount();
    } while (i == 0);
    int j = TwoWayView.access$3300(this$0);
    int k = i + j - 1;
    int i = Math.max(0, Math.min(this$0.getCount() - 1, paramInt));
    if (i < j)
    {
      paramInt = j - i + 1;
      mMode = 2;
      if (paramInt <= 0) {
        break label161;
      }
    }
    label161:
    for (mScrollDuration = (200 / paramInt);; mScrollDuration = 200)
    {
      mTargetPosition = i;
      mBoundPosition = -1;
      mLastSeenPosition = -1;
      ViewCompat.postOnAnimation(this$0, this);
      return;
      if (i > k)
      {
        paramInt = i - k + 1;
        mMode = 1;
        break;
      }
      scrollToVisible(i, -1, 200);
      return;
    }
  }
  
  void start(final int paramInt1, final int paramInt2)
  {
    stop();
    if (paramInt2 == -1) {
      start(paramInt1);
    }
    int j;
    int k;
    do
    {
      do
      {
        return;
        if (TwoWayView.access$500(this$0))
        {
          TwoWayView.access$4202(this$0, new Runnable()
          {
            public void run()
            {
              start(paramInt1, paramInt2);
            }
          });
          return;
        }
        j = this$0.getChildCount();
      } while (j == 0);
      i = TwoWayView.access$3300(this$0);
      k = j + i - 1;
      j = Math.max(0, Math.min(this$0.getCount() - 1, paramInt1));
      if (j >= i) {
        break;
      }
      k -= paramInt2;
    } while (k <= 0);
    paramInt1 = i - j + 1;
    int i = k - 1;
    if (i < paramInt1)
    {
      mMode = 4;
      paramInt1 = i;
      label134:
      if (paramInt1 <= 0) {
        break label241;
      }
    }
    label241:
    for (mScrollDuration = (200 / paramInt1);; mScrollDuration = 200)
    {
      mTargetPosition = j;
      mBoundPosition = paramInt2;
      mLastSeenPosition = -1;
      ViewCompat.postOnAnimation(this$0, this);
      return;
      mMode = 2;
      break label134;
      if (j > k)
      {
        i = paramInt2 - i;
        if (i <= 0) {
          break;
        }
        paramInt1 = j - k + 1;
        i -= 1;
        if (i < paramInt1)
        {
          mMode = 3;
          paramInt1 = i;
          break label134;
        }
        mMode = 1;
        break label134;
      }
      scrollToVisible(j, paramInt2, 200);
      return;
    }
  }
  
  void startWithOffset(int paramInt1, int paramInt2)
  {
    startWithOffset(paramInt1, paramInt2, 200);
  }
  
  void startWithOffset(final int paramInt1, final int paramInt2, final int paramInt3)
  {
    stop();
    if (TwoWayView.access$500(this$0)) {
      TwoWayView.access$4202(this$0, new Runnable()
      {
        public void run()
        {
          startWithOffset(paramInt1, paramInt2, paramInt3);
        }
      });
    }
    int i;
    do
    {
      return;
      i = this$0.getChildCount();
    } while (i == 0);
    paramInt2 = TwoWayView.access$4300(this$0) + paramInt2;
    mTargetPosition = Math.max(0, Math.min(this$0.getCount() - 1, paramInt1));
    mOffsetFromStart = paramInt2;
    mBoundPosition = -1;
    mLastSeenPosition = -1;
    mMode = 5;
    paramInt1 = TwoWayView.access$3300(this$0);
    int j = paramInt1 + i - 1;
    float f;
    if (mTargetPosition < paramInt1)
    {
      paramInt1 -= mTargetPosition;
      f = paramInt1 / i;
      if (f >= 1.0F) {
        break label221;
      }
    }
    for (;;)
    {
      mScrollDuration = paramInt3;
      mLastSeenPosition = -1;
      ViewCompat.postOnAnimation(this$0, this);
      return;
      if (mTargetPosition > j)
      {
        paramInt1 = mTargetPosition - j;
        break;
      }
      View localView = this$0.getChildAt(mTargetPosition - paramInt1);
      paramInt1 = TwoWayView.access$4400(this$0, localView);
      this$0.smoothScrollBy(paramInt1 - paramInt2, paramInt3);
      return;
      label221:
      paramInt3 = (int)(paramInt3 / f);
    }
  }
  
  void stop()
  {
    this$0.removeCallbacks(this);
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.PositionScroller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
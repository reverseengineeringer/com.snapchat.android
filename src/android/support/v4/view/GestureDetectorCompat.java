package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

public final class GestureDetectorCompat
{
  public final GestureDetectorCompatImpl mImpl;
  
  public GestureDetectorCompat(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this(paramContext, paramOnGestureListener, (byte)0);
  }
  
  private GestureDetectorCompat(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, byte paramByte)
  {
    if (Build.VERSION.SDK_INT > 17)
    {
      mImpl = new GestureDetectorCompatImplJellybeanMr2(paramContext, paramOnGestureListener);
      return;
    }
    mImpl = new GestureDetectorCompatImplBase(paramContext, paramOnGestureListener);
  }
  
  private boolean isLongpressEnabled()
  {
    return mImpl.isLongpressEnabled();
  }
  
  private boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return mImpl.onTouchEvent(paramMotionEvent);
  }
  
  private void setIsLongpressEnabled(boolean paramBoolean)
  {
    mImpl.setIsLongpressEnabled(paramBoolean);
  }
  
  private void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    mImpl.setOnDoubleTapListener(paramOnDoubleTapListener);
  }
  
  public static abstract interface GestureDetectorCompatImpl
  {
    public abstract boolean isLongpressEnabled();
    
    public abstract boolean onTouchEvent(MotionEvent paramMotionEvent);
    
    public abstract void setIsLongpressEnabled(boolean paramBoolean);
    
    public abstract void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener);
  }
  
  static final class GestureDetectorCompatImplBase
    implements GestureDetectorCompat.GestureDetectorCompatImpl
  {
    private static final int DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();
    private static final int LONGPRESS_TIMEOUT = ;
    private static final int LONG_PRESS = 2;
    private static final int SHOW_PRESS = 1;
    private static final int TAP = 3;
    private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
    private boolean mAlwaysInBiggerTapRegion;
    private boolean mAlwaysInTapRegion;
    private MotionEvent mCurrentDownEvent;
    private boolean mDeferConfirmSingleTap;
    private GestureDetector.OnDoubleTapListener mDoubleTapListener;
    private int mDoubleTapSlopSquare;
    private float mDownFocusX;
    private float mDownFocusY;
    private final Handler mHandler = new GestureHandler();
    private boolean mInLongPress;
    private boolean mIsDoubleTapping;
    private boolean mIsLongpressEnabled;
    private float mLastFocusX;
    private float mLastFocusY;
    private final GestureDetector.OnGestureListener mListener;
    private int mMaximumFlingVelocity;
    private int mMinimumFlingVelocity;
    private MotionEvent mPreviousUpEvent;
    private boolean mStillDown;
    private int mTouchSlopSquare;
    private VelocityTracker mVelocityTracker;
    
    public GestureDetectorCompatImplBase(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
    {
      mListener = paramOnGestureListener;
      if ((paramOnGestureListener instanceof GestureDetector.OnDoubleTapListener)) {
        mDoubleTapListener = ((GestureDetector.OnDoubleTapListener)paramOnGestureListener);
      }
      if (paramContext == null) {
        throw new IllegalArgumentException("Context must not be null");
      }
      if (mListener == null) {
        throw new IllegalArgumentException("OnGestureListener must not be null");
      }
      mIsLongpressEnabled = true;
      paramContext = ViewConfiguration.get(paramContext);
      int i = paramContext.getScaledTouchSlop();
      int j = paramContext.getScaledDoubleTapSlop();
      mMinimumFlingVelocity = paramContext.getScaledMinimumFlingVelocity();
      mMaximumFlingVelocity = paramContext.getScaledMaximumFlingVelocity();
      mTouchSlopSquare = (i * i);
      mDoubleTapSlopSquare = (j * j);
    }
    
    private void cancel()
    {
      mHandler.removeMessages(1);
      mHandler.removeMessages(2);
      mHandler.removeMessages(3);
      mVelocityTracker.recycle();
      mVelocityTracker = null;
      mIsDoubleTapping = false;
      mStillDown = false;
      mAlwaysInTapRegion = false;
      mAlwaysInBiggerTapRegion = false;
      mDeferConfirmSingleTap = false;
      if (mInLongPress) {
        mInLongPress = false;
      }
    }
    
    private void cancelTaps()
    {
      mHandler.removeMessages(1);
      mHandler.removeMessages(2);
      mHandler.removeMessages(3);
      mIsDoubleTapping = false;
      mAlwaysInTapRegion = false;
      mAlwaysInBiggerTapRegion = false;
      mDeferConfirmSingleTap = false;
      if (mInLongPress) {
        mInLongPress = false;
      }
    }
    
    private void dispatchLongPress()
    {
      mHandler.removeMessages(3);
      mDeferConfirmSingleTap = false;
      mInLongPress = true;
      mListener.onLongPress(mCurrentDownEvent);
    }
    
    private void init(Context paramContext)
    {
      if (paramContext == null) {
        throw new IllegalArgumentException("Context must not be null");
      }
      if (mListener == null) {
        throw new IllegalArgumentException("OnGestureListener must not be null");
      }
      mIsLongpressEnabled = true;
      paramContext = ViewConfiguration.get(paramContext);
      int i = paramContext.getScaledTouchSlop();
      int j = paramContext.getScaledDoubleTapSlop();
      mMinimumFlingVelocity = paramContext.getScaledMinimumFlingVelocity();
      mMaximumFlingVelocity = paramContext.getScaledMaximumFlingVelocity();
      mTouchSlopSquare = (i * i);
      mDoubleTapSlopSquare = (j * j);
    }
    
    private boolean isConsideredDoubleTap(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, MotionEvent paramMotionEvent3)
    {
      if (!mAlwaysInBiggerTapRegion) {}
      int i;
      int j;
      do
      {
        do
        {
          return false;
        } while (paramMotionEvent3.getEventTime() - paramMotionEvent2.getEventTime() > DOUBLE_TAP_TIMEOUT);
        i = (int)paramMotionEvent1.getX() - (int)paramMotionEvent3.getX();
        j = (int)paramMotionEvent1.getY() - (int)paramMotionEvent3.getY();
      } while (i * i + j * j >= mDoubleTapSlopSquare);
      return true;
    }
    
    public final boolean isLongpressEnabled()
    {
      return mIsLongpressEnabled;
    }
    
    public final boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      int i1 = paramMotionEvent.getAction();
      if (mVelocityTracker == null) {
        mVelocityTracker = VelocityTracker.obtain();
      }
      mVelocityTracker.addMovement(paramMotionEvent);
      int i;
      if ((i1 & 0xFF) == 6)
      {
        i = 1;
        if (i == 0) {
          break label127;
        }
      }
      int n;
      int m;
      float f1;
      float f2;
      float f4;
      float f3;
      label127:
      for (int k = MotionEventCompat.getActionIndex(paramMotionEvent);; k = -1)
      {
        n = MotionEventCompat.getPointerCount(paramMotionEvent);
        m = 0;
        f1 = 0.0F;
        for (f2 = 0.0F; m < n; f2 = f3)
        {
          f4 = f1;
          f3 = f2;
          if (k != m)
          {
            f3 = f2 + MotionEventCompat.getX(paramMotionEvent, m);
            f4 = f1 + MotionEventCompat.getY(paramMotionEvent, m);
          }
          m += 1;
          f1 = f4;
        }
        i = 0;
        break;
      }
      if (i != 0)
      {
        i = n - 1;
        f2 /= i;
        f1 /= i;
      }
      boolean bool2;
      MotionEvent localMotionEvent;
      Object localObject;
      label757:
      int j;
      switch (i1 & 0xFF)
      {
      case 4: 
      default: 
      case 5: 
      case 6: 
      case 0: 
      case 2: 
        do
        {
          do
          {
            return false;
            i = n;
            break;
            mLastFocusX = f2;
            mDownFocusX = f2;
            mLastFocusY = f1;
            mDownFocusY = f1;
            mHandler.removeMessages(1);
            mHandler.removeMessages(2);
            mHandler.removeMessages(3);
            mIsDoubleTapping = false;
            mAlwaysInTapRegion = false;
            mAlwaysInBiggerTapRegion = false;
            mDeferConfirmSingleTap = false;
          } while (!mInLongPress);
          mInLongPress = false;
          return false;
          mLastFocusX = f2;
          mDownFocusX = f2;
          mLastFocusY = f1;
          mDownFocusY = f1;
          mVelocityTracker.computeCurrentVelocity(1000, mMaximumFlingVelocity);
          k = MotionEventCompat.getActionIndex(paramMotionEvent);
          i = MotionEventCompat.getPointerId(paramMotionEvent, k);
          f1 = VelocityTrackerCompat.getXVelocity(mVelocityTracker, i);
          f2 = VelocityTrackerCompat.getYVelocity(mVelocityTracker, i);
          i = 0;
          while (i < n)
          {
            if (i != k)
            {
              m = MotionEventCompat.getPointerId(paramMotionEvent, i);
              f3 = VelocityTrackerCompat.getXVelocity(mVelocityTracker, m);
              if (VelocityTrackerCompat.getYVelocity(mVelocityTracker, m) * f2 + f3 * f1 < 0.0F)
              {
                mVelocityTracker.clear();
                return false;
              }
            }
            i += 1;
          }
          if (mDoubleTapListener != null)
          {
            bool2 = mHandler.hasMessages(3);
            if (bool2) {
              mHandler.removeMessages(3);
            }
            if ((mCurrentDownEvent != null) && (mPreviousUpEvent != null) && (bool2))
            {
              localMotionEvent = mCurrentDownEvent;
              localObject = mPreviousUpEvent;
              if ((mAlwaysInBiggerTapRegion) && (paramMotionEvent.getEventTime() - ((MotionEvent)localObject).getEventTime() <= DOUBLE_TAP_TIMEOUT))
              {
                i = (int)localMotionEvent.getX() - (int)paramMotionEvent.getX();
                k = (int)localMotionEvent.getY() - (int)paramMotionEvent.getY();
                if (k * k + i * i < mDoubleTapSlopSquare)
                {
                  i = 1;
                  if (i == 0) {
                    break label757;
                  }
                  mIsDoubleTapping = true;
                }
              }
            }
          }
          for (boolean bool1 = mDoubleTapListener.onDoubleTap(mCurrentDownEvent) | false | mDoubleTapListener.onDoubleTapEvent(paramMotionEvent);; bool1 = false)
          {
            mLastFocusX = f2;
            mDownFocusX = f2;
            mLastFocusY = f1;
            mDownFocusY = f1;
            if (mCurrentDownEvent != null) {
              mCurrentDownEvent.recycle();
            }
            mCurrentDownEvent = MotionEvent.obtain(paramMotionEvent);
            mAlwaysInTapRegion = true;
            mAlwaysInBiggerTapRegion = true;
            mStillDown = true;
            mInLongPress = false;
            mDeferConfirmSingleTap = false;
            if (mIsLongpressEnabled)
            {
              mHandler.removeMessages(2);
              mHandler.sendEmptyMessageAtTime(2, mCurrentDownEvent.getDownTime() + TAP_TIMEOUT + LONGPRESS_TIMEOUT);
            }
            mHandler.sendEmptyMessageAtTime(1, mCurrentDownEvent.getDownTime() + TAP_TIMEOUT);
            return bool1 | mListener.onDown(paramMotionEvent);
            bool1 = false;
            break;
            mHandler.sendEmptyMessageDelayed(3, DOUBLE_TAP_TIMEOUT);
          }
        } while (mInLongPress);
        f3 = mLastFocusX - f2;
        f4 = mLastFocusY - f1;
        if (mIsDoubleTapping) {
          return mDoubleTapListener.onDoubleTapEvent(paramMotionEvent) | false;
        }
        if (mAlwaysInTapRegion)
        {
          j = (int)(f2 - mDownFocusX);
          k = (int)(f1 - mDownFocusY);
          j = j * j + k * k;
          if (j <= mTouchSlopSquare) {
            break label1350;
          }
          bool2 = mListener.onScroll(mCurrentDownEvent, paramMotionEvent, f3, f4);
          mLastFocusX = f2;
          mLastFocusY = f1;
          mAlwaysInTapRegion = false;
          mHandler.removeMessages(3);
          mHandler.removeMessages(1);
          mHandler.removeMessages(2);
        }
        break;
      }
      for (;;)
      {
        if (j > mTouchSlopSquare) {
          mAlwaysInBiggerTapRegion = false;
        }
        return bool2;
        if ((Math.abs(f3) < 1.0F) && (Math.abs(f4) < 1.0F)) {
          break;
        }
        bool2 = mListener.onScroll(mCurrentDownEvent, paramMotionEvent, f3, f4);
        mLastFocusX = f2;
        mLastFocusY = f1;
        return bool2;
        mStillDown = false;
        localMotionEvent = MotionEvent.obtain(paramMotionEvent);
        if (mIsDoubleTapping) {
          bool2 = mDoubleTapListener.onDoubleTapEvent(paramMotionEvent) | false;
        }
        for (;;)
        {
          if (mPreviousUpEvent != null) {
            mPreviousUpEvent.recycle();
          }
          mPreviousUpEvent = localMotionEvent;
          if (mVelocityTracker != null)
          {
            mVelocityTracker.recycle();
            mVelocityTracker = null;
          }
          mIsDoubleTapping = false;
          mDeferConfirmSingleTap = false;
          mHandler.removeMessages(1);
          mHandler.removeMessages(2);
          return bool2;
          if (mInLongPress)
          {
            mHandler.removeMessages(3);
            mInLongPress = false;
            bool2 = false;
          }
          else if (mAlwaysInTapRegion)
          {
            boolean bool3 = mListener.onSingleTapUp(paramMotionEvent);
            bool2 = bool3;
            if (mDeferConfirmSingleTap)
            {
              bool2 = bool3;
              if (mDoubleTapListener != null)
              {
                mDoubleTapListener.onSingleTapConfirmed(paramMotionEvent);
                bool2 = bool3;
              }
            }
          }
          else
          {
            localObject = mVelocityTracker;
            j = MotionEventCompat.getPointerId(paramMotionEvent, 0);
            ((VelocityTracker)localObject).computeCurrentVelocity(1000, mMaximumFlingVelocity);
            f1 = VelocityTrackerCompat.getYVelocity((VelocityTracker)localObject, j);
            f2 = VelocityTrackerCompat.getXVelocity((VelocityTracker)localObject, j);
            if ((Math.abs(f1) > mMinimumFlingVelocity) || (Math.abs(f2) > mMinimumFlingVelocity))
            {
              bool2 = mListener.onFling(mCurrentDownEvent, paramMotionEvent, f2, f1);
              continue;
              mHandler.removeMessages(1);
              mHandler.removeMessages(2);
              mHandler.removeMessages(3);
              mVelocityTracker.recycle();
              mVelocityTracker = null;
              mIsDoubleTapping = false;
              mStillDown = false;
              mAlwaysInTapRegion = false;
              mAlwaysInBiggerTapRegion = false;
              mDeferConfirmSingleTap = false;
              if (!mInLongPress) {
                break;
              }
              mInLongPress = false;
              return false;
            }
            bool2 = false;
          }
        }
        label1350:
        bool2 = false;
      }
    }
    
    public final void setIsLongpressEnabled(boolean paramBoolean)
    {
      mIsLongpressEnabled = paramBoolean;
    }
    
    public final void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
    {
      mDoubleTapListener = paramOnDoubleTapListener;
    }
    
    final class GestureHandler
      extends Handler
    {
      GestureHandler() {}
      
      private GestureHandler(Handler paramHandler)
      {
        super();
      }
      
      public final void handleMessage(Message paramMessage)
      {
        switch (what)
        {
        default: 
          throw new RuntimeException("Unknown message " + paramMessage);
        case 1: 
          mListener.onShowPress(mCurrentDownEvent);
        }
        do
        {
          return;
          GestureDetectorCompat.GestureDetectorCompatImplBase.access$200(GestureDetectorCompat.GestureDetectorCompatImplBase.this);
          return;
        } while (mDoubleTapListener == null);
        if (!mStillDown)
        {
          mDoubleTapListener.onSingleTapConfirmed(mCurrentDownEvent);
          return;
        }
        GestureDetectorCompat.GestureDetectorCompatImplBase.access$502$5abea42(GestureDetectorCompat.GestureDetectorCompatImplBase.this);
      }
    }
  }
  
  static final class GestureDetectorCompatImplJellybeanMr2
    implements GestureDetectorCompat.GestureDetectorCompatImpl
  {
    private final GestureDetector mDetector;
    
    public GestureDetectorCompatImplJellybeanMr2(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
    {
      mDetector = new GestureDetector(paramContext, paramOnGestureListener, null);
    }
    
    public final boolean isLongpressEnabled()
    {
      return mDetector.isLongpressEnabled();
    }
    
    public final boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      return mDetector.onTouchEvent(paramMotionEvent);
    }
    
    public final void setIsLongpressEnabled(boolean paramBoolean)
    {
      mDetector.setIsLongpressEnabled(paramBoolean);
    }
    
    public final void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
    {
      mDetector.setOnDoubleTapListener(paramOnDoubleTapListener);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.GestureDetectorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
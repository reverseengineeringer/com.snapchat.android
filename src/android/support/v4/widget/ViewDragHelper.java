package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public final class ViewDragHelper
{
  private static final int BASE_SETTLE_DURATION = 256;
  public static final int DIRECTION_ALL = 3;
  public static final int DIRECTION_HORIZONTAL = 1;
  public static final int DIRECTION_VERTICAL = 2;
  public static final int EDGE_ALL = 15;
  public static final int EDGE_BOTTOM = 8;
  public static final int EDGE_LEFT = 1;
  public static final int EDGE_RIGHT = 2;
  private static final int EDGE_SIZE = 20;
  public static final int EDGE_TOP = 4;
  public static final int INVALID_POINTER = -1;
  private static final int MAX_SETTLE_DURATION = 600;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private static final String TAG = "ViewDragHelper";
  private static final Interpolator sInterpolator = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  private int mActivePointerId = -1;
  private final Callback mCallback;
  View mCapturedView;
  int mDragState;
  private int[] mEdgeDragsInProgress;
  private int[] mEdgeDragsLocked;
  int mEdgeSize;
  private int[] mInitialEdgesTouched;
  float[] mInitialMotionX;
  float[] mInitialMotionY;
  float[] mLastMotionX;
  float[] mLastMotionY;
  private float mMaxVelocity;
  float mMinVelocity;
  private final ViewGroup mParentView;
  private int mPointersDown;
  private boolean mReleaseInProgress;
  private ScrollerCompat mScroller;
  private final Runnable mSetIdleRunnable = new Runnable()
  {
    public final void run()
    {
      setDragState(0);
    }
  };
  int mTouchSlop;
  int mTrackingEdges;
  private VelocityTracker mVelocityTracker;
  
  private ViewDragHelper(Context paramContext, ViewGroup paramViewGroup, Callback paramCallback)
  {
    if (paramViewGroup == null) {
      throw new IllegalArgumentException("Parent view may not be null");
    }
    if (paramCallback == null) {
      throw new IllegalArgumentException("Callback may not be null");
    }
    mParentView = paramViewGroup;
    mCallback = paramCallback;
    paramViewGroup = ViewConfiguration.get(paramContext);
    mEdgeSize = ((int)(getResourcesgetDisplayMetricsdensity * 20.0F + 0.5F));
    mTouchSlop = paramViewGroup.getScaledTouchSlop();
    mMaxVelocity = paramViewGroup.getScaledMaximumFlingVelocity();
    mMinVelocity = paramViewGroup.getScaledMinimumFlingVelocity();
    mScroller = ScrollerCompat.create(paramContext, sInterpolator);
  }
  
  private boolean canScroll$6a35e785(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      int i = localViewGroup.getChildCount() - 1;
      while (i >= 0)
      {
        View localView = localViewGroup.getChildAt(i);
        if ((paramInt3 + j >= localView.getLeft()) && (paramInt3 + j < localView.getRight()) && (paramInt4 + k >= localView.getTop()) && (paramInt4 + k < localView.getBottom()) && (canScroll$6a35e785(localView, paramInt1, paramInt2, paramInt3 + j - localView.getLeft(), paramInt4 + k - localView.getTop()))) {
          return true;
        }
        i -= 1;
      }
    }
    return (ViewCompat.canScrollHorizontally(paramView, -paramInt1)) || (ViewCompat.canScrollVertically(paramView, -paramInt2));
  }
  
  private boolean checkNewEdgeDrag(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if (((mInitialEdgesTouched[paramInt1] & paramInt2) != paramInt2) || ((mTrackingEdges & paramInt2) == 0) || ((mEdgeDragsLocked[paramInt1] & paramInt2) == paramInt2) || ((mEdgeDragsInProgress[paramInt1] & paramInt2) == paramInt2) || ((paramFloat1 <= mTouchSlop) && (paramFloat2 <= mTouchSlop))) {}
    while (((mEdgeDragsInProgress[paramInt1] & paramInt2) != 0) || (paramFloat1 <= mTouchSlop)) {
      return false;
    }
    return true;
  }
  
  private boolean checkTouchSlop(int paramInt1, int paramInt2)
  {
    if (!isPointerDown(paramInt2)) {}
    label20:
    float f2;
    label98:
    label103:
    do
    {
      float f1;
      do
      {
        return false;
        int i;
        if ((paramInt1 & 0x1) == 1)
        {
          i = 1;
          if ((paramInt1 & 0x2) != 2) {
            break label98;
          }
        }
        for (paramInt1 = 1;; paramInt1 = 0)
        {
          f1 = mLastMotionX[paramInt2] - mInitialMotionX[paramInt2];
          f2 = mLastMotionY[paramInt2] - mInitialMotionY[paramInt2];
          if ((i == 0) || (paramInt1 == 0)) {
            break label103;
          }
          if (f1 * f1 + f2 * f2 <= mTouchSlop * mTouchSlop) {
            break;
          }
          return true;
          i = 0;
          break label20;
        }
        if (i == 0) {
          break;
        }
      } while (Math.abs(f1) <= mTouchSlop);
      return true;
    } while ((paramInt1 == 0) || (Math.abs(f2) <= mTouchSlop));
    return true;
  }
  
  private boolean checkTouchSlop$134632()
  {
    int k = mInitialMotionX.length;
    int j = 0;
    while (j < k)
    {
      int i;
      if (isPointerDown(j))
      {
        float f1 = mLastMotionX[j] - mInitialMotionX[j];
        float f2 = mLastMotionY[j] - mInitialMotionY[j];
        if (f1 * f1 + f2 * f2 > mTouchSlop * mTouchSlop) {
          i = 1;
        }
      }
      while (i != 0)
      {
        return true;
        i = 0;
        continue;
        i = 0;
      }
      j += 1;
    }
    return false;
  }
  
  private boolean checkTouchSlop$17e2abff(View paramView, float paramFloat)
  {
    if (paramView == null) {}
    for (;;)
    {
      return false;
      if (mCallback.getViewHorizontalDragRange(paramView) > 0) {}
      for (int i = 1; (i != 0) && (Math.abs(paramFloat) > mTouchSlop); i = 0) {
        return true;
      }
    }
  }
  
  private static float clampMag(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f = Math.abs(paramFloat1);
    if (f < paramFloat2) {
      paramFloat2 = 0.0F;
    }
    do
    {
      return paramFloat2;
      if (f <= paramFloat3) {
        break;
      }
      paramFloat2 = paramFloat3;
    } while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }
  
  private static int clampMag(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = Math.abs(paramInt1);
    if (i < paramInt2) {
      paramInt2 = 0;
    }
    do
    {
      return paramInt2;
      if (i <= paramInt3) {
        break;
      }
      paramInt2 = paramInt3;
    } while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }
  
  private void clearMotionHistory()
  {
    if (mInitialMotionX == null) {
      return;
    }
    Arrays.fill(mInitialMotionX, 0.0F);
    Arrays.fill(mInitialMotionY, 0.0F);
    Arrays.fill(mLastMotionX, 0.0F);
    Arrays.fill(mLastMotionY, 0.0F);
    Arrays.fill(mInitialEdgesTouched, 0);
    Arrays.fill(mEdgeDragsInProgress, 0);
    Arrays.fill(mEdgeDragsLocked, 0);
    mPointersDown = 0;
  }
  
  private void clearMotionHistory(int paramInt)
  {
    if (mInitialMotionX == null) {
      return;
    }
    mInitialMotionX[paramInt] = 0.0F;
    mInitialMotionY[paramInt] = 0.0F;
    mLastMotionX[paramInt] = 0.0F;
    mLastMotionY[paramInt] = 0.0F;
    mInitialEdgesTouched[paramInt] = 0;
    mEdgeDragsInProgress[paramInt] = 0;
    mEdgeDragsLocked[paramInt] = 0;
    mPointersDown &= (1 << paramInt ^ 0xFFFFFFFF);
  }
  
  private int computeAxisDuration(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i = mParentView.getWidth();
    int j = i / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i);
    float f1 = j;
    float f2 = j;
    f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt1 = Math.round(Math.abs((f3 * f2 + f1) / paramInt2) * 1000.0F) * 4;; paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F)) {
      return Math.min(paramInt1, 600);
    }
  }
  
  private int computeSettleDuration(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = clampMag(paramInt3, (int)mMinVelocity, (int)mMaxVelocity);
    paramInt4 = clampMag(paramInt4, (int)mMinVelocity, (int)mMaxVelocity);
    int i = Math.abs(paramInt1);
    int j = Math.abs(paramInt2);
    int k = Math.abs(paramInt3);
    int m = Math.abs(paramInt4);
    int n = k + m;
    int i1 = i + j;
    float f1;
    if (paramInt3 != 0)
    {
      f1 = k / n;
      if (paramInt4 == 0) {
        break label156;
      }
    }
    label156:
    for (float f2 = m / n;; f2 = j / i1)
    {
      paramInt1 = computeAxisDuration(paramInt1, paramInt3, mCallback.getViewHorizontalDragRange(paramView));
      paramInt2 = computeAxisDuration(paramInt2, paramInt4, 0);
      float f3 = paramInt1;
      return (int)(f2 * paramInt2 + f1 * f3);
      f1 = i / i1;
      break;
    }
  }
  
  public static ViewDragHelper create(ViewGroup paramViewGroup, float paramFloat, Callback paramCallback)
  {
    paramViewGroup = new ViewDragHelper(paramViewGroup.getContext(), paramViewGroup, paramCallback);
    mTouchSlop = ((int)(mTouchSlop * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  private static ViewDragHelper create(ViewGroup paramViewGroup, Callback paramCallback)
  {
    return new ViewDragHelper(paramViewGroup.getContext(), paramViewGroup, paramCallback);
  }
  
  private void dispatchViewReleased$2548a35(float paramFloat)
  {
    mReleaseInProgress = true;
    mCallback.onViewReleased$17e2ac03(mCapturedView, paramFloat);
    mReleaseInProgress = false;
    if (mDragState == 1) {
      setDragState(0);
    }
  }
  
  private static float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  private void dragTo$3b4dfe4b(int paramInt1, int paramInt2, int paramInt3)
  {
    int k = mCapturedView.getLeft();
    int j = mCapturedView.getTop();
    int i = paramInt1;
    if (paramInt2 != 0)
    {
      i = mCallback.clampViewPositionHorizontal$17e143b0(mCapturedView, paramInt1);
      mCapturedView.offsetLeftAndRight(i - k);
    }
    if (paramInt3 != 0)
    {
      paramInt1 = mCallback.clampViewPositionVertical$17e143b0(mCapturedView);
      mCapturedView.offsetTopAndBottom(paramInt1 - j);
    }
    if ((paramInt2 != 0) || (paramInt3 != 0)) {
      mCallback.onViewPositionChanged$5b6f797d(mCapturedView, i);
    }
  }
  
  private void ensureMotionHistorySizeForId(int paramInt)
  {
    if ((mInitialMotionX == null) || (mInitialMotionX.length <= paramInt))
    {
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      float[] arrayOfFloat4 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (mInitialMotionX != null)
      {
        System.arraycopy(mInitialMotionX, 0, arrayOfFloat1, 0, mInitialMotionX.length);
        System.arraycopy(mInitialMotionY, 0, arrayOfFloat2, 0, mInitialMotionY.length);
        System.arraycopy(mLastMotionX, 0, arrayOfFloat3, 0, mLastMotionX.length);
        System.arraycopy(mLastMotionY, 0, arrayOfFloat4, 0, mLastMotionY.length);
        System.arraycopy(mInitialEdgesTouched, 0, arrayOfInt1, 0, mInitialEdgesTouched.length);
        System.arraycopy(mEdgeDragsInProgress, 0, arrayOfInt2, 0, mEdgeDragsInProgress.length);
        System.arraycopy(mEdgeDragsLocked, 0, arrayOfInt3, 0, mEdgeDragsLocked.length);
      }
      mInitialMotionX = arrayOfFloat1;
      mInitialMotionY = arrayOfFloat2;
      mLastMotionX = arrayOfFloat3;
      mLastMotionY = arrayOfFloat4;
      mInitialEdgesTouched = arrayOfInt1;
      mEdgeDragsInProgress = arrayOfInt2;
      mEdgeDragsLocked = arrayOfInt3;
    }
  }
  
  private void flingCapturedView(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!mReleaseInProgress) {
      throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }
    mScroller.fling(mCapturedView.getLeft(), mCapturedView.getTop(), (int)VelocityTrackerCompat.getXVelocity(mVelocityTracker, mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(mVelocityTracker, mActivePointerId), paramInt1, paramInt3, paramInt2, paramInt4);
    setDragState(2);
  }
  
  private boolean forceSettleCapturedViewAt(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = mCapturedView.getLeft();
    int j = mCapturedView.getTop();
    paramInt1 -= i;
    paramInt2 -= j;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      mScroller.abortAnimation();
      setDragState(0);
      return false;
    }
    View localView = mCapturedView;
    paramInt3 = clampMag(paramInt3, (int)mMinVelocity, (int)mMaxVelocity);
    paramInt4 = clampMag(paramInt4, (int)mMinVelocity, (int)mMaxVelocity);
    int k = Math.abs(paramInt1);
    int m = Math.abs(paramInt2);
    int n = Math.abs(paramInt3);
    int i1 = Math.abs(paramInt4);
    int i2 = n + i1;
    int i3 = k + m;
    float f1;
    if (paramInt3 != 0)
    {
      f1 = n / i2;
      if (paramInt4 == 0) {
        break label231;
      }
    }
    label231:
    for (float f2 = i1 / i2;; f2 = m / i3)
    {
      paramInt3 = computeAxisDuration(paramInt1, paramInt3, mCallback.getViewHorizontalDragRange(localView));
      paramInt4 = computeAxisDuration(paramInt2, paramInt4, 0);
      float f3 = paramInt3;
      paramInt3 = (int)(f2 * paramInt4 + f1 * f3);
      mScroller.startScroll(i, j, paramInt1, paramInt2, paramInt3);
      setDragState(2);
      return true;
      f1 = k / i3;
      break;
    }
  }
  
  private int getActivePointerId()
  {
    return mActivePointerId;
  }
  
  private View getCapturedView()
  {
    return mCapturedView;
  }
  
  private int getEdgeSize()
  {
    return mEdgeSize;
  }
  
  private int getEdgesTouched(int paramInt1, int paramInt2)
  {
    int j = 0;
    if (paramInt1 < mParentView.getLeft() + mEdgeSize) {
      j = 1;
    }
    int i = j;
    if (paramInt2 < mParentView.getTop() + mEdgeSize) {
      i = j | 0x4;
    }
    j = i;
    if (paramInt1 > mParentView.getRight() - mEdgeSize) {
      j = i | 0x2;
    }
    paramInt1 = j;
    if (paramInt2 > mParentView.getBottom() - mEdgeSize) {
      paramInt1 = j | 0x8;
    }
    return paramInt1;
  }
  
  private float getMinVelocity()
  {
    return mMinVelocity;
  }
  
  private int getTouchSlop()
  {
    return mTouchSlop;
  }
  
  private int getViewDragState()
  {
    return mDragState;
  }
  
  private boolean isCapturedViewUnder(int paramInt1, int paramInt2)
  {
    return isViewUnder(mCapturedView, paramInt1, paramInt2);
  }
  
  private boolean isEdgeTouched(int paramInt)
  {
    int k = mInitialEdgesTouched.length;
    int i = 0;
    while (i < k)
    {
      if ((isPointerDown(i)) && ((mInitialEdgesTouched[i] & paramInt) != 0)) {}
      for (int j = 1; j != 0; j = 0) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private boolean isEdgeTouched(int paramInt1, int paramInt2)
  {
    return (isPointerDown(paramInt2)) && ((mInitialEdgesTouched[paramInt2] & paramInt1) != 0);
  }
  
  public static boolean isViewUnder(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null) {}
    while ((paramInt1 < paramView.getLeft()) || (paramInt1 >= paramView.getRight()) || (paramInt2 < paramView.getTop()) || (paramInt2 >= paramView.getBottom())) {
      return false;
    }
    return true;
  }
  
  private void releaseViewForPointerUp()
  {
    mVelocityTracker.computeCurrentVelocity(1000, mMaxVelocity);
    float f = clampMag(VelocityTrackerCompat.getXVelocity(mVelocityTracker, mActivePointerId), mMinVelocity, mMaxVelocity);
    clampMag(VelocityTrackerCompat.getYVelocity(mVelocityTracker, mActivePointerId), mMinVelocity, mMaxVelocity);
    dispatchViewReleased$2548a35(f);
  }
  
  private void reportNewEdgeDrags(float paramFloat1, float paramFloat2, int paramInt)
  {
    int j = 1;
    if (checkNewEdgeDrag(paramFloat1, paramFloat2, paramInt, 1)) {}
    for (;;)
    {
      int i = j;
      if (checkNewEdgeDrag(paramFloat2, paramFloat1, paramInt, 4)) {
        i = j | 0x4;
      }
      j = i;
      if (checkNewEdgeDrag(paramFloat1, paramFloat2, paramInt, 2)) {
        j = i | 0x2;
      }
      i = j;
      if (checkNewEdgeDrag(paramFloat2, paramFloat1, paramInt, 8)) {
        i = j | 0x8;
      }
      if (i != 0)
      {
        int[] arrayOfInt = mEdgeDragsInProgress;
        arrayOfInt[paramInt] |= i;
        mCallback.onEdgeDragStarted(i, paramInt);
      }
      return;
      j = 0;
    }
  }
  
  private void saveInitialMotion(float paramFloat1, float paramFloat2, int paramInt)
  {
    int j = 0;
    if ((mInitialMotionX == null) || (mInitialMotionX.length <= paramInt))
    {
      localObject = new float[paramInt + 1];
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (mInitialMotionX != null)
      {
        System.arraycopy(mInitialMotionX, 0, localObject, 0, mInitialMotionX.length);
        System.arraycopy(mInitialMotionY, 0, arrayOfFloat1, 0, mInitialMotionY.length);
        System.arraycopy(mLastMotionX, 0, arrayOfFloat2, 0, mLastMotionX.length);
        System.arraycopy(mLastMotionY, 0, arrayOfFloat3, 0, mLastMotionY.length);
        System.arraycopy(mInitialEdgesTouched, 0, arrayOfInt1, 0, mInitialEdgesTouched.length);
        System.arraycopy(mEdgeDragsInProgress, 0, arrayOfInt2, 0, mEdgeDragsInProgress.length);
        System.arraycopy(mEdgeDragsLocked, 0, arrayOfInt3, 0, mEdgeDragsLocked.length);
      }
      mInitialMotionX = ((float[])localObject);
      mInitialMotionY = arrayOfFloat1;
      mLastMotionX = arrayOfFloat2;
      mLastMotionY = arrayOfFloat3;
      mInitialEdgesTouched = arrayOfInt1;
      mEdgeDragsInProgress = arrayOfInt2;
      mEdgeDragsLocked = arrayOfInt3;
    }
    Object localObject = mInitialMotionX;
    mLastMotionX[paramInt] = paramFloat1;
    localObject[paramInt] = paramFloat1;
    localObject = mInitialMotionY;
    mLastMotionY[paramInt] = paramFloat2;
    localObject[paramInt] = paramFloat2;
    localObject = mInitialEdgesTouched;
    int m = (int)paramFloat1;
    int k = (int)paramFloat2;
    if (m < mParentView.getLeft() + mEdgeSize) {
      j = 1;
    }
    int i = j;
    if (k < mParentView.getTop() + mEdgeSize) {
      i = j | 0x4;
    }
    j = i;
    if (m > mParentView.getRight() - mEdgeSize) {
      j = i | 0x2;
    }
    i = j;
    if (k > mParentView.getBottom() - mEdgeSize) {
      i = j | 0x8;
    }
    localObject[paramInt] = i;
    mPointersDown |= 1 << paramInt;
  }
  
  private void saveLastMotion(MotionEvent paramMotionEvent)
  {
    int j = MotionEventCompat.getPointerCount(paramMotionEvent);
    int i = 0;
    while (i < j)
    {
      int k = MotionEventCompat.getPointerId(paramMotionEvent, i);
      float f1 = MotionEventCompat.getX(paramMotionEvent, i);
      float f2 = MotionEventCompat.getY(paramMotionEvent, i);
      mLastMotionX[k] = f1;
      mLastMotionY[k] = f2;
      i += 1;
    }
  }
  
  private void setEdgeTrackingEnabled(int paramInt)
  {
    mTrackingEdges = paramInt;
  }
  
  private void setMinVelocity(float paramFloat)
  {
    mMinVelocity = paramFloat;
  }
  
  private boolean tryCaptureViewForDrag(View paramView, int paramInt)
  {
    if ((paramView == mCapturedView) && (mActivePointerId == paramInt)) {
      return true;
    }
    if ((paramView != null) && (mCallback.tryCaptureView$5359dc96(paramView)))
    {
      mActivePointerId = paramInt;
      captureChildView(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public final void abort()
  {
    cancel();
    if (mDragState == 2)
    {
      mScroller.getCurrX();
      mScroller.getCurrY();
      mScroller.abortAnimation();
      int i = mScroller.getCurrX();
      mScroller.getCurrY();
      mCallback.onViewPositionChanged$5b6f797d(mCapturedView, i);
    }
    setDragState(0);
  }
  
  public final void cancel()
  {
    mActivePointerId = -1;
    if (mInitialMotionX != null)
    {
      Arrays.fill(mInitialMotionX, 0.0F);
      Arrays.fill(mInitialMotionY, 0.0F);
      Arrays.fill(mLastMotionX, 0.0F);
      Arrays.fill(mLastMotionY, 0.0F);
      Arrays.fill(mInitialEdgesTouched, 0);
      Arrays.fill(mEdgeDragsInProgress, 0);
      Arrays.fill(mEdgeDragsLocked, 0);
      mPointersDown = 0;
    }
    if (mVelocityTracker != null)
    {
      mVelocityTracker.recycle();
      mVelocityTracker = null;
    }
  }
  
  public final void captureChildView(View paramView, int paramInt)
  {
    if (paramView.getParent() != mParentView) {
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + mParentView + ")");
    }
    mCapturedView = paramView;
    mActivePointerId = paramInt;
    mCallback.onViewCaptured$5359dc9a(paramView);
    setDragState(1);
  }
  
  public final boolean continueSettling$138603()
  {
    boolean bool2 = false;
    if (mDragState == 2)
    {
      boolean bool3 = mScroller.computeScrollOffset();
      int i = mScroller.getCurrX();
      int j = mScroller.getCurrY();
      int k = i - mCapturedView.getLeft();
      int m = j - mCapturedView.getTop();
      if (k != 0) {
        mCapturedView.offsetLeftAndRight(k);
      }
      if (m != 0) {
        mCapturedView.offsetTopAndBottom(m);
      }
      if ((k != 0) || (m != 0)) {
        mCallback.onViewPositionChanged$5b6f797d(mCapturedView, i);
      }
      bool1 = bool3;
      if (bool3)
      {
        bool1 = bool3;
        if (i == mScroller.getFinalX())
        {
          bool1 = bool3;
          if (j == mScroller.getFinalY())
          {
            mScroller.abortAnimation();
            bool1 = false;
          }
        }
      }
      if (!bool1) {
        mParentView.post(mSetIdleRunnable);
      }
    }
    boolean bool1 = bool2;
    if (mDragState == 2) {
      bool1 = true;
    }
    return bool1;
  }
  
  public final View findTopChildUnder(int paramInt1, int paramInt2)
  {
    int i = mParentView.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = mParentView.getChildAt(i);
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
      i -= 1;
    }
    return null;
  }
  
  public final boolean isPointerDown(int paramInt)
  {
    return (mPointersDown & 1 << paramInt) != 0;
  }
  
  public final void processTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 0;
    int j = 0;
    int m = MotionEventCompat.getActionMasked(paramMotionEvent);
    int k = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (m == 0) {
      cancel();
    }
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (m)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
      do
      {
        do
        {
          do
          {
            return;
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            i = MotionEventCompat.getPointerId(paramMotionEvent, 0);
            paramMotionEvent = findTopChildUnder((int)f1, (int)f2);
            saveInitialMotion(f1, f2, i);
            tryCaptureViewForDrag(paramMotionEvent, i);
          } while ((mInitialEdgesTouched[i] & mTrackingEdges) == 0);
          mCallback.onEdgeTouched$255f295();
          return;
          i = MotionEventCompat.getPointerId(paramMotionEvent, k);
          f1 = MotionEventCompat.getX(paramMotionEvent, k);
          f2 = MotionEventCompat.getY(paramMotionEvent, k);
          saveInitialMotion(f1, f2, i);
          if (mDragState != 0) {
            break;
          }
          tryCaptureViewForDrag(findTopChildUnder((int)f1, (int)f2), i);
        } while ((mInitialEdgesTouched[i] & mTrackingEdges) == 0);
        mCallback.onEdgeTouched$255f295();
        return;
        j = (int)f1;
        k = (int)f2;
      } while (!isViewUnder(mCapturedView, j, k));
      tryCaptureViewForDrag(mCapturedView, i);
      return;
    case 2: 
      if (mDragState == 1)
      {
        i = MotionEventCompat.findPointerIndex(paramMotionEvent, mActivePointerId);
        f1 = MotionEventCompat.getX(paramMotionEvent, i);
        f2 = MotionEventCompat.getY(paramMotionEvent, i);
        k = (int)(f1 - mLastMotionX[mActivePointerId]);
        m = (int)(f2 - mLastMotionY[mActivePointerId]);
        j = mCapturedView.getLeft() + k;
        mCapturedView.getTop();
        int i1 = mCapturedView.getLeft();
        int n = mCapturedView.getTop();
        i = j;
        if (k != 0)
        {
          i = mCallback.clampViewPositionHorizontal$17e143b0(mCapturedView, j);
          mCapturedView.offsetLeftAndRight(i - i1);
        }
        if (m != 0)
        {
          j = mCallback.clampViewPositionVertical$17e143b0(mCapturedView);
          mCapturedView.offsetTopAndBottom(j - n);
        }
        if ((k != 0) || (m != 0)) {
          mCallback.onViewPositionChanged$5b6f797d(mCapturedView, i);
        }
        saveLastMotion(paramMotionEvent);
        return;
      }
      k = MotionEventCompat.getPointerCount(paramMotionEvent);
      i = j;
      while (i < k)
      {
        j = MotionEventCompat.getPointerId(paramMotionEvent, i);
        f1 = MotionEventCompat.getX(paramMotionEvent, i);
        f2 = MotionEventCompat.getY(paramMotionEvent, i);
        float f3 = f1 - mInitialMotionX[j];
        reportNewEdgeDrags(f3, f2 - mInitialMotionY[j], j);
        if (mDragState == 1) {
          break;
        }
        View localView = findTopChildUnder((int)f1, (int)f2);
        if ((checkTouchSlop$17e2abff(localView, f3)) && (tryCaptureViewForDrag(localView, j))) {
          break;
        }
        i += 1;
      }
      saveLastMotion(paramMotionEvent);
      return;
    case 6: 
      j = MotionEventCompat.getPointerId(paramMotionEvent, k);
      if ((mDragState == 1) && (j == mActivePointerId))
      {
        k = MotionEventCompat.getPointerCount(paramMotionEvent);
        if (i >= k) {
          break label746;
        }
        m = MotionEventCompat.getPointerId(paramMotionEvent, i);
        if (m == mActivePointerId) {
          break label702;
        }
        f1 = MotionEventCompat.getX(paramMotionEvent, i);
        f2 = MotionEventCompat.getY(paramMotionEvent, i);
        if ((findTopChildUnder((int)f1, (int)f2) != mCapturedView) || (!tryCaptureViewForDrag(mCapturedView, m))) {
          break label702;
        }
      }
      break;
    }
    label702:
    label746:
    for (i = mActivePointerId;; i = -1)
    {
      if (i == -1) {
        releaseViewForPointerUp();
      }
      clearMotionHistory(j);
      return;
      i += 1;
      break;
      if (mDragState == 1) {
        releaseViewForPointerUp();
      }
      cancel();
      return;
      if (mDragState == 1) {
        dispatchViewReleased$2548a35(0.0F);
      }
      cancel();
      return;
    }
  }
  
  final void setDragState(int paramInt)
  {
    if (mDragState != paramInt)
    {
      mDragState = paramInt;
      mCallback.onViewDragStateChanged(paramInt);
      if (mDragState == 0) {
        mCapturedView = null;
      }
    }
  }
  
  public final boolean settleCapturedViewAt(int paramInt1, int paramInt2)
  {
    if (!mReleaseInProgress) {
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }
    return forceSettleCapturedViewAt(paramInt1, paramInt2, (int)VelocityTrackerCompat.getXVelocity(mVelocityTracker, mActivePointerId), (int)VelocityTrackerCompat.getYVelocity(mVelocityTracker, mActivePointerId));
  }
  
  public final boolean shouldInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int j = MotionEventCompat.getActionMasked(paramMotionEvent);
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (j == 0) {
      cancel();
    }
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    switch (j)
    {
    }
    while (mDragState == 1)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      i = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      saveInitialMotion(f1, f2, i);
      paramMotionEvent = findTopChildUnder((int)f1, (int)f2);
      if ((paramMotionEvent == mCapturedView) && (mDragState == 2)) {
        tryCaptureViewForDrag(paramMotionEvent, i);
      }
      if ((mInitialEdgesTouched[i] & mTrackingEdges) != 0)
      {
        mCallback.onEdgeTouched$255f295();
        continue;
        j = MotionEventCompat.getPointerId(paramMotionEvent, i);
        f1 = MotionEventCompat.getX(paramMotionEvent, i);
        f2 = MotionEventCompat.getY(paramMotionEvent, i);
        saveInitialMotion(f1, f2, j);
        if (mDragState == 0)
        {
          if ((mInitialEdgesTouched[j] & mTrackingEdges) != 0) {
            mCallback.onEdgeTouched$255f295();
          }
        }
        else if (mDragState == 2)
        {
          paramMotionEvent = findTopChildUnder((int)f1, (int)f2);
          if (paramMotionEvent == mCapturedView)
          {
            tryCaptureViewForDrag(paramMotionEvent, j);
            continue;
            int k = MotionEventCompat.getPointerCount(paramMotionEvent);
            i = 0;
            for (;;)
            {
              int m;
              float f3;
              float f4;
              View localView;
              if (i < k)
              {
                m = MotionEventCompat.getPointerId(paramMotionEvent, i);
                f1 = MotionEventCompat.getX(paramMotionEvent, i);
                f2 = MotionEventCompat.getY(paramMotionEvent, i);
                f3 = f1 - mInitialMotionX[m];
                f4 = mInitialMotionY[m];
                localView = findTopChildUnder((int)f1, (int)f2);
                if ((localView == null) || (!checkTouchSlop$17e2abff(localView, f3))) {
                  break label451;
                }
                j = 1;
                label366:
                if (j == 0) {
                  break label457;
                }
                int n = localView.getLeft();
                int i1 = (int)f3;
                i1 = mCallback.clampViewPositionHorizontal$17e143b0(localView, i1 + n);
                localView.getTop();
                mCallback.clampViewPositionVertical$17e143b0(localView);
                int i2 = mCallback.getViewHorizontalDragRange(localView);
                if ((i2 != 0) && ((i2 <= 0) || (i1 != n))) {
                  break label457;
                }
              }
              label451:
              label457:
              do
              {
                saveLastMotion(paramMotionEvent);
                break;
                j = 0;
                break label366;
                reportNewEdgeDrags(f3, f2 - f4, m);
              } while ((mDragState == 1) || ((j != 0) && (tryCaptureViewForDrag(localView, m))));
              i += 1;
            }
            clearMotionHistory(MotionEventCompat.getPointerId(paramMotionEvent, i));
            continue;
            cancel();
          }
        }
      }
    }
    return false;
  }
  
  public final boolean smoothSlideViewTo(View paramView, int paramInt1, int paramInt2)
  {
    mCapturedView = paramView;
    mActivePointerId = -1;
    boolean bool = forceSettleCapturedViewAt(paramInt1, paramInt2, 0, 0);
    if ((!bool) && (mDragState == 0) && (mCapturedView != null)) {
      mCapturedView = null;
    }
    return bool;
  }
  
  public static abstract class Callback
  {
    private static int getOrderedChildIndex(int paramInt)
    {
      return paramInt;
    }
    
    private static int getViewVerticalDragRange$3c7ec8d0()
    {
      return 0;
    }
    
    public int clampViewPositionHorizontal$17e143b0(View paramView, int paramInt)
    {
      return 0;
    }
    
    public int clampViewPositionVertical$17e143b0(View paramView)
    {
      return 0;
    }
    
    public int getViewHorizontalDragRange(View paramView)
    {
      return 0;
    }
    
    public void onEdgeDragStarted(int paramInt1, int paramInt2) {}
    
    public boolean onEdgeLock$134632()
    {
      return false;
    }
    
    public void onEdgeTouched$255f295() {}
    
    public void onViewCaptured$5359dc9a(View paramView) {}
    
    public void onViewDragStateChanged(int paramInt) {}
    
    public void onViewPositionChanged$5b6f797d(View paramView, int paramInt) {}
    
    public void onViewReleased$17e2ac03(View paramView, float paramFloat) {}
    
    public abstract boolean tryCaptureView$5359dc96(View paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ViewDragHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
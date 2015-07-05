package android.support.v4.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;

final class DrawerLayout$ViewDragCallback
  extends ViewDragHelper.Callback
{
  final int mAbsGravity;
  ViewDragHelper mDragger;
  private final Runnable mPeekRunnable = new Runnable()
  {
    public final void run()
    {
      int k = 0;
      Object localObject2 = DrawerLayout.ViewDragCallback.this;
      int m = mDragger.mEdgeSize;
      int i;
      Object localObject1;
      int j;
      if (mAbsGravity == 3)
      {
        i = 1;
        if (i == 0) {
          break label226;
        }
        localObject1 = this$0.findDrawerWithGravity(3);
        if (localObject1 == null) {
          break label221;
        }
        j = -((View)localObject1).getWidth();
        label56:
        j += m;
      }
      for (;;)
      {
        label61:
        if ((localObject1 != null) && (((i != 0) && (((View)localObject1).getLeft() < j)) || ((i == 0) && (((View)localObject1).getLeft() > j) && (this$0.getDrawerLockMode((View)localObject1) == 0))))
        {
          DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)((View)localObject1).getLayoutParams();
          mDragger.smoothSlideViewTo((View)localObject1, j, ((View)localObject1).getTop());
          isPeeking = true;
          this$0.invalidate();
          ((DrawerLayout.ViewDragCallback)localObject2).closeOtherDrawer();
          localObject1 = this$0;
          if (!mChildrenCanceledTouch)
          {
            long l = SystemClock.uptimeMillis();
            localObject2 = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
            j = ((DrawerLayout)localObject1).getChildCount();
            i = k;
            for (;;)
            {
              if (i < j)
              {
                ((DrawerLayout)localObject1).getChildAt(i).dispatchTouchEvent((MotionEvent)localObject2);
                i += 1;
                continue;
                i = 0;
                break;
                label221:
                j = 0;
                break label56;
                label226:
                localObject1 = this$0.findDrawerWithGravity(5);
                j = this$0.getWidth();
                j -= m;
                break label61;
              }
            }
            ((MotionEvent)localObject2).recycle();
            mChildrenCanceledTouch = true;
          }
        }
      }
    }
  };
  
  public DrawerLayout$ViewDragCallback(DrawerLayout paramDrawerLayout, int paramInt)
  {
    mAbsGravity = paramInt;
  }
  
  private void peekDrawer()
  {
    int k = 0;
    int m = mDragger.mEdgeSize;
    int i;
    Object localObject1;
    int j;
    if (mAbsGravity == 3)
    {
      i = 1;
      if (i == 0) {
        break label212;
      }
      localObject1 = this$0.findDrawerWithGravity(3);
      if (localObject1 == null) {
        break label207;
      }
      j = -((View)localObject1).getWidth();
      label47:
      j += m;
    }
    for (;;)
    {
      label52:
      if ((localObject1 != null) && (((i != 0) && (((View)localObject1).getLeft() < j)) || ((i == 0) && (((View)localObject1).getLeft() > j) && (this$0.getDrawerLockMode((View)localObject1) == 0))))
      {
        Object localObject2 = (DrawerLayout.LayoutParams)((View)localObject1).getLayoutParams();
        mDragger.smoothSlideViewTo((View)localObject1, j, ((View)localObject1).getTop());
        isPeeking = true;
        this$0.invalidate();
        closeOtherDrawer();
        localObject1 = this$0;
        if (!mChildrenCanceledTouch)
        {
          long l = SystemClock.uptimeMillis();
          localObject2 = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
          j = ((DrawerLayout)localObject1).getChildCount();
          i = k;
          for (;;)
          {
            if (i < j)
            {
              ((DrawerLayout)localObject1).getChildAt(i).dispatchTouchEvent((MotionEvent)localObject2);
              i += 1;
              continue;
              i = 0;
              break;
              label207:
              j = 0;
              break label47;
              label212:
              localObject1 = this$0.findDrawerWithGravity(5);
              j = this$0.getWidth();
              j -= m;
              break label52;
            }
          }
          ((MotionEvent)localObject2).recycle();
          mChildrenCanceledTouch = true;
        }
      }
    }
  }
  
  private void setDragger(ViewDragHelper paramViewDragHelper)
  {
    mDragger = paramViewDragHelper;
  }
  
  public final int clampViewPositionHorizontal$17e143b0(View paramView, int paramInt)
  {
    if (this$0.checkDrawerViewAbsoluteGravity(paramView, 3)) {
      return Math.max(-paramView.getWidth(), Math.min(paramInt, 0));
    }
    int i = this$0.getWidth();
    return Math.max(i - paramView.getWidth(), Math.min(paramInt, i));
  }
  
  public final int clampViewPositionVertical$17e143b0(View paramView)
  {
    return paramView.getTop();
  }
  
  final void closeOtherDrawer()
  {
    int i = 3;
    if (mAbsGravity == 3) {
      i = 5;
    }
    View localView = this$0.findDrawerWithGravity(i);
    if (localView != null) {
      this$0.closeDrawer(localView);
    }
  }
  
  public final int getViewHorizontalDragRange(View paramView)
  {
    if (DrawerLayout.isDrawerView(paramView)) {
      return paramView.getWidth();
    }
    return 0;
  }
  
  public final void onEdgeDragStarted(int paramInt1, int paramInt2)
  {
    if ((paramInt1 & 0x1) == 1) {}
    for (View localView = this$0.findDrawerWithGravity(3);; localView = this$0.findDrawerWithGravity(5))
    {
      if ((localView != null) && (this$0.getDrawerLockMode(localView) == 0)) {
        mDragger.captureChildView(localView, paramInt2);
      }
      return;
    }
  }
  
  public final boolean onEdgeLock$134632()
  {
    return false;
  }
  
  public final void onEdgeTouched$255f295()
  {
    this$0.postDelayed(mPeekRunnable, 160L);
  }
  
  public final void onViewCaptured$5359dc9a(View paramView)
  {
    getLayoutParamsisPeeking = false;
    closeOtherDrawer();
  }
  
  public final void onViewDragStateChanged(int paramInt)
  {
    DrawerLayout localDrawerLayout = this$0;
    View localView = mDragger.mCapturedView;
    int i = mLeftDragger.mDragState;
    int j = mRightDragger.mDragState;
    DrawerLayout.LayoutParams localLayoutParams;
    if ((i == 1) || (j == 1))
    {
      i = 1;
      if ((localView != null) && (paramInt == 0))
      {
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (onScreen != 0.0F) {
          break label187;
        }
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (knownOpen)
        {
          knownOpen = false;
          if (mListener != null) {
            mListener.onDrawerClosed$3c7ec8c3();
          }
          localDrawerLayout.updateChildrenImportantForAccessibility(localView, false);
          if (localDrawerLayout.hasWindowFocus())
          {
            localView = localDrawerLayout.getRootView();
            if (localView != null) {
              localView.sendAccessibilityEvent(32);
            }
          }
        }
      }
    }
    for (;;)
    {
      if (i != mDrawerState) {
        mDrawerState = i;
      }
      return;
      if ((i == 2) || (j == 2))
      {
        i = 2;
        break;
      }
      i = 0;
      break;
      label187:
      if (onScreen == 1.0F)
      {
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (!knownOpen)
        {
          knownOpen = true;
          if (mListener != null) {
            mListener.onDrawerOpened$3c7ec8c3();
          }
          localDrawerLayout.updateChildrenImportantForAccessibility(localView, true);
          localView.requestFocus();
        }
      }
    }
  }
  
  public final void onViewPositionChanged$5b6f797d(View paramView, int paramInt)
  {
    int i = paramView.getWidth();
    float f;
    if (this$0.checkDrawerViewAbsoluteGravity(paramView, 3))
    {
      f = (i + paramInt) / i;
      this$0.setDrawerViewOffset(paramView, f);
      if (f != 0.0F) {
        break label76;
      }
    }
    label76:
    for (paramInt = 4;; paramInt = 0)
    {
      paramView.setVisibility(paramInt);
      this$0.invalidate();
      return;
      f = (this$0.getWidth() - paramInt) / i;
      break;
    }
  }
  
  public final void onViewReleased$17e2ac03(View paramView, float paramFloat)
  {
    float f = DrawerLayout.getDrawerViewOffset(paramView);
    int k = paramView.getWidth();
    int i;
    if (this$0.checkDrawerViewAbsoluteGravity(paramView, 3)) {
      if ((paramFloat > 0.0F) || ((paramFloat == 0.0F) && (f > 0.5F))) {
        i = 0;
      }
    }
    for (;;)
    {
      mDragger.settleCapturedViewAt(i, paramView.getTop());
      this$0.invalidate();
      return;
      i = -k;
      continue;
      int j = this$0.getWidth();
      if (paramFloat >= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (f <= 0.5F) {}
        }
      }
      else
      {
        i = j - k;
      }
    }
  }
  
  public final void removeCallbacks()
  {
    this$0.removeCallbacks(mPeekRunnable);
  }
  
  public final boolean tryCaptureView$5359dc96(View paramView)
  {
    return (DrawerLayout.isDrawerView(paramView)) && (this$0.checkDrawerViewAbsoluteGravity(paramView, mAbsGravity)) && (this$0.getDrawerLockMode(paramView) == 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout.ViewDragCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
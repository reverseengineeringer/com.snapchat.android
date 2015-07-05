package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import l;
import r;

public class DrawerLayout
  extends ViewGroup
  implements DrawerLayoutImpl
{
  private static final boolean ALLOW_EDGE_LOCK = false;
  private static final boolean CAN_HIDE_DESCENDANTS;
  private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
  private static final int DEFAULT_SCRIM_COLOR = -1728053248;
  static final DrawerLayoutCompatImpl IMPL = new DrawerLayoutCompatImplBase();
  private static final int[] LAYOUT_ATTRS;
  public static final int LOCK_MODE_LOCKED_CLOSED = 1;
  public static final int LOCK_MODE_LOCKED_OPEN = 2;
  public static final int LOCK_MODE_UNLOCKED = 0;
  private static final int MIN_DRAWER_MARGIN = 64;
  private static final int MIN_FLING_VELOCITY = 400;
  private static final int PEEK_DELAY = 160;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private static final String TAG = "DrawerLayout";
  private static final float TOUCH_SLOP_SENSITIVITY = 1.0F;
  private final ChildAccessibilityDelegate mChildAccessibilityDelegate = new ChildAccessibilityDelegate();
  boolean mChildrenCanceledTouch;
  private boolean mDisallowInterceptRequested;
  private boolean mDrawStatusBarBackground;
  int mDrawerState;
  private boolean mFirstLayout = true;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private Object mLastInsets;
  private final ViewDragCallback mLeftCallback;
  final ViewDragHelper mLeftDragger;
  DrawerListener mListener;
  private int mLockModeLeft;
  private int mLockModeRight;
  private int mMinDrawerMargin;
  private final ViewDragCallback mRightCallback;
  final ViewDragHelper mRightDragger;
  private int mScrimColor = -1728053248;
  private float mScrimOpacity;
  private Paint mScrimPaint = new Paint();
  private Drawable mShadowLeft;
  private Drawable mShadowRight;
  private Drawable mStatusBarBackground;
  CharSequence mTitleLeft;
  CharSequence mTitleRight;
  
  static
  {
    boolean bool = true;
    LAYOUT_ATTRS = new int[] { 16842931 };
    if (Build.VERSION.SDK_INT >= 19) {}
    for (;;)
    {
      CAN_HIDE_DESCENDANTS = bool;
      if (Build.VERSION.SDK_INT < 21) {
        break;
      }
      IMPL = new DrawerLayoutCompatImplApi21();
      return;
      bool = false;
    }
  }
  
  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f = getResourcesgetDisplayMetricsdensity;
    mMinDrawerMargin = ((int)(64.0F * f + 0.5F));
    f *= 400.0F;
    mLeftCallback = new ViewDragCallback(3);
    mRightCallback = new ViewDragCallback(5);
    mLeftDragger = ViewDragHelper.create(this, 1.0F, mLeftCallback);
    mLeftDragger.mTrackingEdges = 1;
    mLeftDragger.mMinVelocity = f;
    mLeftCallback.mDragger = mLeftDragger;
    mRightDragger = ViewDragHelper.create(this, 1.0F, mRightCallback);
    mRightDragger.mTrackingEdges = 2;
    mRightDragger.mMinVelocity = f;
    mRightCallback.mDragger = mRightDragger;
    setFocusableInTouchMode(true);
    ViewCompat.setImportantForAccessibility(this, 1);
    ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
    ViewGroupCompat.setMotionEventSplittingEnabled$4d3af60(this);
    if (ViewCompat.getFitsSystemWindows(this)) {
      IMPL.configureApplyInsets(this);
    }
  }
  
  private void cancelChildViewTouch()
  {
    int i = 0;
    if (!mChildrenCanceledTouch)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      int j = getChildCount();
      while (i < j)
      {
        getChildAt(i).dispatchTouchEvent(localMotionEvent);
        i += 1;
      }
      localMotionEvent.recycle();
      mChildrenCanceledTouch = true;
    }
  }
  
  private void closeDrawer$13462e()
  {
    View localView = findDrawerWithGravity(8388611);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(8388611));
    }
    closeDrawer(localView);
  }
  
  private void closeDrawers()
  {
    closeDrawers(false);
  }
  
  private void dispatchOnDrawerClosed(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (knownOpen)
    {
      knownOpen = false;
      if (mListener != null) {
        mListener.onDrawerClosed$3c7ec8c3();
      }
      updateChildrenImportantForAccessibility(paramView, false);
      if (hasWindowFocus())
      {
        paramView = getRootView();
        if (paramView != null) {
          paramView.sendAccessibilityEvent(32);
        }
      }
    }
  }
  
  private void dispatchOnDrawerOpened(View paramView)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if (!knownOpen)
    {
      knownOpen = true;
      if (mListener != null) {
        mListener.onDrawerOpened$3c7ec8c3();
      }
      updateChildrenImportantForAccessibility(paramView, true);
      paramView.requestFocus();
    }
  }
  
  private void dispatchOnDrawerSlide$5359e7dd(float paramFloat)
  {
    if (mListener != null) {
      mListener.onDrawerSlide$5359e7dd(paramFloat);
    }
  }
  
  private View findOpenDrawer()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if (getLayoutParamsknownOpen) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  private View findVisibleDrawer()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if ((isDrawerView(localView)) && (isDrawerVisible(localView))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  private int getDrawerLockMode(int paramInt)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (paramInt == 3) {
      return mLockModeLeft;
    }
    if (paramInt == 5) {
      return mLockModeRight;
    }
    return 0;
  }
  
  @r
  private CharSequence getDrawerTitle(int paramInt)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (paramInt == 3) {
      return mTitleLeft;
    }
    if (paramInt == 5) {
      return mTitleRight;
    }
    return null;
  }
  
  static float getDrawerViewOffset(View paramView)
  {
    return getLayoutParamsonScreen;
  }
  
  public static String gravityToString(int paramInt)
  {
    if ((paramInt & 0x3) == 3) {
      return "LEFT";
    }
    if ((paramInt & 0x5) == 5) {
      return "RIGHT";
    }
    return Integer.toHexString(paramInt);
  }
  
  private static boolean hasOpaqueBackground(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean hasPeekingDrawer()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      if (getChildAtgetLayoutParamsisPeeking) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private boolean hasVisibleDrawer()
  {
    return findVisibleDrawer() != null;
  }
  
  private static boolean includeChildForAccessibility(View paramView)
  {
    return (ViewCompat.getImportantForAccessibility(paramView) != 4) && (ViewCompat.getImportantForAccessibility(paramView) != 2);
  }
  
  private static boolean isContentView(View paramView)
  {
    return getLayoutParamsgravity == 0;
  }
  
  private static boolean isDrawerOpen(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsknownOpen;
  }
  
  static boolean isDrawerView(View paramView)
  {
    return (GravityCompat.getAbsoluteGravity(getLayoutParamsgravity, ViewCompat.getLayoutDirection(paramView)) & 0x7) != 0;
  }
  
  public static boolean isDrawerVisible(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    }
    return getLayoutParamsonScreen > 0.0F;
  }
  
  private boolean isDrawerVisible$134632()
  {
    View localView = findDrawerWithGravity(8388611);
    if (localView != null) {
      return isDrawerVisible(localView);
    }
    return false;
  }
  
  private void moveDrawerToOffset(View paramView, float paramFloat)
  {
    float f = getDrawerViewOffset(paramView);
    int i = paramView.getWidth();
    int j = (int)(f * i);
    i = (int)(i * paramFloat) - j;
    if (checkDrawerViewAbsoluteGravity(paramView, 3)) {}
    for (;;)
    {
      paramView.offsetLeftAndRight(i);
      setDrawerViewOffset(paramView, paramFloat);
      return;
      i = -i;
    }
  }
  
  private void openDrawer(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (mFirstLayout)
    {
      LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
      onScreen = 1.0F;
      knownOpen = true;
      updateChildrenImportantForAccessibility(paramView, true);
    }
    for (;;)
    {
      invalidate();
      return;
      if (checkDrawerViewAbsoluteGravity(paramView, 3)) {
        mLeftDragger.smoothSlideViewTo(paramView, 0, paramView.getTop());
      } else {
        mRightDragger.smoothSlideViewTo(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
      }
    }
  }
  
  private void updateDrawerState$5cdeb3e3(int paramInt, View paramView)
  {
    int i = mLeftDragger.mDragState;
    int j = mRightDragger.mDragState;
    LayoutParams localLayoutParams;
    if ((i == 1) || (j == 1))
    {
      i = 1;
      if ((paramView != null) && (paramInt == 0))
      {
        localLayoutParams = (LayoutParams)paramView.getLayoutParams();
        if (onScreen != 0.0F) {
          break label159;
        }
        localLayoutParams = (LayoutParams)paramView.getLayoutParams();
        if (knownOpen)
        {
          knownOpen = false;
          if (mListener != null) {
            mListener.onDrawerClosed$3c7ec8c3();
          }
          updateChildrenImportantForAccessibility(paramView, false);
          if (hasWindowFocus())
          {
            paramView = getRootView();
            if (paramView != null) {
              paramView.sendAccessibilityEvent(32);
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
      label159:
      if (onScreen == 1.0F)
      {
        localLayoutParams = (LayoutParams)paramView.getLayoutParams();
        if (!knownOpen)
        {
          knownOpen = true;
          if (mListener != null) {
            mListener.onDrawerOpened$3c7ec8c3();
          }
          updateChildrenImportantForAccessibility(paramView, true);
          paramView.requestFocus();
        }
      }
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((findOpenDrawer() != null) || (isDrawerView(paramView))) {
      ViewCompat.setImportantForAccessibility(paramView, 4);
    }
    for (;;)
    {
      if (!CAN_HIDE_DESCENDANTS) {
        ViewCompat.setAccessibilityDelegate(paramView, mChildAccessibilityDelegate);
      }
      return;
      ViewCompat.setImportantForAccessibility(paramView, 1);
    }
  }
  
  final boolean checkDrawerViewAbsoluteGravity(View paramView, int paramInt)
  {
    return (getDrawerViewAbsoluteGravity(paramView) & paramInt) == paramInt;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public final void closeDrawer(View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    }
    if (mFirstLayout)
    {
      paramView = (LayoutParams)paramView.getLayoutParams();
      onScreen = 0.0F;
      knownOpen = false;
    }
    for (;;)
    {
      invalidate();
      return;
      if (checkDrawerViewAbsoluteGravity(paramView, 3)) {
        mLeftDragger.smoothSlideViewTo(paramView, -paramView.getWidth(), paramView.getTop());
      } else {
        mRightDragger.smoothSlideViewTo(paramView, getWidth(), paramView.getTop());
      }
    }
  }
  
  public final void closeDrawers(boolean paramBoolean)
  {
    int m = getChildCount();
    int j = 0;
    int i = 0;
    if (j < m)
    {
      View localView = getChildAt(j);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      boolean bool = i;
      int k;
      if (isDrawerView(localView)) {
        if (paramBoolean)
        {
          bool = i;
          if (!isPeeking) {}
        }
        else
        {
          k = localView.getWidth();
          if (!checkDrawerViewAbsoluteGravity(localView, 3)) {
            break label115;
          }
          i |= mLeftDragger.smoothSlideViewTo(localView, -k, localView.getTop());
        }
      }
      for (;;)
      {
        isPeeking = false;
        k = i;
        j += 1;
        i = k;
        break;
        label115:
        i |= mRightDragger.smoothSlideViewTo(localView, getWidth(), localView.getTop());
      }
    }
    mLeftCallback.removeCallbacks();
    mRightCallback.removeCallbacks();
    if (i != 0) {
      invalidate();
    }
  }
  
  public void computeScroll()
  {
    int j = getChildCount();
    float f = 0.0F;
    int i = 0;
    while (i < j)
    {
      f = Math.max(f, getChildAtgetLayoutParamsonScreen);
      i += 1;
    }
    mScrimOpacity = f;
    if ((mLeftDragger.continueSettling$138603() | mRightDragger.continueSettling$138603())) {
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i2 = getHeight();
    boolean bool1 = isContentView(paramView);
    int j = 0;
    int n = 0;
    int i = getWidth();
    int i3 = paramCanvas.save();
    int k = i;
    int m;
    View localView;
    if (bool1)
    {
      int i4 = getChildCount();
      m = 0;
      j = n;
      if (m < i4)
      {
        localView = getChildAt(m);
        if ((localView != paramView) && (localView.getVisibility() == 0))
        {
          Drawable localDrawable = localView.getBackground();
          if (localDrawable != null) {
            if (localDrawable.getOpacity() == -1)
            {
              k = 1;
              label105:
              if ((k == 0) || (!isDrawerView(localView)) || (localView.getHeight() < i2)) {
                break label215;
              }
              if (!checkDrawerViewAbsoluteGravity(localView, 3)) {
                break label193;
              }
              k = localView.getRight();
              if (k <= j) {
                break label558;
              }
              j = k;
            }
          }
        }
      }
    }
    label193:
    label215:
    label558:
    for (;;)
    {
      n = j;
      k = i;
      for (;;)
      {
        m += 1;
        i = k;
        j = n;
        break;
        k = 0;
        break label105;
        k = 0;
        break label105;
        int i1 = localView.getLeft();
        k = i1;
        n = j;
        if (i1 >= i)
        {
          k = i;
          n = j;
        }
      }
      paramCanvas.clipRect(j, 0, i, getHeight());
      k = i;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(i3);
      if ((mScrimOpacity > 0.0F) && (bool1))
      {
        i = (int)(((mScrimColor & 0xFF000000) >>> 24) * mScrimOpacity);
        m = mScrimColor;
        mScrimPaint.setColor(i << 24 | m & 0xFFFFFF);
        paramCanvas.drawRect(j, 0.0F, k, getHeight(), mScrimPaint);
      }
      do
      {
        return bool2;
        if ((mShadowLeft != null) && (checkDrawerViewAbsoluteGravity(paramView, 3)))
        {
          i = mShadowLeft.getIntrinsicWidth();
          j = paramView.getRight();
          k = mLeftDragger.mEdgeSize;
          f = Math.max(0.0F, Math.min(j / k, 1.0F));
          mShadowLeft.setBounds(j, paramView.getTop(), i + j, paramView.getBottom());
          mShadowLeft.setAlpha((int)(255.0F * f));
          mShadowLeft.draw(paramCanvas);
          return bool2;
        }
      } while ((mShadowRight == null) || (!checkDrawerViewAbsoluteGravity(paramView, 5)));
      i = mShadowRight.getIntrinsicWidth();
      j = paramView.getLeft();
      k = getWidth();
      m = mRightDragger.mEdgeSize;
      float f = Math.max(0.0F, Math.min((k - j) / m, 1.0F));
      mShadowRight.setBounds(j - i, paramView.getTop(), j, paramView.getBottom());
      mShadowRight.setAlpha((int)(255.0F * f));
      mShadowRight.draw(paramCanvas);
      return bool2;
    }
  }
  
  public final View findDrawerWithGravity(int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    int j = getChildCount();
    paramInt = 0;
    while (paramInt < j)
    {
      View localView = getChildAt(paramInt);
      if ((getDrawerViewAbsoluteGravity(localView) & 0x7) == (i & 0x7)) {
        return localView;
      }
      paramInt += 1;
    }
    return null;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams(-1, -1);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LayoutParams)) {
      return new LayoutParams((LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public final int getDrawerLockMode(View paramView)
  {
    int i = getDrawerViewAbsoluteGravity(paramView);
    if (i == 3) {
      return mLockModeLeft;
    }
    if (i == 5) {
      return mLockModeRight;
    }
    return 0;
  }
  
  final int getDrawerViewAbsoluteGravity(View paramView)
  {
    return GravityCompat.getAbsoluteGravity(getLayoutParamsgravity, ViewCompat.getLayoutDirection(this));
  }
  
  public final boolean isDrawerOpen$134632()
  {
    View localView = findDrawerWithGravity(8388611);
    if (localView != null)
    {
      if (!isDrawerView(localView)) {
        throw new IllegalArgumentException("View " + localView + " is not a drawer");
      }
      return getLayoutParamsknownOpen;
    }
    return false;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mFirstLayout = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    mFirstLayout = true;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((mDrawStatusBarBackground) && (mStatusBarBackground != null))
    {
      int i = IMPL.getTopInset(mLastInsets);
      if (i > 0)
      {
        mStatusBarBackground.setBounds(0, 0, getWidth(), i);
        mStatusBarBackground.draw(paramCanvas);
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    boolean bool2 = mLeftDragger.shouldInterceptTouchEvent(paramMotionEvent);
    boolean bool3 = mRightDragger.shouldInterceptTouchEvent(paramMotionEvent);
    label63:
    int j;
    label85:
    label113:
    float f1;
    float f2;
    switch (i)
    {
    default: 
      i = 0;
      if ((!(bool3 | bool2)) && (i == 0))
      {
        j = getChildCount();
        i = 0;
        if (i >= j) {
          break label373;
        }
        if (!getChildAtgetLayoutParamsisPeeking) {
          break;
        }
        i = 1;
        if ((i == 0) && (!mChildrenCanceledTouch)) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      mInitialMotionX = f1;
      mInitialMotionY = f2;
      if (mScrimOpacity > 0.0F)
      {
        paramMotionEvent = mLeftDragger.findTopChildUnder((int)f1, (int)f2);
        if ((paramMotionEvent == null) || (!isContentView(paramMotionEvent))) {}
      }
      break;
    }
    for (i = 1;; i = 0)
    {
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      break label63;
      paramMotionEvent = mLeftDragger;
      int k = mInitialMotionX.length;
      j = 0;
      label214:
      if (j < k) {
        if (paramMotionEvent.isPointerDown(j))
        {
          f1 = mLastMotionX[j] - mInitialMotionX[j];
          f2 = mLastMotionY[j] - mInitialMotionY[j];
          if (f1 * f1 + f2 * f2 > mTouchSlop * mTouchSlop)
          {
            i = 1;
            label286:
            if (i == 0) {
              break label331;
            }
          }
        }
      }
      for (i = 1; i != 0; i = 0)
      {
        mLeftCallback.removeCallbacks();
        mRightCallback.removeCallbacks();
        i = 0;
        break label63;
        i = 0;
        break label286;
        i = 0;
        break label286;
        label331:
        j += 1;
        break label214;
      }
      closeDrawers(true);
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      break;
      i += 1;
      break label85;
      label373:
      i = 0;
      break label113;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (findVisibleDrawer() != null) {}
      for (int i = 1; i != 0; i = 0)
      {
        KeyEventCompat.startTracking(paramKeyEvent);
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      paramKeyEvent = findVisibleDrawer();
      if ((paramKeyEvent != null) && (getDrawerLockMode(paramKeyEvent) == 0)) {
        closeDrawers(false);
      }
      if (paramKeyEvent != null) {
        bool = true;
      }
      return bool;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mInLayout = true;
    int m = paramInt3 - paramInt1;
    int n = getChildCount();
    paramInt3 = 0;
    while (paramInt3 < n)
    {
      View localView = getChildAt(paramInt3);
      LayoutParams localLayoutParams;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (isContentView(localView)) {
          localView.layout(leftMargin, topMargin, leftMargin + localView.getMeasuredWidth(), topMargin + localView.getMeasuredHeight());
        }
      }
      else
      {
        paramInt3 += 1;
        continue;
      }
      int i1 = localView.getMeasuredWidth();
      int i2 = localView.getMeasuredHeight();
      int i;
      float f;
      label163:
      int j;
      if (checkDrawerViewAbsoluteGravity(localView, 3))
      {
        paramInt1 = -i1;
        i = (int)(i1 * onScreen) + paramInt1;
        f = (i1 + i) / i1;
        if (f == onScreen) {
          break label310;
        }
        j = 1;
        label177:
        switch (gravity & 0x70)
        {
        default: 
          localView.layout(i, topMargin, i1 + i, i2 + topMargin);
          label237:
          if (j != 0) {
            setDrawerViewOffset(localView, f);
          }
          if (onScreen <= 0.0F) {
            break;
          }
        }
      }
      for (paramInt1 = 0; localView.getVisibility() != paramInt1; paramInt1 = 4)
      {
        localView.setVisibility(paramInt1);
        break;
        i = m - (int)(i1 * onScreen);
        f = (m - i) / i1;
        break label163;
        label310:
        j = 0;
        break label177;
        paramInt1 = paramInt4 - paramInt2;
        localView.layout(i, paramInt1 - bottomMargin - localView.getMeasuredHeight(), i1 + i, paramInt1 - bottomMargin);
        break label237;
        int i3 = paramInt4 - paramInt2;
        int k = (i3 - i2) / 2;
        if (k < topMargin) {
          paramInt1 = topMargin;
        }
        for (;;)
        {
          localView.layout(i, paramInt1, i1 + i, i2 + paramInt1);
          break;
          paramInt1 = k;
          if (k + i2 > i3 - bottomMargin) {
            paramInt1 = i3 - bottomMargin - i2;
          }
        }
      }
    }
    mInLayout = false;
    mFirstLayout = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int n = 300;
    int m = 0;
    int i3 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt2);
    int j;
    if (i3 == 1073741824)
    {
      j = k;
      if (i2 == 1073741824) {}
    }
    else if (isInEditMode())
    {
      i = k;
      if (i3 != Integer.MIN_VALUE)
      {
        i = k;
        if (i3 == 0) {
          i = 300;
        }
      }
      j = i;
      if (i2 == Integer.MIN_VALUE) {
        break label474;
      }
      j = i;
      if (i2 != 0) {
        break label474;
      }
      j = i;
    }
    label143:
    label219:
    label297:
    label316:
    label430:
    label473:
    label474:
    for (int i = n;; i = i1)
    {
      setMeasuredDimension(j, i);
      View localView;
      LayoutParams localLayoutParams;
      if ((mLastInsets != null) && (ViewCompat.getFitsSystemWindows(this)))
      {
        k = 1;
        n = ViewCompat.getLayoutDirection(this);
        i1 = getChildCount();
        if (m >= i1) {
          break label473;
        }
        localView = getChildAt(m);
        if (localView.getVisibility() != 8)
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (k != 0)
          {
            i2 = GravityCompat.getAbsoluteGravity(gravity, n);
            if (!ViewCompat.getFitsSystemWindows(localView)) {
              break label297;
            }
            IMPL.dispatchChildInsets(localView, mLastInsets, i2);
          }
          if (!isContentView(localView)) {
            break label316;
          }
          localView.measure(View.MeasureSpec.makeMeasureSpec(j - leftMargin - rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i - topMargin - bottomMargin, 1073741824));
        }
      }
      for (;;)
      {
        m += 1;
        break label143;
        throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
        k = 0;
        break;
        IMPL.applyMarginInsets(localLayoutParams, mLastInsets, i2);
        break label219;
        if (!isDrawerView(localView)) {
          break label430;
        }
        i2 = getDrawerViewAbsoluteGravity(localView) & 0x7;
        if ((i2 & 0x0) != 0) {
          throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(i2) + " but this DrawerLayout already has a drawer view along that edge");
        }
        localView.measure(getChildMeasureSpec(paramInt1, mMinDrawerMargin + leftMargin + rightMargin, width), getChildMeasureSpec(paramInt2, topMargin + bottomMargin, height));
      }
      throw new IllegalStateException("Child " + localView + " at index " + m + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
      return;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (openDrawerGravity != 0)
    {
      View localView = findDrawerWithGravity(openDrawerGravity);
      if (localView != null) {
        openDrawer(localView);
      }
    }
    setDrawerLockMode(lockModeLeft, 3);
    setDrawerLockMode(lockModeRight, 5);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    View localView = findOpenDrawer();
    if (localView != null) {
      openDrawerGravity = getLayoutParamsgravity;
    }
    lockModeLeft = mLockModeLeft;
    lockModeRight = mLockModeRight;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    mLeftDragger.processTouchEvent(paramMotionEvent);
    mRightDragger.processTouchEvent(paramMotionEvent);
    float f1;
    float f2;
    boolean bool;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    case 2: 
    default: 
      return true;
    case 0: 
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      mInitialMotionX = f1;
      mInitialMotionY = f2;
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      return true;
    case 1: 
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      paramMotionEvent = mLeftDragger.findTopChildUnder((int)f2, (int)f1);
      if ((paramMotionEvent != null) && (isContentView(paramMotionEvent)))
      {
        f2 -= mInitialMotionX;
        f1 -= mInitialMotionY;
        int i = mLeftDragger.mTouchSlop;
        if (f2 * f2 + f1 * f1 < i * i)
        {
          paramMotionEvent = findOpenDrawer();
          if (paramMotionEvent != null) {
            if (getDrawerLockMode(paramMotionEvent) == 2) {
              bool = true;
            }
          }
        }
      }
      break;
    }
    for (;;)
    {
      closeDrawers(bool);
      mDisallowInterceptRequested = false;
      return true;
      bool = false;
      continue;
      closeDrawers(true);
      mDisallowInterceptRequested = false;
      mChildrenCanceledTouch = false;
      return true;
      bool = true;
    }
  }
  
  public final void openDrawer(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView == null) {
      throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(paramInt));
    }
    openDrawer(localView);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    mDisallowInterceptRequested = paramBoolean;
    if (paramBoolean) {
      closeDrawers(true);
    }
  }
  
  public void requestLayout()
  {
    if (!mInLayout) {
      super.requestLayout();
    }
  }
  
  public void setChildInsets(Object paramObject, boolean paramBoolean)
  {
    mLastInsets = paramObject;
    mDrawStatusBarBackground = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      setWillNotDraw(paramBoolean);
      requestLayout();
      return;
    }
  }
  
  public void setDrawerListener(DrawerListener paramDrawerListener)
  {
    mListener = paramDrawerListener;
  }
  
  public void setDrawerLockMode(int paramInt)
  {
    setDrawerLockMode(paramInt, 3);
    setDrawerLockMode(paramInt, 5);
  }
  
  public void setDrawerLockMode(int paramInt1, int paramInt2)
  {
    paramInt2 = GravityCompat.getAbsoluteGravity(paramInt2, ViewCompat.getLayoutDirection(this));
    Object localObject;
    if (paramInt2 == 3)
    {
      mLockModeLeft = paramInt1;
      if (paramInt1 != 0)
      {
        if (paramInt2 != 3) {
          break label74;
        }
        localObject = mLeftDragger;
        label33:
        ((ViewDragHelper)localObject).cancel();
      }
      switch (paramInt1)
      {
      }
    }
    label74:
    do
    {
      do
      {
        return;
        if (paramInt2 != 5) {
          break;
        }
        mLockModeRight = paramInt1;
        break;
        localObject = mRightDragger;
        break label33;
        localObject = findDrawerWithGravity(paramInt2);
      } while (localObject == null);
      openDrawer((View)localObject);
      return;
      localObject = findDrawerWithGravity(paramInt2);
    } while (localObject == null);
    closeDrawer((View)localObject);
  }
  
  public void setDrawerLockMode(int paramInt, View paramView)
  {
    if (!isDrawerView(paramView)) {
      throw new IllegalArgumentException("View " + paramView + " is not a drawer with appropriate layout_gravity");
    }
    setDrawerLockMode(paramInt, getLayoutParamsgravity);
  }
  
  public void setDrawerShadow(int paramInt1, int paramInt2)
  {
    setDrawerShadow(getResources().getDrawable(paramInt1), paramInt2);
  }
  
  public void setDrawerShadow(Drawable paramDrawable, int paramInt)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if ((paramInt & 0x3) == 3)
    {
      mShadowLeft = paramDrawable;
      invalidate();
    }
    if ((paramInt & 0x5) == 5)
    {
      mShadowRight = paramDrawable;
      invalidate();
    }
  }
  
  public void setDrawerTitle(int paramInt, CharSequence paramCharSequence)
  {
    paramInt = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (paramInt == 3) {
      mTitleLeft = paramCharSequence;
    }
    while (paramInt != 5) {
      return;
    }
    mTitleRight = paramCharSequence;
  }
  
  final void setDrawerViewOffset(View paramView, float paramFloat)
  {
    paramView = (LayoutParams)paramView.getLayoutParams();
    if (paramFloat == onScreen) {}
    do
    {
      return;
      onScreen = paramFloat;
    } while (mListener == null);
    mListener.onDrawerSlide$5359e7dd(paramFloat);
  }
  
  public void setScrimColor(int paramInt)
  {
    mScrimColor = paramInt;
    invalidate();
  }
  
  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = ContextCompat.getDrawable(getContext(), paramInt);; localDrawable = null)
    {
      mStatusBarBackground = localDrawable;
      return;
    }
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    mStatusBarBackground = paramDrawable;
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    mStatusBarBackground = new ColorDrawable(paramInt);
  }
  
  final void updateChildrenImportantForAccessibility(View paramView, boolean paramBoolean)
  {
    int j = getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = getChildAt(i);
      if (((!paramBoolean) && (!isDrawerView(localView))) || ((paramBoolean) && (localView == paramView))) {
        ViewCompat.setImportantForAccessibility(localView, 1);
      }
      for (;;)
      {
        i += 1;
        break;
        ViewCompat.setImportantForAccessibility(localView, 4);
      }
    }
  }
  
  final class AccessibilityDelegate
    extends AccessibilityDelegateCompat
  {
    private final Rect mTmpRect = new Rect();
    
    AccessibilityDelegate() {}
    
    private static void addChildrenForAccessibility(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat, ViewGroup paramViewGroup)
    {
      int j = paramViewGroup.getChildCount();
      int i = 0;
      while (i < j)
      {
        View localView = paramViewGroup.getChildAt(i);
        if (DrawerLayout.access$400(localView)) {
          paramAccessibilityNodeInfoCompat.addChild(localView);
        }
        i += 1;
      }
    }
    
    private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat1, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat2)
    {
      Rect localRect = mTmpRect;
      paramAccessibilityNodeInfoCompat2.getBoundsInParent(localRect);
      paramAccessibilityNodeInfoCompat1.setBoundsInParent(localRect);
      paramAccessibilityNodeInfoCompat2.getBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat1.setBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat1.setVisibleToUser(paramAccessibilityNodeInfoCompat2.isVisibleToUser());
      paramAccessibilityNodeInfoCompat1.setPackageName(paramAccessibilityNodeInfoCompat2.getPackageName());
      paramAccessibilityNodeInfoCompat1.setClassName(paramAccessibilityNodeInfoCompat2.getClassName());
      paramAccessibilityNodeInfoCompat1.setContentDescription(paramAccessibilityNodeInfoCompat2.getContentDescription());
      paramAccessibilityNodeInfoCompat1.setEnabled(paramAccessibilityNodeInfoCompat2.isEnabled());
      paramAccessibilityNodeInfoCompat1.setClickable(paramAccessibilityNodeInfoCompat2.isClickable());
      paramAccessibilityNodeInfoCompat1.setFocusable(paramAccessibilityNodeInfoCompat2.isFocusable());
      paramAccessibilityNodeInfoCompat1.setFocused(paramAccessibilityNodeInfoCompat2.isFocused());
      paramAccessibilityNodeInfoCompat1.setAccessibilityFocused(paramAccessibilityNodeInfoCompat2.isAccessibilityFocused());
      paramAccessibilityNodeInfoCompat1.setSelected(paramAccessibilityNodeInfoCompat2.isSelected());
      paramAccessibilityNodeInfoCompat1.setLongClickable(paramAccessibilityNodeInfoCompat2.isLongClickable());
      paramAccessibilityNodeInfoCompat1.addAction(paramAccessibilityNodeInfoCompat2.getActions());
    }
    
    public final boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramAccessibilityEvent = paramAccessibilityEvent.getText();
        paramView = DrawerLayout.this.findVisibleDrawer();
        int i;
        if (paramView != null)
        {
          i = getDrawerViewAbsoluteGravity(paramView);
          paramView = DrawerLayout.this;
          i = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(paramView));
          if (i != 3) {
            break label73;
          }
          paramView = mTitleLeft;
        }
        for (;;)
        {
          if (paramView != null) {
            paramAccessibilityEvent.add(paramView);
          }
          return true;
          label73:
          if (i == 5) {
            paramView = mTitleRight;
          } else {
            paramView = null;
          }
        }
      }
      return super.dispatchPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
    }
    
    public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
    }
    
    public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      if (DrawerLayout.CAN_HIDE_DESCENDANTS) {
        super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      }
      for (;;)
      {
        paramAccessibilityNodeInfoCompat.setClassName(DrawerLayout.class.getName());
        return;
        Object localObject1 = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
        super.onInitializeAccessibilityNodeInfo(paramView, (AccessibilityNodeInfoCompat)localObject1);
        paramAccessibilityNodeInfoCompat.setSource(paramView);
        Object localObject2 = ViewCompat.getParentForAccessibility(paramView);
        if ((localObject2 instanceof View)) {
          paramAccessibilityNodeInfoCompat.setParent((View)localObject2);
        }
        localObject2 = mTmpRect;
        ((AccessibilityNodeInfoCompat)localObject1).getBoundsInParent((Rect)localObject2);
        paramAccessibilityNodeInfoCompat.setBoundsInParent((Rect)localObject2);
        ((AccessibilityNodeInfoCompat)localObject1).getBoundsInScreen((Rect)localObject2);
        paramAccessibilityNodeInfoCompat.setBoundsInScreen((Rect)localObject2);
        paramAccessibilityNodeInfoCompat.setVisibleToUser(((AccessibilityNodeInfoCompat)localObject1).isVisibleToUser());
        paramAccessibilityNodeInfoCompat.setPackageName(((AccessibilityNodeInfoCompat)localObject1).getPackageName());
        paramAccessibilityNodeInfoCompat.setClassName(((AccessibilityNodeInfoCompat)localObject1).getClassName());
        paramAccessibilityNodeInfoCompat.setContentDescription(((AccessibilityNodeInfoCompat)localObject1).getContentDescription());
        paramAccessibilityNodeInfoCompat.setEnabled(((AccessibilityNodeInfoCompat)localObject1).isEnabled());
        paramAccessibilityNodeInfoCompat.setClickable(((AccessibilityNodeInfoCompat)localObject1).isClickable());
        paramAccessibilityNodeInfoCompat.setFocusable(((AccessibilityNodeInfoCompat)localObject1).isFocusable());
        paramAccessibilityNodeInfoCompat.setFocused(((AccessibilityNodeInfoCompat)localObject1).isFocused());
        paramAccessibilityNodeInfoCompat.setAccessibilityFocused(((AccessibilityNodeInfoCompat)localObject1).isAccessibilityFocused());
        paramAccessibilityNodeInfoCompat.setSelected(((AccessibilityNodeInfoCompat)localObject1).isSelected());
        paramAccessibilityNodeInfoCompat.setLongClickable(((AccessibilityNodeInfoCompat)localObject1).isLongClickable());
        paramAccessibilityNodeInfoCompat.addAction(((AccessibilityNodeInfoCompat)localObject1).getActions());
        ((AccessibilityNodeInfoCompat)localObject1).recycle();
        paramView = (ViewGroup)paramView;
        int j = paramView.getChildCount();
        int i = 0;
        while (i < j)
        {
          localObject1 = paramView.getChildAt(i);
          if (DrawerLayout.access$400((View)localObject1)) {
            paramAccessibilityNodeInfoCompat.addChild((View)localObject1);
          }
          i += 1;
        }
      }
    }
    
    public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if ((DrawerLayout.CAN_HIDE_DESCENDANTS) || (DrawerLayout.access$400(paramView))) {
        return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
      }
      return false;
    }
  }
  
  final class ChildAccessibilityDelegate
    extends AccessibilityDelegateCompat
  {
    ChildAccessibilityDelegate() {}
    
    public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      if (!DrawerLayout.access$400(paramView)) {
        paramAccessibilityNodeInfoCompat.setParent(null);
      }
    }
  }
  
  static abstract interface DrawerLayoutCompatImpl
  {
    public abstract void applyMarginInsets(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt);
    
    public abstract void configureApplyInsets(View paramView);
    
    public abstract void dispatchChildInsets(View paramView, Object paramObject, int paramInt);
    
    public abstract int getTopInset(Object paramObject);
  }
  
  static final class DrawerLayoutCompatImplApi21
    implements DrawerLayout.DrawerLayoutCompatImpl
  {
    public final void applyMarginInsets(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt)
    {
      DrawerLayoutCompatApi21.applyMarginInsets(paramMarginLayoutParams, paramObject, paramInt);
    }
    
    public final void configureApplyInsets(View paramView)
    {
      DrawerLayoutCompatApi21.configureApplyInsets(paramView);
    }
    
    public final void dispatchChildInsets(View paramView, Object paramObject, int paramInt)
    {
      DrawerLayoutCompatApi21.dispatchChildInsets(paramView, paramObject, paramInt);
    }
    
    public final int getTopInset(Object paramObject)
    {
      return DrawerLayoutCompatApi21.getTopInset(paramObject);
    }
  }
  
  static final class DrawerLayoutCompatImplBase
    implements DrawerLayout.DrawerLayoutCompatImpl
  {
    public final void applyMarginInsets(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt) {}
    
    public final void configureApplyInsets(View paramView) {}
    
    public final void dispatchChildInsets(View paramView, Object paramObject, int paramInt) {}
    
    public final int getTopInset(Object paramObject)
    {
      return 0;
    }
  }
  
  public static abstract interface DrawerListener
  {
    public abstract void onDrawerClosed$3c7ec8c3();
    
    public abstract void onDrawerOpened$3c7ec8c3();
    
    public abstract void onDrawerSlide$5359e7dd(float paramFloat);
    
    public abstract void onDrawerStateChanged$13462e();
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface EdgeGravity {}
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    public int gravity = 0;
    boolean isPeeking;
    boolean knownOpen;
    float onScreen;
    
    public LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    private LayoutParams(int paramInt1, int paramInt2, int paramInt3)
    {
      this(paramInt1, paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, DrawerLayout.LAYOUT_ATTRS);
      gravity = paramContext.getInt(0, 0);
      paramContext.recycle();
    }
    
    public LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      gravity = gravity;
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface LockMode {}
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      private static DrawerLayout.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new DrawerLayout.SavedState(paramAnonymousParcel);
      }
      
      private static DrawerLayout.SavedState[] newArray(int paramAnonymousInt)
      {
        return new DrawerLayout.SavedState[paramAnonymousInt];
      }
    };
    int lockModeLeft = 0;
    int lockModeRight = 0;
    int openDrawerGravity = 0;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      openDrawerGravity = paramParcel.readInt();
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(openDrawerGravity);
    }
  }
  
  public static abstract class SimpleDrawerListener
    implements DrawerLayout.DrawerListener
  {
    public final void onDrawerClosed$3c7ec8c3() {}
    
    public final void onDrawerOpened$3c7ec8c3() {}
    
    public final void onDrawerSlide$5359e7dd(float paramFloat) {}
    
    public final void onDrawerStateChanged$13462e() {}
  }
  
  @Retention(RetentionPolicy.SOURCE)
  @l
  static @interface State {}
  
  final class ViewDragCallback
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
    
    public ViewDragCallback(int paramInt)
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
        localObject1 = findDrawerWithGravity(3);
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
        if ((localObject1 != null) && (((i != 0) && (((View)localObject1).getLeft() < j)) || ((i == 0) && (((View)localObject1).getLeft() > j) && (getDrawerLockMode((View)localObject1) == 0))))
        {
          Object localObject2 = (DrawerLayout.LayoutParams)((View)localObject1).getLayoutParams();
          mDragger.smoothSlideViewTo((View)localObject1, j, ((View)localObject1).getTop());
          isPeeking = true;
          invalidate();
          closeOtherDrawer();
          localObject1 = DrawerLayout.this;
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
                localObject1 = findDrawerWithGravity(5);
                j = getWidth();
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
      if (checkDrawerViewAbsoluteGravity(paramView, 3)) {
        return Math.max(-paramView.getWidth(), Math.min(paramInt, 0));
      }
      int i = getWidth();
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
      View localView = findDrawerWithGravity(i);
      if (localView != null) {
        closeDrawer(localView);
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
      for (View localView = findDrawerWithGravity(3);; localView = findDrawerWithGravity(5))
      {
        if ((localView != null) && (getDrawerLockMode(localView) == 0)) {
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
      postDelayed(mPeekRunnable, 160L);
    }
    
    public final void onViewCaptured$5359dc9a(View paramView)
    {
      getLayoutParamsisPeeking = false;
      closeOtherDrawer();
    }
    
    public final void onViewDragStateChanged(int paramInt)
    {
      DrawerLayout localDrawerLayout = DrawerLayout.this;
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
      if (checkDrawerViewAbsoluteGravity(paramView, 3))
      {
        f = (i + paramInt) / i;
        setDrawerViewOffset(paramView, f);
        if (f != 0.0F) {
          break label76;
        }
      }
      label76:
      for (paramInt = 4;; paramInt = 0)
      {
        paramView.setVisibility(paramInt);
        invalidate();
        return;
        f = (getWidth() - paramInt) / i;
        break;
      }
    }
    
    public final void onViewReleased$17e2ac03(View paramView, float paramFloat)
    {
      float f = DrawerLayout.getDrawerViewOffset(paramView);
      int k = paramView.getWidth();
      int i;
      if (checkDrawerViewAbsoluteGravity(paramView, 3)) {
        if ((paramFloat > 0.0F) || ((paramFloat == 0.0F) && (f > 0.5F))) {
          i = 0;
        }
      }
      for (;;)
      {
        mDragger.settleCapturedViewAt(i, paramView.getTop());
        invalidate();
        return;
        i = -k;
        continue;
        int j = getWidth();
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
      removeCallbacks(mPeekRunnable);
    }
    
    public final boolean tryCaptureView$5359dc96(View paramView)
    {
      return (DrawerLayout.isDrawerView(paramView)) && (checkDrawerViewAbsoluteGravity(paramView, mAbsGravity)) && (getDrawerLockMode(paramView) == 0);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
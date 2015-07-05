package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoImpl;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout
  extends ViewGroup
{
  private static final int DEFAULT_FADE_COLOR = -858993460;
  private static final int DEFAULT_OVERHANG_SIZE = 32;
  static final SlidingPanelLayoutImpl IMPL = new SlidingPanelLayoutImplBase();
  private static final int MIN_FLING_VELOCITY = 400;
  private static final String TAG = "SlidingPaneLayout";
  private boolean mCanSlide;
  private int mCoveredFadeColor;
  private final ViewDragHelper mDragHelper;
  private boolean mFirstLayout = true;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private boolean mIsUnableToDrag;
  private final int mOverhangSize;
  private PanelSlideListener mPanelSlideListener;
  private int mParallaxBy;
  private float mParallaxOffset;
  private final ArrayList<DisableLayerRunnable> mPostedRunnables = new ArrayList();
  private boolean mPreservedOpenState;
  private Drawable mShadowDrawableLeft;
  private Drawable mShadowDrawableRight;
  private float mSlideOffset;
  private int mSlideRange;
  private View mSlideableView;
  private int mSliderFadeColor = -858993460;
  private final Rect mTmpRect = new Rect();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17)
    {
      IMPL = new SlidingPanelLayoutImplJBMR1();
      return;
    }
    if (i >= 16)
    {
      IMPL = new SlidingPanelLayoutImplJB();
      return;
    }
  }
  
  public SlidingPaneLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f = getResourcesgetDisplayMetricsdensity;
    mOverhangSize = ((int)(32.0F * f + 0.5F));
    ViewConfiguration.get(paramContext);
    setWillNotDraw(false);
    ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
    ViewCompat.setImportantForAccessibility(this, 1);
    mDragHelper = ViewDragHelper.create(this, 0.5F, new DragHelperCallback((byte)0));
    mDragHelper.mMinVelocity = (f * 400.0F);
  }
  
  private boolean canScroll$7871dc10(View paramView, int paramInt1, int paramInt2, int paramInt3)
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
        if ((paramInt2 + j >= localView.getLeft()) && (paramInt2 + j < localView.getRight()) && (paramInt3 + k >= localView.getTop()) && (paramInt3 + k < localView.getBottom()) && (canScroll$7871dc10(localView, paramInt1, paramInt2 + j - localView.getLeft(), paramInt3 + k - localView.getTop()))) {
          return true;
        }
        i -= 1;
      }
    }
    if (isLayoutRtlSupport()) {}
    while (ViewCompat.canScrollHorizontally(paramView, paramInt1))
    {
      return true;
      paramInt1 = -paramInt1;
    }
    return false;
  }
  
  @Deprecated
  private boolean canSlide()
  {
    return mCanSlide;
  }
  
  private boolean closePane()
  {
    return closePane$5359dc96$134632();
  }
  
  private boolean closePane$5359dc96$134632()
  {
    boolean bool = false;
    if ((mFirstLayout) || (smoothSlideTo$254957c(0.0F)))
    {
      mPreservedOpenState = false;
      bool = true;
    }
    return bool;
  }
  
  private void dimChildView(View paramView, float paramFloat, int paramInt)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      i = (int)(((0xFF000000 & paramInt) >>> 24) * paramFloat);
      if (dimPaint == null) {
        dimPaint = new Paint();
      }
      dimPaint.setColorFilter(new PorterDuffColorFilter(i << 24 | 0xFFFFFF & paramInt, PorterDuff.Mode.SRC_OVER));
      if (ViewCompat.getLayerType(paramView) != 2) {
        ViewCompat.setLayerType(paramView, 2, dimPaint);
      }
      invalidateChildRegion(paramView);
    }
    while (ViewCompat.getLayerType(paramView) == 0)
    {
      int i;
      return;
    }
    if (dimPaint != null) {
      dimPaint.setColorFilter(null);
    }
    paramView = new DisableLayerRunnable(paramView);
    mPostedRunnables.add(paramView);
    ViewCompat.postOnAnimation(this, paramView);
  }
  
  private void dispatchOnPanelClosed$3c7ec8c3()
  {
    sendAccessibilityEvent(32);
  }
  
  private void dispatchOnPanelOpened$3c7ec8c3()
  {
    sendAccessibilityEvent(32);
  }
  
  private static void dispatchOnPanelSlide$3c7ec8c3() {}
  
  private void invalidateChildRegion(View paramView)
  {
    IMPL.invalidateChildRegion(this, paramView);
  }
  
  private boolean isLayoutRtlSupport()
  {
    return ViewCompat.getLayoutDirection(this) == 1;
  }
  
  private boolean isOpen()
  {
    return (!mCanSlide) || (mSlideOffset == 1.0F);
  }
  
  private boolean isSlideable()
  {
    return mCanSlide;
  }
  
  private void onPanelDragged(int paramInt)
  {
    if (mSlideableView == null)
    {
      mSlideOffset = 0.0F;
      return;
    }
    boolean bool = isLayoutRtlSupport();
    LayoutParams localLayoutParams = (LayoutParams)mSlideableView.getLayoutParams();
    int j = mSlideableView.getWidth();
    int i = paramInt;
    if (bool) {
      i = getWidth() - paramInt - j;
    }
    if (bool)
    {
      paramInt = getPaddingRight();
      label65:
      if (!bool) {
        break label140;
      }
    }
    label140:
    for (j = rightMargin;; j = leftMargin)
    {
      mSlideOffset = ((i - (j + paramInt)) / mSlideRange);
      if (mParallaxBy != 0) {
        parallaxOtherViews(mSlideOffset);
      }
      if (!dimWhenOffset) {
        break;
      }
      dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
      return;
      paramInt = getPaddingLeft();
      break label65;
    }
  }
  
  private boolean openPane()
  {
    if ((mFirstLayout) || (smoothSlideTo$254957c(1.0F)))
    {
      mPreservedOpenState = true;
      return true;
    }
    return false;
  }
  
  private boolean openPane$5359dc96$134632()
  {
    if ((mFirstLayout) || (smoothSlideTo$254957c(1.0F)))
    {
      mPreservedOpenState = true;
      return true;
    }
    return false;
  }
  
  private void parallaxOtherViews(float paramFloat)
  {
    boolean bool = isLayoutRtlSupport();
    Object localObject = (LayoutParams)mSlideableView.getLayoutParams();
    int i;
    label43:
    int j;
    if (dimWhenOffset) {
      if (bool)
      {
        i = rightMargin;
        if (i > 0) {
          break label177;
        }
        i = 1;
        int n = getChildCount();
        j = 0;
        label52:
        if (j >= n) {
          return;
        }
        localObject = getChildAt(j);
        if (localObject != mSlideableView)
        {
          int k = (int)((1.0F - mParallaxOffset) * mParallaxBy);
          mParallaxOffset = paramFloat;
          int m = k - (int)((1.0F - paramFloat) * mParallaxBy);
          k = m;
          if (bool) {
            k = -m;
          }
          ((View)localObject).offsetLeftAndRight(k);
          if (i != 0) {
            if (!bool) {
              break label182;
            }
          }
        }
      }
    }
    label177:
    label182:
    for (float f = mParallaxOffset - 1.0F;; f = 1.0F - mParallaxOffset)
    {
      dimChildView((View)localObject, f, mCoveredFadeColor);
      j += 1;
      break label52;
      i = leftMargin;
      break;
      i = 0;
      break label43;
    }
  }
  
  @Deprecated
  private void smoothSlideClosed()
  {
    closePane$5359dc96$134632();
  }
  
  @Deprecated
  private void smoothSlideOpen()
  {
    openPane();
  }
  
  private boolean smoothSlideTo$254957c(float paramFloat)
  {
    if (!mCanSlide) {
      return false;
    }
    boolean bool = isLayoutRtlSupport();
    LayoutParams localLayoutParams = (LayoutParams)mSlideableView.getLayoutParams();
    int j;
    int k;
    if (bool)
    {
      i = getPaddingRight();
      j = rightMargin;
      k = mSlideableView.getWidth();
    }
    for (int i = (int)(getWidth() - (j + i + mSlideRange * paramFloat + k)); mDragHelper.smoothSlideViewTo(mSlideableView, i, mSlideableView.getTop()); i = (int)(leftMargin + i + mSlideRange * paramFloat))
    {
      setAllChildrenVisible();
      ViewCompat.postInvalidateOnAnimation(this);
      return true;
      i = getPaddingLeft();
    }
    return false;
  }
  
  private static boolean viewIsOpaque(View paramView)
  {
    if (ViewCompat.isOpaque(paramView)) {}
    do
    {
      return true;
      if (Build.VERSION.SDK_INT >= 18) {
        return false;
      }
      paramView = paramView.getBackground();
      if (paramView == null) {
        break;
      }
    } while (paramView.getOpacity() == -1);
    return false;
    return false;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if (mDragHelper.continueSettling$138603())
    {
      if (!mCanSlide) {
        mDragHelper.abort();
      }
    }
    else {
      return;
    }
    ViewCompat.postInvalidateOnAnimation(this);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Drawable localDrawable;
    if (isLayoutRtlSupport())
    {
      localDrawable = mShadowDrawableRight;
      if (getChildCount() <= 1) {
        break label53;
      }
    }
    label53:
    for (View localView = getChildAt(1);; localView = null)
    {
      if ((localView != null) && (localDrawable != null)) {
        break label59;
      }
      return;
      localDrawable = mShadowDrawableLeft;
      break;
    }
    label59:
    int k = localView.getTop();
    int m = localView.getBottom();
    int n = localDrawable.getIntrinsicWidth();
    int j;
    int i;
    if (isLayoutRtlSupport())
    {
      j = localView.getRight();
      i = j + n;
    }
    for (;;)
    {
      localDrawable.setBounds(j, k, i, m);
      localDrawable.draw(paramCanvas);
      return;
      i = localView.getLeft();
      j = i - n;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    LayoutParams localLayoutParams = (LayoutParams)paramView.getLayoutParams();
    int i = paramCanvas.save(2);
    if ((mCanSlide) && (!slideable) && (mSlideableView != null))
    {
      paramCanvas.getClipBounds(mTmpRect);
      if (!isLayoutRtlSupport()) {
        break label168;
      }
      mTmpRect.left = Math.max(mTmpRect.left, mSlideableView.getRight());
    }
    boolean bool;
    for (;;)
    {
      paramCanvas.clipRect(mTmpRect);
      if (Build.VERSION.SDK_INT >= 11) {
        break label216;
      }
      if ((!dimWhenOffset) || (mSlideOffset <= 0.0F)) {
        break label228;
      }
      if (!paramView.isDrawingCacheEnabled()) {
        paramView.setDrawingCacheEnabled(true);
      }
      Bitmap localBitmap = paramView.getDrawingCache();
      if (localBitmap == null) {
        break;
      }
      paramCanvas.drawBitmap(localBitmap, paramView.getLeft(), paramView.getTop(), dimPaint);
      bool = false;
      paramCanvas.restoreToCount(i);
      return bool;
      label168:
      mTmpRect.right = Math.min(mTmpRect.right, mSlideableView.getLeft());
    }
    new StringBuilder("drawChild: child view ").append(paramView).append(" returned null drawing cache");
    for (;;)
    {
      label216:
      bool = super.drawChild(paramCanvas, paramView, paramLong);
      break;
      label228:
      if (paramView.isDrawingCacheEnabled()) {
        paramView.setDrawingCacheEnabled(false);
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new LayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  public int getCoveredFadeColor()
  {
    return mCoveredFadeColor;
  }
  
  public int getParallaxDistance()
  {
    return mParallaxBy;
  }
  
  public int getSliderFadeColor()
  {
    return mSliderFadeColor;
  }
  
  final boolean isDimmed(View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView = (LayoutParams)paramView.getLayoutParams();
    return (mCanSlide) && (dimWhenOffset) && (mSlideOffset > 0.0F);
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
    int j = mPostedRunnables.size();
    int i = 0;
    while (i < j)
    {
      ((DisableLayerRunnable)mPostedRunnables.get(i)).run();
      i += 1;
    }
    mPostedRunnables.clear();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if ((!mCanSlide) && (i == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null) {
        if (ViewDragHelper.isViewUnder(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
          break label104;
        }
      }
    }
    label104:
    for (boolean bool1 = true;; bool1 = false)
    {
      mPreservedOpenState = bool1;
      if ((mCanSlide) && ((!mIsUnableToDrag) || (i == 0))) {
        break;
      }
      mDragHelper.cancel();
      bool1 = super.onInterceptTouchEvent(paramMotionEvent);
      return bool1;
    }
    if ((i == 3) || (i == 1))
    {
      mDragHelper.cancel();
      return false;
    }
    switch (i)
    {
    }
    label160:
    float f1;
    float f2;
    do
    {
      for (i = 0;; i = 1)
      {
        if (!mDragHelper.shouldInterceptTouchEvent(paramMotionEvent))
        {
          bool1 = bool2;
          if (i == 0) {
            break;
          }
        }
        return true;
        mIsUnableToDrag = false;
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        mInitialMotionX = f1;
        mInitialMotionY = f2;
        if ((!ViewDragHelper.isViewUnder(mSlideableView, (int)f1, (int)f2)) || (!isDimmed(mSlideableView))) {
          break label160;
        }
      }
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      f2 = Math.abs(f2 - mInitialMotionX);
      f1 = Math.abs(f1 - mInitialMotionY);
    } while ((f2 <= mDragHelper.mTouchSlop) || (f1 <= f2));
    mDragHelper.cancel();
    mIsUnableToDrag = true;
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = isLayoutRtlSupport();
    label35:
    label46:
    int m;
    float f;
    label82:
    label93:
    LayoutParams localLayoutParams;
    int i1;
    int j;
    int i;
    if (bool)
    {
      mDragHelper.mTrackingEdges = 2;
      int k = paramInt3 - paramInt1;
      if (!bool) {
        break label352;
      }
      paramInt1 = getPaddingRight();
      if (!bool) {
        break label360;
      }
      paramInt3 = getPaddingLeft();
      int n = getPaddingTop();
      m = getChildCount();
      if (mFirstLayout)
      {
        if ((!mCanSlide) || (!mPreservedOpenState)) {
          break label369;
        }
        f = 1.0F;
        mSlideOffset = f;
      }
      paramInt4 = 0;
      paramInt2 = paramInt1;
      if (paramInt4 >= m) {
        break label442;
      }
      View localView = getChildAt(paramInt4);
      if (localView.getVisibility() == 8) {
        break label551;
      }
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      i1 = localView.getMeasuredWidth();
      j = 0;
      if (!slideable) {
        break label390;
      }
      i = leftMargin;
      int i2 = rightMargin;
      i2 = Math.min(paramInt1, k - paramInt3 - mOverhangSize) - paramInt2 - (i + i2);
      mSlideRange = i2;
      if (!bool) {
        break label375;
      }
      i = rightMargin;
      label202:
      if (paramInt2 + i + i2 + i1 / 2 <= k - paramInt3) {
        break label385;
      }
      paramBoolean = true;
      label224:
      dimWhenOffset = paramBoolean;
      i2 = (int)(i2 * mSlideOffset);
      paramInt2 += i + i2;
      mSlideOffset = (i2 / mSlideRange);
      i = j;
      if (!bool) {
        break label426;
      }
      j = k - paramInt2 + i;
      i = j - i1;
      label287:
      localView.layout(i, n, j, localView.getMeasuredHeight() + n);
      i = localView.getWidth() + paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i;
    }
    for (;;)
    {
      i = paramInt4 + 1;
      paramInt4 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = paramInt4;
      paramInt4 = i;
      break label93;
      mDragHelper.mTrackingEdges = 1;
      break;
      label352:
      paramInt1 = getPaddingLeft();
      break label35;
      label360:
      paramInt3 = getPaddingRight();
      break label46;
      label369:
      f = 0.0F;
      break label82;
      label375:
      i = leftMargin;
      break label202;
      label385:
      paramBoolean = false;
      break label224;
      label390:
      if ((mCanSlide) && (mParallaxBy != 0)) {}
      for (paramInt2 = (int)((1.0F - mSlideOffset) * mParallaxBy);; paramInt2 = 0)
      {
        i = paramInt2;
        paramInt2 = paramInt1;
        break;
        label426:
        i = paramInt2 - i;
        j = i + i1;
        break label287;
        label442:
        if (mFirstLayout)
        {
          if (!mCanSlide) {
            break label517;
          }
          if (mParallaxBy != 0) {
            parallaxOtherViews(mSlideOffset);
          }
          if (mSlideableView.getLayoutParams()).dimWhenOffset) {
            dimChildView(mSlideableView, mSlideOffset, mSliderFadeColor);
          }
        }
        for (;;)
        {
          updateObscuredViewsVisibility(mSlideableView);
          mFirstLayout = false;
          return;
          label517:
          paramInt1 = 0;
          while (paramInt1 < m)
          {
            dimChildView(getChildAt(paramInt1), 0.0F, mSliderFadeColor);
            paramInt1 += 1;
          }
        }
      }
      label551:
      i = paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = i;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int k = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    if (k != 1073741824) {
      if (isInEditMode())
      {
        if ((k == Integer.MIN_VALUE) || (k != 0)) {
          break label1069;
        }
        i = j;
        j = 300;
      }
    }
    for (;;)
    {
      label93:
      boolean bool1;
      int i2;
      int i3;
      int i1;
      float f1;
      label129:
      View localView;
      LayoutParams localLayoutParams;
      int m;
      switch (i)
      {
      default: 
        paramInt1 = 0;
        k = -1;
        bool1 = false;
        i2 = j - getPaddingLeft() - getPaddingRight();
        i3 = getChildCount();
        mSlideableView = null;
        i1 = 0;
        paramInt2 = i2;
        f1 = 0.0F;
        if (i1 < i3)
        {
          localView = getChildAt(i1);
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (localView.getVisibility() == 8)
          {
            dimWhenOffset = false;
            m = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = m;
          }
        }
        break;
      }
      for (;;)
      {
        i1 += 1;
        m = paramInt2;
        paramInt2 = paramInt1;
        paramInt1 = m;
        break label129;
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        if (j != 0) {
          break label1069;
        }
        if (isInEditMode())
        {
          if (j != 0) {
            break label1069;
          }
          paramInt2 = Integer.MIN_VALUE;
          j = i;
          paramInt1 = 300;
          i = paramInt2;
          break;
        }
        throw new IllegalStateException("Height must not be UNSPECIFIED");
        paramInt1 = paramInt1 - getPaddingTop() - getPaddingBottom();
        k = paramInt1;
        break label93;
        k = getPaddingTop();
        m = getPaddingBottom();
        paramInt2 = 0;
        k = paramInt1 - k - m;
        paramInt1 = paramInt2;
        break label93;
        float f2 = f1;
        if (weight > 0.0F)
        {
          f2 = f1 + weight;
          if (width == 0) {}
        }
        else
        {
          m = leftMargin + rightMargin;
          label364:
          int n;
          label384:
          int i4;
          if (width == -2)
          {
            m = View.MeasureSpec.makeMeasureSpec(i2 - m, Integer.MIN_VALUE);
            if (height != -2) {
              break label526;
            }
            n = View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE);
            localView.measure(m, n);
            n = localView.getMeasuredWidth();
            i4 = localView.getMeasuredHeight();
            m = paramInt1;
            if (i == Integer.MIN_VALUE)
            {
              m = paramInt1;
              if (i4 > paramInt1) {
                m = Math.min(i4, k);
              }
            }
            paramInt1 = paramInt2 - n;
            if (paramInt1 >= 0) {
              break label564;
            }
          }
          label526:
          label564:
          for (boolean bool2 = true;; bool2 = false)
          {
            slideable = bool2;
            if (slideable) {
              mSlideableView = localView;
            }
            f1 = f2;
            bool1 = bool2 | bool1;
            paramInt2 = m;
            break;
            if (width == -1)
            {
              m = View.MeasureSpec.makeMeasureSpec(i2 - m, 1073741824);
              break label364;
            }
            m = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
            break label364;
            if (height == -1)
            {
              n = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
              break label384;
            }
            n = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
            break label384;
          }
          if ((bool1) || (f1 > 0.0F))
          {
            i1 = i2 - mOverhangSize;
            m = 0;
            if (m < i3)
            {
              localView = getChildAt(m);
              if (localView.getVisibility() != 8)
              {
                localLayoutParams = (LayoutParams)localView.getLayoutParams();
                if (localView.getVisibility() != 8)
                {
                  if ((width != 0) || (weight <= 0.0F)) {
                    break label755;
                  }
                  i = 1;
                  label659:
                  if (i == 0) {
                    break label761;
                  }
                  n = 0;
                  label667:
                  if ((!bool1) || (localView == mSlideableView)) {
                    break label825;
                  }
                  if ((width < 0) && ((n > i1) || (weight > 0.0F)))
                  {
                    if (i == 0) {
                      break label809;
                    }
                    if (height != -2) {
                      break label771;
                    }
                    i = View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE);
                    label731:
                    localView.measure(View.MeasureSpec.makeMeasureSpec(i1, 1073741824), i);
                  }
                }
              }
              for (;;)
              {
                m += 1;
                break;
                label755:
                i = 0;
                break label659;
                label761:
                n = localView.getMeasuredWidth();
                break label667;
                label771:
                if (height == -1)
                {
                  i = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
                  break label731;
                }
                i = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                break label731;
                label809:
                i = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                break label731;
                label825:
                if (weight > 0.0F)
                {
                  if (width == 0) {
                    if (height == -2) {
                      i = View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE);
                    }
                  }
                  for (;;)
                  {
                    if (!bool1) {
                      break label971;
                    }
                    i4 = leftMargin;
                    i4 = i2 - (rightMargin + i4);
                    int i5 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                    if (n == i4) {
                      break;
                    }
                    localView.measure(i5, i);
                    break;
                    if (height == -1)
                    {
                      i = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
                    }
                    else
                    {
                      i = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
                      continue;
                      i = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                    }
                  }
                  label971:
                  i4 = Math.max(0, paramInt2);
                  localView.measure(View.MeasureSpec.makeMeasureSpec((int)(weight * i4 / f1) + n, 1073741824), i);
                }
              }
            }
          }
          setMeasuredDimension(j, getPaddingTop() + paramInt1 + getPaddingBottom());
          mCanSlide = bool1;
          if ((mDragHelper.mDragState != 0) && (!bool1)) {
            mDragHelper.abort();
          }
          return;
        }
        m = paramInt1;
        f1 = f2;
        paramInt1 = paramInt2;
        paramInt2 = m;
      }
      label1069:
      paramInt2 = j;
      j = i;
      i = paramInt2;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (isOpen) {
      openPane();
    }
    for (;;)
    {
      mPreservedOpenState = isOpen;
      return;
      closePane$5359dc96$134632();
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    boolean bool;
    if (mCanSlide) {
      if ((!mCanSlide) || (mSlideOffset == 1.0F)) {
        bool = true;
      }
    }
    for (;;)
    {
      isOpen = bool;
      return localSavedState;
      bool = false;
      continue;
      bool = mPreservedOpenState;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      mFirstLayout = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!mCanSlide) {
      return super.onTouchEvent(paramMotionEvent);
    }
    mDragHelper.processTouchEvent(paramMotionEvent);
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      mInitialMotionX = f1;
      mInitialMotionY = f2;
      continue;
      if (isDimmed(mSlideableView))
      {
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        float f3 = f1 - mInitialMotionX;
        float f4 = f2 - mInitialMotionY;
        int i = mDragHelper.mTouchSlop;
        if ((f3 * f3 + f4 * f4 < i * i) && (ViewDragHelper.isViewUnder(mSlideableView, (int)f1, (int)f2))) {
          closePane$5359dc96$134632();
        }
      }
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!mCanSlide)) {
      if (paramView1 != mSlideableView) {
        break label36;
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      mPreservedOpenState = bool;
      return;
    }
  }
  
  final void setAllChildrenVisible()
  {
    int j = getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 4) {
        localView.setVisibility(0);
      }
      i += 1;
    }
  }
  
  public void setCoveredFadeColor(int paramInt)
  {
    mCoveredFadeColor = paramInt;
  }
  
  public void setPanelSlideListener(PanelSlideListener paramPanelSlideListener)
  {
    mPanelSlideListener = paramPanelSlideListener;
  }
  
  public void setParallaxDistance(int paramInt)
  {
    mParallaxBy = paramInt;
    requestLayout();
  }
  
  @Deprecated
  public void setShadowDrawable(Drawable paramDrawable)
  {
    setShadowDrawableLeft(paramDrawable);
  }
  
  public void setShadowDrawableLeft(Drawable paramDrawable)
  {
    mShadowDrawableLeft = paramDrawable;
  }
  
  public void setShadowDrawableRight(Drawable paramDrawable)
  {
    mShadowDrawableRight = paramDrawable;
  }
  
  @Deprecated
  public void setShadowResource(int paramInt)
  {
    setShadowDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setShadowResourceLeft(int paramInt)
  {
    setShadowDrawableLeft(getResources().getDrawable(paramInt));
  }
  
  public void setShadowResourceRight(int paramInt)
  {
    setShadowDrawableRight(getResources().getDrawable(paramInt));
  }
  
  public void setSliderFadeColor(int paramInt)
  {
    mSliderFadeColor = paramInt;
  }
  
  final void updateObscuredViewsVisibility(View paramView)
  {
    boolean bool = isLayoutRtlSupport();
    int i;
    int j;
    label31:
    int k;
    label63:
    int i1;
    int n;
    int m;
    label92:
    int i2;
    label101:
    Object localObject;
    if (bool)
    {
      i = getWidth() - getPaddingRight();
      if (!bool) {
        break label244;
      }
      j = getPaddingLeft();
      int i4 = getPaddingTop();
      int i5 = getHeight();
      int i6 = getPaddingBottom();
      if (paramView == null) {
        break label303;
      }
      if (!ViewCompat.isOpaque(paramView)) {
        break label257;
      }
      k = 1;
      if (k == 0) {
        break label303;
      }
      i1 = paramView.getLeft();
      n = paramView.getRight();
      m = paramView.getTop();
      k = paramView.getBottom();
      int i7 = getChildCount();
      i2 = 0;
      if (i2 >= i7) {
        return;
      }
      localObject = getChildAt(i2);
      if (localObject == paramView) {
        return;
      }
      if (!bool) {
        break label318;
      }
      i3 = j;
      label130:
      int i8 = Math.max(i3, ((View)localObject).getLeft());
      int i9 = Math.max(i4, ((View)localObject).getTop());
      if (!bool) {
        break label324;
      }
      i3 = i;
      label162:
      i3 = Math.min(i3, ((View)localObject).getRight());
      int i10 = Math.min(i5 - i6, ((View)localObject).getBottom());
      if ((i8 < i1) || (i9 < m) || (i3 > n) || (i10 > k)) {
        break label330;
      }
    }
    label244:
    label257:
    label303:
    label318:
    label324:
    label330:
    for (int i3 = 4;; i3 = 0)
    {
      ((View)localObject).setVisibility(i3);
      i2 += 1;
      break label101;
      i = getPaddingLeft();
      break;
      j = getWidth() - getPaddingRight();
      break label31;
      if (Build.VERSION.SDK_INT < 18)
      {
        localObject = paramView.getBackground();
        if (localObject != null)
        {
          if (((Drawable)localObject).getOpacity() == -1)
          {
            k = 1;
            break label63;
          }
          k = 0;
          break label63;
        }
      }
      k = 0;
      break label63;
      k = 0;
      m = 0;
      n = 0;
      i1 = 0;
      break label92;
      i3 = i;
      break label130;
      i3 = j;
      break label162;
    }
  }
  
  final class AccessibilityDelegate
    extends AccessibilityDelegateCompat
  {
    private final Rect mTmpRect = new Rect();
    
    AccessibilityDelegate() {}
    
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
      int i = AccessibilityNodeInfoCompat.IMPL.getMovementGranularities(mInfo);
      AccessibilityNodeInfoCompat.IMPL.setMovementGranularities(mInfo, i);
    }
    
    private boolean filter(View paramView)
    {
      return isDimmed(paramView);
    }
    
    public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
    }
    
    public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
      super.onInitializeAccessibilityNodeInfo(paramView, localAccessibilityNodeInfoCompat);
      Rect localRect = mTmpRect;
      localAccessibilityNodeInfoCompat.getBoundsInParent(localRect);
      paramAccessibilityNodeInfoCompat.setBoundsInParent(localRect);
      localAccessibilityNodeInfoCompat.getBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat.setBoundsInScreen(localRect);
      paramAccessibilityNodeInfoCompat.setVisibleToUser(localAccessibilityNodeInfoCompat.isVisibleToUser());
      paramAccessibilityNodeInfoCompat.setPackageName(localAccessibilityNodeInfoCompat.getPackageName());
      paramAccessibilityNodeInfoCompat.setClassName(localAccessibilityNodeInfoCompat.getClassName());
      paramAccessibilityNodeInfoCompat.setContentDescription(localAccessibilityNodeInfoCompat.getContentDescription());
      paramAccessibilityNodeInfoCompat.setEnabled(localAccessibilityNodeInfoCompat.isEnabled());
      paramAccessibilityNodeInfoCompat.setClickable(localAccessibilityNodeInfoCompat.isClickable());
      paramAccessibilityNodeInfoCompat.setFocusable(localAccessibilityNodeInfoCompat.isFocusable());
      paramAccessibilityNodeInfoCompat.setFocused(localAccessibilityNodeInfoCompat.isFocused());
      paramAccessibilityNodeInfoCompat.setAccessibilityFocused(localAccessibilityNodeInfoCompat.isAccessibilityFocused());
      paramAccessibilityNodeInfoCompat.setSelected(localAccessibilityNodeInfoCompat.isSelected());
      paramAccessibilityNodeInfoCompat.setLongClickable(localAccessibilityNodeInfoCompat.isLongClickable());
      paramAccessibilityNodeInfoCompat.addAction(localAccessibilityNodeInfoCompat.getActions());
      int i = AccessibilityNodeInfoCompat.IMPL.getMovementGranularities(mInfo);
      AccessibilityNodeInfoCompat.IMPL.setMovementGranularities(mInfo, i);
      localAccessibilityNodeInfoCompat.recycle();
      paramAccessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.class.getName());
      paramAccessibilityNodeInfoCompat.setSource(paramView);
      paramView = ViewCompat.getParentForAccessibility(paramView);
      if ((paramView instanceof View)) {
        paramAccessibilityNodeInfoCompat.setParent((View)paramView);
      }
      int j = getChildCount();
      i = 0;
      while (i < j)
      {
        paramView = getChildAt(i);
        if ((!filter(paramView)) && (paramView.getVisibility() == 0))
        {
          ViewCompat.setImportantForAccessibility(paramView, 1);
          paramAccessibilityNodeInfoCompat.addChild(paramView);
        }
        i += 1;
      }
    }
    
    public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      if (!filter(paramView)) {
        return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
      }
      return false;
    }
  }
  
  final class DisableLayerRunnable
    implements Runnable
  {
    final View mChildView;
    
    DisableLayerRunnable(View paramView)
    {
      mChildView = paramView;
    }
    
    public final void run()
    {
      if (mChildView.getParent() == SlidingPaneLayout.this)
      {
        ViewCompat.setLayerType(mChildView, 0, null);
        SlidingPaneLayout.this.invalidateChildRegion(mChildView);
      }
      mPostedRunnables.remove(this);
    }
  }
  
  final class DragHelperCallback
    extends ViewDragHelper.Callback
  {
    private DragHelperCallback() {}
    
    public final int clampViewPositionHorizontal$17e143b0(View paramView, int paramInt)
    {
      paramView = (SlidingPaneLayout.LayoutParams)mSlideableView.getLayoutParams();
      if (SlidingPaneLayout.this.isLayoutRtlSupport())
      {
        i = getWidth();
        j = getPaddingRight();
        i -= rightMargin + j + mSlideableView.getWidth();
        j = mSlideRange;
        return Math.max(Math.min(paramInt, i), i - j);
      }
      int i = getPaddingLeft();
      i = leftMargin + i;
      int j = mSlideRange;
      return Math.min(Math.max(paramInt, i), j + i);
    }
    
    public final int clampViewPositionVertical$17e143b0(View paramView)
    {
      return paramView.getTop();
    }
    
    public final int getViewHorizontalDragRange(View paramView)
    {
      return mSlideRange;
    }
    
    public final void onEdgeDragStarted(int paramInt1, int paramInt2)
    {
      mDragHelper.captureChildView(mSlideableView, paramInt2);
    }
    
    public final void onViewCaptured$5359dc9a(View paramView)
    {
      setAllChildrenVisible();
    }
    
    public final void onViewDragStateChanged(int paramInt)
    {
      if (mDragHelper.mDragState == 0)
      {
        if (mSlideOffset == 0.0F)
        {
          updateObscuredViewsVisibility(mSlideableView);
          localSlidingPaneLayout = SlidingPaneLayout.this;
          localSlidingPaneLayout.sendAccessibilityEvent(32);
          SlidingPaneLayout.access$502(SlidingPaneLayout.this, false);
        }
      }
      else {
        return;
      }
      SlidingPaneLayout localSlidingPaneLayout = SlidingPaneLayout.this;
      localSlidingPaneLayout.sendAccessibilityEvent(32);
      SlidingPaneLayout.access$502(SlidingPaneLayout.this, true);
    }
    
    public final void onViewPositionChanged$5b6f797d(View paramView, int paramInt)
    {
      SlidingPaneLayout.access$600(SlidingPaneLayout.this, paramInt);
      invalidate();
    }
    
    public final void onViewReleased$17e2ac03(View paramView, float paramFloat)
    {
      SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
      int i;
      int j;
      if (SlidingPaneLayout.this.isLayoutRtlSupport())
      {
        i = getPaddingRight();
        j = rightMargin + i;
        if (paramFloat >= 0.0F)
        {
          i = j;
          if (paramFloat == 0.0F)
          {
            i = j;
            if (mSlideOffset <= 0.5F) {}
          }
        }
        else
        {
          i = j + mSlideRange;
        }
        j = mSlideableView.getWidth();
        i = getWidth() - i - j;
      }
      for (;;)
      {
        mDragHelper.settleCapturedViewAt(i, paramView.getTop());
        invalidate();
        return;
        i = getPaddingLeft();
        j = leftMargin + i;
        if (paramFloat <= 0.0F)
        {
          i = j;
          if (paramFloat == 0.0F)
          {
            i = j;
            if (mSlideOffset <= 0.5F) {}
          }
        }
        else
        {
          i = j + mSlideRange;
        }
      }
    }
    
    public final boolean tryCaptureView$5359dc96(View paramView)
    {
      if (mIsUnableToDrag) {
        return false;
      }
      return getLayoutParamsslideable;
    }
  }
  
  public static class LayoutParams
    extends ViewGroup.MarginLayoutParams
  {
    private static final int[] ATTRS = { 16843137 };
    Paint dimPaint;
    boolean dimWhenOffset;
    boolean slideable;
    public float weight = 0.0F;
    
    public LayoutParams()
    {
      super(-1);
    }
    
    private LayoutParams(int paramInt1, int paramInt2)
    {
      super(paramInt2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ATTRS);
      weight = paramContext.getFloat(0, 0.0F);
      paramContext.recycle();
    }
    
    private LayoutParams(LayoutParams paramLayoutParams)
    {
      super();
      weight = weight;
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
  
  public static abstract interface PanelSlideListener
  {
    public abstract void onPanelClosed$3c7ec8c3();
    
    public abstract void onPanelOpened$3c7ec8c3();
    
    public abstract void onPanelSlide$5359e7dd();
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      private static SlidingPaneLayout.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new SlidingPaneLayout.SavedState(paramAnonymousParcel, (byte)0);
      }
      
      private static SlidingPaneLayout.SavedState[] newArray(int paramAnonymousInt)
      {
        return new SlidingPaneLayout.SavedState[paramAnonymousInt];
      }
    };
    boolean isOpen;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      if (paramParcel.readInt() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        isOpen = bool;
        return;
      }
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      if (isOpen) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
  
  public static final class SimplePanelSlideListener
    implements SlidingPaneLayout.PanelSlideListener
  {
    public final void onPanelClosed$3c7ec8c3() {}
    
    public final void onPanelOpened$3c7ec8c3() {}
    
    public final void onPanelSlide$5359e7dd() {}
  }
  
  static abstract interface SlidingPanelLayoutImpl
  {
    public abstract void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView);
  }
  
  static class SlidingPanelLayoutImplBase
    implements SlidingPaneLayout.SlidingPanelLayoutImpl
  {
    public void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
    {
      ViewCompat.postInvalidateOnAnimation(paramSlidingPaneLayout, paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    }
  }
  
  static final class SlidingPanelLayoutImplJB
    extends SlidingPaneLayout.SlidingPanelLayoutImplBase
  {
    private Method mGetDisplayList;
    private Field mRecreateDisplayList;
    
    SlidingPanelLayoutImplJB()
    {
      try
      {
        mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", null);
        try
        {
          mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
          mRecreateDisplayList.setAccessible(true);
          return;
        }
        catch (NoSuchFieldException localNoSuchFieldException) {}
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        for (;;) {}
      }
    }
    
    public final void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
    {
      if ((mGetDisplayList != null) && (mRecreateDisplayList != null)) {}
      try
      {
        mRecreateDisplayList.setBoolean(paramView, true);
        mGetDisplayList.invoke(paramView, null);
        super.invalidateChildRegion(paramSlidingPaneLayout, paramView);
        return;
        paramView.invalidate();
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  static final class SlidingPanelLayoutImplJBMR1
    extends SlidingPaneLayout.SlidingPanelLayoutImplBase
  {
    public final void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
    {
      ViewCompat.setLayerPaint(paramView, getLayoutParamsdimPaint);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
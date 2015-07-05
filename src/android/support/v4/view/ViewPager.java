package android.support.v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.v4.os.ParcelableCompat.CompatCreator;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.os.ParcelableCompatCreatorHoneycombMR2Stub;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ViewPager
  extends ViewGroup
{
  private static final int CLOSE_ENOUGH = 2;
  private static final Comparator<ItemInfo> COMPARATOR = new Comparator()
  {
    private static int compare(ViewPager.ItemInfo paramAnonymousItemInfo1, ViewPager.ItemInfo paramAnonymousItemInfo2)
    {
      return position - position;
    }
  };
  private static final boolean DEBUG = false;
  private static final int DEFAULT_GUTTER_SIZE = 16;
  private static final int DEFAULT_OFFSCREEN_PAGES = 1;
  private static final int DRAW_ORDER_DEFAULT = 0;
  private static final int DRAW_ORDER_FORWARD = 1;
  private static final int DRAW_ORDER_REVERSE = 2;
  private static final int INVALID_POINTER = -1;
  private static final int[] LAYOUT_ATTRS = { 16842931 };
  private static final int MAX_SETTLE_DURATION = 600;
  private static final int MIN_DISTANCE_FOR_FLING = 25;
  private static final int MIN_FLING_VELOCITY = 400;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE = false;
  private static final Interpolator sInterpolator = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  private static final ViewPositionComparator sPositionComparator = new ViewPositionComparator();
  private int mActivePointerId = -1;
  private PagerAdapter mAdapter;
  private OnAdapterChangeListener mAdapterChangeListener;
  private int mBottomPageBounds;
  private boolean mCalledSuper;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCloseEnough;
  private int mCurItem;
  private int mDecorChildCount;
  private int mDefaultGutterSize;
  private int mDrawingOrder;
  private ArrayList<View> mDrawingOrderedChildren;
  private final Runnable mEndScrollRunnable = new Runnable()
  {
    public final void run()
    {
      ViewPager.access$000$b020504(ViewPager.this);
      populate();
    }
  };
  private int mExpectedAdapterCount;
  private long mFakeDragBeginTime;
  private boolean mFakeDragging;
  private boolean mFirstLayout = true;
  private float mFirstOffset = -3.4028235E38F;
  private int mFlingDistance;
  private int mGutterSize;
  private boolean mIgnoreGutter;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private OnPageChangeListener mInternalPageChangeListener;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList<ItemInfo> mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private float mLastOffset = Float.MAX_VALUE;
  private EdgeEffectCompat mLeftEdge;
  private Drawable mMarginDrawable;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private boolean mNeedCalculatePageOffsets = false;
  private PagerObserver mObserver;
  private int mOffscreenPageLimit = 1;
  private OnPageChangeListener mOnPageChangeListener;
  private int mPageMargin;
  private PageTransformer mPageTransformer;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private EdgeEffectCompat mRightEdge;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrollingCacheEnabled;
  private Method mSetChildrenDrawingOrderEnabled;
  private final ItemInfo mTempItem = new ItemInfo();
  private final Rect mTempRect = new Rect();
  private int mTopPageBounds;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;
  
  public ViewPager(Context paramContext)
  {
    super(paramContext);
    initViewPager();
  }
  
  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViewPager();
  }
  
  private ItemInfo addNewItem(int paramInt1, int paramInt2)
  {
    ItemInfo localItemInfo = new ItemInfo();
    position = paramInt1;
    object = mAdapter.instantiateItem(this, paramInt1);
    widthFactor = 1.0F;
    if ((paramInt2 < 0) || (paramInt2 >= mItems.size()))
    {
      mItems.add(localItemInfo);
      return localItemInfo;
    }
    mItems.add(paramInt2, localItemInfo);
    return localItemInfo;
  }
  
  private boolean arrowScroll(int paramInt)
  {
    boolean bool = false;
    View localView = findFocus();
    Object localObject;
    int j;
    if (localView == this)
    {
      localObject = null;
      localView = FocusFinder.getInstance().findNextFocus(this, (View)localObject, paramInt);
      if ((localView == null) || (localView == localObject)) {
        break label311;
      }
      if (paramInt != 17) {
        break label257;
      }
      i = getChildRectInPagerCoordinatesmTempRect, localView).left;
      j = getChildRectInPagerCoordinatesmTempRect, (View)localObject).left;
      if ((localObject != null) && (i >= j))
      {
        bool = pageLeft();
        label92:
        if (bool) {
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        }
        return bool;
      }
    }
    else
    {
      if (localView == null) {
        break label388;
      }
      localObject = localView.getParent();
      if (!(localObject instanceof ViewGroup)) {
        break label395;
      }
      if (localObject != this) {}
    }
    label257:
    label311:
    label388:
    label395:
    for (int i = 1;; i = 0)
    {
      if (i == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView.getClass().getSimpleName());
        localObject = localView.getParent();
        for (;;)
        {
          if ((localObject instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localObject.getClass().getSimpleName());
            localObject = ((ViewParent)localObject).getParent();
            continue;
            localObject = ((ViewParent)localObject).getParent();
            break;
          }
        }
        new StringBuilder("arrowScroll tried to find focus based on non-child current focused view ").append(localStringBuilder.toString());
        localObject = null;
        break;
        bool = localView.requestFocus();
        break label92;
        if (paramInt != 66) {
          break label92;
        }
        i = getChildRectInPagerCoordinatesmTempRect, localView).left;
        j = getChildRectInPagerCoordinatesmTempRect, (View)localObject).left;
        if ((localObject == null) || (i > j))
        {
          bool = localView.requestFocus();
          break label92;
          if ((paramInt == 17) || (paramInt == 1))
          {
            bool = pageLeft();
            break label92;
          }
          if ((paramInt != 66) && (paramInt != 2)) {
            break label92;
          }
        }
        if ((mAdapter != null) && (mCurItem < mAdapter.getCount() - 1))
        {
          setCurrentItem(mCurItem + 1, true);
          bool = true;
          break label92;
        }
        bool = false;
        break label92;
      }
      localObject = localView;
      break;
    }
  }
  
  private boolean beginFakeDrag()
  {
    if (mIsBeingDragged) {
      return false;
    }
    mFakeDragging = true;
    setScrollState(1);
    mLastMotionX = 0.0F;
    mInitialMotionX = 0.0F;
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    for (;;)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 0, 0.0F, 0.0F, 0);
      mVelocityTracker.addMovement(localMotionEvent);
      localMotionEvent.recycle();
      mFakeDragBeginTime = l;
      return true;
      mVelocityTracker.clear();
    }
  }
  
  private void calculatePageOffsets(ItemInfo paramItemInfo1, int paramInt, ItemInfo paramItemInfo2)
  {
    int k = mAdapter.getCount();
    int i = getClientWidth();
    if (i > 0) {}
    float f1;
    int j;
    for (float f2 = mPageMargin / i;; f2 = 0.0F)
    {
      if (paramItemInfo2 == null) {
        break label365;
      }
      i = position;
      if (i >= position) {
        break;
      }
      f1 = offset + widthFactor + f2;
      j = 0;
      i += 1;
      if ((i > position) || (j >= mItems.size())) {
        break label365;
      }
      for (paramItemInfo2 = (ItemInfo)mItems.get(j); (i > position) && (j < mItems.size() - 1); paramItemInfo2 = (ItemInfo)mItems.get(j)) {
        j += 1;
      }
    }
    for (;;)
    {
      if (i < position)
      {
        i += 1;
        f1 = 1.0F + f2 + f1;
      }
      else
      {
        offset = f1;
        f1 += widthFactor + f2;
        i += 1;
        break;
        if (i > position)
        {
          j = mItems.size();
          f1 = offset;
          j -= 1;
          i -= 1;
          if ((i >= position) && (j >= 0)) {
            for (paramItemInfo2 = (ItemInfo)mItems.get(j); (i < position) && (j > 0); paramItemInfo2 = (ItemInfo)mItems.get(j)) {
              j -= 1;
            }
          }
        }
        for (;;)
        {
          if (i > position)
          {
            i -= 1;
            f1 -= 1.0F + f2;
          }
          else
          {
            f1 -= widthFactor + f2;
            offset = f1;
            i -= 1;
            break;
            label365:
            int m = mItems.size();
            float f3 = offset;
            i = position - 1;
            if (position == 0)
            {
              f1 = offset;
              mFirstOffset = f1;
              if (position != k - 1) {
                break label498;
              }
              f1 = offset + widthFactor - 1.0F;
              label431:
              mLastOffset = f1;
              j = paramInt - 1;
              f1 = f3;
            }
            for (;;)
            {
              if (j < 0) {
                break label551;
              }
              paramItemInfo2 = (ItemInfo)mItems.get(j);
              for (;;)
              {
                if (i > position)
                {
                  i -= 1;
                  f1 -= 1.0F + f2;
                  continue;
                  f1 = -3.4028235E38F;
                  break;
                  label498:
                  f1 = Float.MAX_VALUE;
                  break label431;
                }
              }
              f1 -= widthFactor + f2;
              offset = f1;
              if (position == 0) {
                mFirstOffset = f1;
              }
              i -= 1;
              j -= 1;
            }
            label551:
            f1 = offset + widthFactor + f2;
            j = position + 1;
            i = paramInt + 1;
            paramInt = j;
            while (i < m)
            {
              paramItemInfo1 = (ItemInfo)mItems.get(i);
              while (paramInt < position)
              {
                paramInt += 1;
                f1 += 1.0F + f2;
              }
              if (position == k - 1) {
                mLastOffset = (widthFactor + f1 - 1.0F);
              }
              offset = f1;
              f1 += widthFactor + f2;
              paramInt += 1;
              i += 1;
            }
            mNeedCalculatePageOffsets = false;
            return;
          }
        }
      }
    }
  }
  
  private boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      i = localViewGroup.getChildCount() - 1;
      if (i >= 0)
      {
        localView = localViewGroup.getChildAt(i);
        if ((paramInt2 + j < localView.getLeft()) || (paramInt2 + j >= localView.getRight()) || (paramInt3 + k < localView.getTop()) || (paramInt3 + k >= localView.getBottom()) || (!canScroll(localView, true, paramInt1, paramInt2 + j - localView.getLeft(), paramInt3 + k - localView.getTop()))) {}
      }
    }
    while ((paramBoolean) && (ViewCompat.canScrollHorizontally(paramView, -paramInt1)))
    {
      View localView;
      return true;
      i -= 1;
      break;
    }
    return false;
  }
  
  private void completeScroll(boolean paramBoolean)
  {
    if (mScrollState == 2) {}
    int j;
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        setScrollingCacheEnabled(false);
        mScroller.abortAnimation();
        j = getScrollX();
        k = getScrollY();
        int m = mScroller.getCurrX();
        int n = mScroller.getCurrY();
        if ((j != m) || (k != n)) {
          scrollTo(m, n);
        }
      }
      mPopulatePending = false;
      int k = 0;
      j = i;
      i = k;
      while (i < mItems.size())
      {
        ItemInfo localItemInfo = (ItemInfo)mItems.get(i);
        if (scrolling)
        {
          scrolling = false;
          j = 1;
        }
        i += 1;
      }
    }
    if (j != 0)
    {
      if (paramBoolean) {
        ViewCompat.postOnAnimation(this, mEndScrollRunnable);
      }
    }
    else {
      return;
    }
    mEndScrollRunnable.run();
  }
  
  private int determineTargetPage(int paramInt1, float paramFloat, int paramInt2, int paramInt3)
  {
    if ((Math.abs(paramInt3) > mFlingDistance) && (Math.abs(paramInt2) > mMinimumVelocity))
    {
      if (paramInt2 > 0) {}
      for (;;)
      {
        paramInt2 = paramInt1;
        if (mItems.size() > 0)
        {
          ItemInfo localItemInfo1 = (ItemInfo)mItems.get(0);
          ItemInfo localItemInfo2 = (ItemInfo)mItems.get(mItems.size() - 1);
          paramInt2 = Math.max(position, Math.min(paramInt1, position));
        }
        return paramInt2;
        paramInt1 += 1;
      }
    }
    if (paramInt1 >= mCurItem) {}
    for (float f = 0.4F;; f = 0.6F)
    {
      paramInt1 = (int)(f + (paramInt1 + paramFloat));
      break;
    }
  }
  
  private static float distanceInfluenceForSnapDuration(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  private void enableLayers(boolean paramBoolean)
  {
    int k = getChildCount();
    int i = 0;
    if (i < k)
    {
      if (paramBoolean) {}
      for (int j = 2;; j = 0)
      {
        ViewCompat.setLayerType(getChildAt(i), j, null);
        i += 1;
        break;
      }
    }
  }
  
  private void endDrag()
  {
    mIsBeingDragged = false;
    mIsUnableToDrag = false;
    if (mVelocityTracker != null)
    {
      mVelocityTracker.recycle();
      mVelocityTracker = null;
    }
  }
  
  private void endFakeDrag()
  {
    if (!mFakeDragging) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    Object localObject = mVelocityTracker;
    ((VelocityTracker)localObject).computeCurrentVelocity(1000, mMaximumVelocity);
    int i = (int)VelocityTrackerCompat.getXVelocity((VelocityTracker)localObject, mActivePointerId);
    mPopulatePending = true;
    int j = getClientWidth();
    int k = getScrollX();
    localObject = infoForCurrentScrollPosition();
    setCurrentItemInternal(determineTargetPage(position, (k / j - offset) / widthFactor, i, (int)(mLastMotionX - mInitialMotionX)), true, true, i);
    endDrag();
    mFakeDragging = false;
  }
  
  private void fakeDragBy(float paramFloat)
  {
    if (!mFakeDragging) {
      throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }
    mLastMotionX += paramFloat;
    float f2 = getScrollX() - paramFloat;
    int i = getClientWidth();
    paramFloat = i;
    float f4 = mFirstOffset;
    float f1 = i;
    float f3 = mLastOffset;
    Object localObject = (ItemInfo)mItems.get(0);
    ItemInfo localItemInfo = (ItemInfo)mItems.get(mItems.size() - 1);
    if (position != 0) {}
    for (paramFloat = offset * i;; paramFloat *= f4)
    {
      if (position != mAdapter.getCount() - 1) {}
      for (f1 = offset * i;; f1 *= f3)
      {
        if (f2 < paramFloat) {}
        for (;;)
        {
          mLastMotionX += paramFloat - (int)paramFloat;
          scrollTo((int)paramFloat, getScrollY());
          pageScrolled((int)paramFloat);
          long l = SystemClock.uptimeMillis();
          localObject = MotionEvent.obtain(mFakeDragBeginTime, l, 2, mLastMotionX, 0.0F, 0);
          mVelocityTracker.addMovement((MotionEvent)localObject);
          ((MotionEvent)localObject).recycle();
          return;
          if (f2 > f1) {
            paramFloat = f1;
          } else {
            paramFloat = f2;
          }
        }
      }
    }
  }
  
  private Rect getChildRectInPagerCoordinates(Rect paramRect, View paramView)
  {
    if (paramRect == null) {
      paramRect = new Rect();
    }
    for (;;)
    {
      if (paramView == null)
      {
        paramRect.set(0, 0, 0, 0);
        return paramRect;
      }
      left = paramView.getLeft();
      right = paramView.getRight();
      top = paramView.getTop();
      bottom = paramView.getBottom();
      for (paramView = paramView.getParent(); ((paramView instanceof ViewGroup)) && (paramView != this); paramView = paramView.getParent())
      {
        paramView = (ViewGroup)paramView;
        left += paramView.getLeft();
        right += paramView.getRight();
        top += paramView.getTop();
        bottom += paramView.getBottom();
      }
      return paramRect;
    }
  }
  
  private int getClientWidth()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }
  
  private ItemInfo infoForAnyChild(View paramView)
  {
    for (;;)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this) {
        break;
      }
      if ((localViewParent == null) || (!(localViewParent instanceof View))) {
        return null;
      }
      paramView = (View)localViewParent;
    }
    return infoForChild(paramView);
  }
  
  private ItemInfo infoForChild(View paramView)
  {
    int i = 0;
    while (i < mItems.size())
    {
      ItemInfo localItemInfo = (ItemInfo)mItems.get(i);
      if (mAdapter.isViewFromObject(paramView, object)) {
        return localItemInfo;
      }
      i += 1;
    }
    return null;
  }
  
  private ItemInfo infoForCurrentScrollPosition()
  {
    int i = getClientWidth();
    float f1;
    float f2;
    label36:
    float f4;
    float f3;
    int k;
    int j;
    Object localObject1;
    label53:
    Object localObject2;
    ItemInfo localItemInfo;
    if (i > 0)
    {
      f1 = getScrollX() / i;
      if (i <= 0) {
        break label203;
      }
      f2 = mPageMargin / i;
      f4 = 0.0F;
      f3 = 0.0F;
      k = -1;
      i = 0;
      j = 1;
      localObject1 = null;
      localObject2 = localObject1;
      if (i < mItems.size())
      {
        localItemInfo = (ItemInfo)mItems.get(i);
        if ((j != 0) || (position == k + 1)) {
          break label238;
        }
        localItemInfo = mTempItem;
        offset = (f4 + f3 + f2);
        position = (k + 1);
        widthFactor = 1.0F;
        i -= 1;
      }
    }
    label203:
    label208:
    label238:
    for (;;)
    {
      f3 = offset;
      f4 = widthFactor;
      if (j == 0)
      {
        localObject2 = localObject1;
        if (f1 < f3) {}
      }
      else
      {
        if ((f1 >= f4 + f3 + f2) && (i != mItems.size() - 1)) {
          break label208;
        }
        localObject2 = localItemInfo;
      }
      return (ItemInfo)localObject2;
      f1 = 0.0F;
      break;
      f2 = 0.0F;
      break label36;
      k = position;
      f4 = widthFactor;
      j = 0;
      i += 1;
      localObject1 = localItemInfo;
      break label53;
    }
  }
  
  private ItemInfo infoForPosition(int paramInt)
  {
    int i = 0;
    while (i < mItems.size())
    {
      ItemInfo localItemInfo = (ItemInfo)mItems.get(i);
      if (position == paramInt) {
        return localItemInfo;
      }
      i += 1;
    }
    return null;
  }
  
  private void initViewPager()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    mScroller = new Scroller(localContext, sInterpolator);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f = getResourcesgetDisplayMetricsdensity;
    mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    mMinimumVelocity = ((int)(400.0F * f));
    mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
    mLeftEdge = new EdgeEffectCompat(localContext);
    mRightEdge = new EdgeEffectCompat(localContext);
    mFlingDistance = ((int)(25.0F * f));
    mCloseEnough = ((int)(2.0F * f));
    mDefaultGutterSize = ((int)(16.0F * f));
    ViewCompat.setAccessibilityDelegate(this, new MyAccessibilityDelegate());
    if (ViewCompat.getImportantForAccessibility(this) == 0) {
      ViewCompat.setImportantForAccessibility(this, 1);
    }
  }
  
  private boolean isFakeDragging()
  {
    return mFakeDragging;
  }
  
  private boolean isGutterDrag(float paramFloat1, float paramFloat2)
  {
    return ((paramFloat1 < mGutterSize) && (paramFloat2 > 0.0F)) || ((paramFloat1 > getWidth() - mGutterSize) && (paramFloat2 < 0.0F));
  }
  
  private void onSecondaryPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == mActivePointerId) {
      if (i != 0) {
        break label56;
      }
    }
    label56:
    for (i = 1;; i = 0)
    {
      mLastMotionX = MotionEventCompat.getX(paramMotionEvent, i);
      mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
      if (mVelocityTracker != null) {
        mVelocityTracker.clear();
      }
      return;
    }
  }
  
  private boolean pageLeft()
  {
    if (mCurItem > 0)
    {
      setCurrentItem(mCurItem - 1, true);
      return true;
    }
    return false;
  }
  
  private boolean pageRight()
  {
    if ((mAdapter != null) && (mCurItem < mAdapter.getCount() - 1))
    {
      setCurrentItem(mCurItem + 1, true);
      return true;
    }
    return false;
  }
  
  private boolean pageScrolled(int paramInt)
  {
    boolean bool = false;
    if (mItems.size() == 0)
    {
      mCalledSuper = false;
      onPageScrolled(0, 0.0F, 0);
      if (!mCalledSuper) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
    }
    else
    {
      ItemInfo localItemInfo = infoForCurrentScrollPosition();
      int j = getClientWidth();
      int k = mPageMargin;
      float f = mPageMargin / j;
      int i = position;
      f = (paramInt / j - offset) / (widthFactor + f);
      paramInt = (int)((k + j) * f);
      mCalledSuper = false;
      onPageScrolled(i, f, paramInt);
      if (!mCalledSuper) {
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      }
      bool = true;
    }
    return bool;
  }
  
  private boolean performDrag(float paramFloat)
  {
    int j = 1;
    boolean bool2 = false;
    boolean bool1 = false;
    float f1 = mLastMotionX;
    mLastMotionX = paramFloat;
    float f2 = getScrollX() + (f1 - paramFloat);
    int k = getClientWidth();
    paramFloat = k * mFirstOffset;
    f1 = k;
    float f3 = mLastOffset;
    ItemInfo localItemInfo1 = (ItemInfo)mItems.get(0);
    ItemInfo localItemInfo2 = (ItemInfo)mItems.get(mItems.size() - 1);
    if (position != 0) {
      paramFloat = offset * k;
    }
    for (int i = 0;; i = 1)
    {
      if (position != mAdapter.getCount() - 1)
      {
        f1 = offset * k;
        j = 0;
      }
      for (;;)
      {
        if (f2 < paramFloat)
        {
          f1 = paramFloat;
          if (i != 0)
          {
            bool1 = mLeftEdge.onPull(Math.abs(paramFloat - f2) / k);
            f1 = paramFloat;
          }
        }
        for (;;)
        {
          mLastMotionX += f1 - (int)f1;
          scrollTo((int)f1, getScrollY());
          pageScrolled((int)f1);
          return bool1;
          if (f2 > f1)
          {
            bool1 = bool2;
            if (j != 0) {
              bool1 = mRightEdge.onPull(Math.abs(f2 - f1) / k);
            }
          }
          else
          {
            f1 = f2;
          }
        }
        f1 *= f3;
      }
    }
  }
  
  private void populate(int paramInt)
  {
    int i;
    Object localObject2;
    if (mCurItem != paramInt) {
      if (mCurItem < paramInt)
      {
        i = 66;
        localObject2 = infoForPosition(mCurItem);
        mCurItem = paramInt;
      }
    }
    for (int j = i;; j = 2)
    {
      if (mAdapter == null) {
        sortChildDrawingOrder();
      }
      do
      {
        return;
        i = 17;
        break;
        if (mPopulatePending)
        {
          sortChildDrawingOrder();
          return;
        }
      } while (getWindowToken() == null);
      paramInt = mOffscreenPageLimit;
      int i3 = Math.max(0, mCurItem - paramInt);
      int i1 = mAdapter.getCount();
      int i2 = Math.min(i1 - 1, paramInt + mCurItem);
      Object localObject1;
      if (i1 != mExpectedAdapterCount) {
        try
        {
          String str = getResources().getResourceName(getId());
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + mExpectedAdapterCount + ", found: " + i1 + " Pager id: " + str + " Pager class: " + getClass() + " Problematic adapter: " + mAdapter.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          for (;;)
          {
            localObject1 = Integer.toHexString(getId());
          }
        }
      }
      paramInt = 0;
      if (paramInt < mItems.size())
      {
        localObject1 = (ItemInfo)mItems.get(paramInt);
        if (position >= mCurItem) {
          if (position != mCurItem) {
            break label1254;
          }
        }
      }
      for (;;)
      {
        if ((localObject1 == null) && (i1 > 0)) {}
        for (Object localObject3 = addNewItem(mCurItem, paramInt);; localObject3 = localObject1)
        {
          label333:
          int i4;
          float f2;
          label346:
          float f3;
          int k;
          label368:
          float f1;
          if (localObject3 != null)
          {
            int n = paramInt - 1;
            int m;
            Object localObject4;
            if (n >= 0)
            {
              localObject1 = (ItemInfo)mItems.get(n);
              i4 = getClientWidth();
              if (i4 > 0) {
                break label530;
              }
              f2 = 0.0F;
              i = mCurItem;
              f3 = 0.0F;
              m = i - 1;
              k = paramInt;
              localObject4 = localObject1;
              if (m < 0) {
                break label680;
              }
              if ((f3 < f2) || (m >= i3)) {
                break label560;
              }
              if (localObject4 == null) {
                break label680;
              }
              localObject1 = localObject4;
              paramInt = n;
              f1 = f3;
              i = k;
              if (m == position)
              {
                localObject1 = localObject4;
                paramInt = n;
                f1 = f3;
                i = k;
                if (!scrolling)
                {
                  mItems.remove(n);
                  mAdapter.destroyItem(this, m, object);
                  paramInt = n - 1;
                  i = k - 1;
                  if (paramInt < 0) {
                    break label551;
                  }
                  localObject1 = (ItemInfo)mItems.get(paramInt);
                  f1 = f3;
                }
              }
            }
            for (;;)
            {
              m -= 1;
              localObject4 = localObject1;
              n = paramInt;
              f3 = f1;
              k = i;
              break label368;
              paramInt += 1;
              break;
              localObject1 = null;
              break label333;
              label530:
              f2 = 2.0F - widthFactor + getPaddingLeft() / i4;
              break label346;
              label551:
              localObject1 = null;
              f1 = f3;
              continue;
              label560:
              if ((localObject4 != null) && (m == position))
              {
                f1 = f3 + widthFactor;
                paramInt = n - 1;
                if (paramInt >= 0)
                {
                  localObject1 = (ItemInfo)mItems.get(paramInt);
                  i = k;
                }
                else
                {
                  localObject1 = null;
                  i = k;
                }
              }
              else
              {
                f1 = f3 + addNewItem1widthFactor;
                i = k + 1;
                if (n >= 0)
                {
                  localObject1 = (ItemInfo)mItems.get(n);
                  paramInt = n;
                }
                else
                {
                  localObject1 = null;
                  paramInt = n;
                }
              }
            }
            label680:
            f1 = widthFactor;
            paramInt = k + 1;
            if (f1 < 2.0F) {
              if (paramInt < mItems.size())
              {
                localObject1 = (ItemInfo)mItems.get(paramInt);
                label721:
                if (i4 > 0) {
                  break label846;
                }
                f2 = 0.0F;
                label728:
                i = mCurItem;
                i += 1;
                label740:
                if (i >= i1) {
                  break label989;
                }
                if ((f1 < f2) || (i <= i2)) {
                  break label867;
                }
                if (localObject1 == null) {
                  break label989;
                }
                if ((i != position) || (scrolling)) {
                  break label1244;
                }
                mItems.remove(paramInt);
                mAdapter.destroyItem(this, i, object);
                if (paramInt >= mItems.size()) {
                  break label861;
                }
                localObject1 = (ItemInfo)mItems.get(paramInt);
              }
            }
          }
          label846:
          label861:
          label867:
          label989:
          label1236:
          label1242:
          label1244:
          for (;;)
          {
            i += 1;
            break label740;
            localObject1 = null;
            break label721;
            f2 = getPaddingRight() / i4 + 2.0F;
            break label728;
            localObject1 = null;
            continue;
            if ((localObject1 != null) && (i == position))
            {
              f3 = widthFactor;
              paramInt += 1;
              if (paramInt < mItems.size()) {}
              for (localObject1 = (ItemInfo)mItems.get(paramInt);; localObject1 = null)
              {
                f1 += f3;
                break;
              }
            }
            localObject1 = addNewItem(i, paramInt);
            paramInt += 1;
            f3 = widthFactor;
            if (paramInt < mItems.size()) {}
            for (localObject1 = (ItemInfo)mItems.get(paramInt);; localObject1 = null)
            {
              f1 += f3;
              break;
            }
            calculatePageOffsets((ItemInfo)localObject3, k, (ItemInfo)localObject2);
            localObject2 = mAdapter;
            if (localObject3 != null) {}
            for (localObject1 = object;; localObject1 = null)
            {
              ((PagerAdapter)localObject2).setPrimaryItem$30510aeb(localObject1);
              mAdapter.finishUpdate$52bc874c();
              i = getChildCount();
              paramInt = 0;
              while (paramInt < i)
              {
                localObject2 = getChildAt(paramInt);
                localObject1 = (LayoutParams)((View)localObject2).getLayoutParams();
                childIndex = paramInt;
                if ((!isDecor) && (widthFactor == 0.0F))
                {
                  localObject2 = infoForChild((View)localObject2);
                  if (localObject2 != null)
                  {
                    widthFactor = widthFactor;
                    position = position;
                  }
                }
                paramInt += 1;
              }
            }
            sortChildDrawingOrder();
            if (!hasFocus()) {
              break;
            }
            localObject1 = findFocus();
            if (localObject1 != null) {}
            for (localObject1 = infoForAnyChild((View)localObject1);; localObject1 = null)
            {
              if ((localObject1 != null) && (position == mCurItem)) {
                break label1242;
              }
              paramInt = 0;
              for (;;)
              {
                if (paramInt >= getChildCount()) {
                  break label1236;
                }
                localObject1 = getChildAt(paramInt);
                localObject2 = infoForChild((View)localObject1);
                if ((localObject2 != null) && (position == mCurItem) && (((View)localObject1).requestFocus(j))) {
                  break;
                }
                paramInt += 1;
              }
              break;
            }
            break;
          }
        }
        label1254:
        localObject1 = null;
      }
      localObject2 = null;
    }
  }
  
  private void recomputeScrollPosition(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!mItems.isEmpty()))
    {
      int i = getPaddingLeft();
      int j = getPaddingRight();
      int k = getPaddingLeft();
      int m = getPaddingRight();
      f = getScrollX() / (paramInt2 - k - m + paramInt4);
      paramInt2 = (int)((paramInt1 - i - j + paramInt3) * f);
      scrollTo(paramInt2, getScrollY());
      if (!mScroller.isFinished())
      {
        paramInt3 = mScroller.getDuration();
        paramInt4 = mScroller.timePassed();
        localItemInfo = infoForPosition(mCurItem);
        mScroller.startScroll(paramInt2, 0, (int)(offset * paramInt1), 0, paramInt3 - paramInt4);
      }
      return;
    }
    ItemInfo localItemInfo = infoForPosition(mCurItem);
    if (localItemInfo != null) {}
    for (float f = Math.min(offset, mLastOffset);; f = 0.0F)
    {
      paramInt1 = (int)(f * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (paramInt1 == getScrollX()) {
        break;
      }
      completeScroll(false);
      scrollTo(paramInt1, getScrollY());
      return;
    }
  }
  
  private void removeNonDecorViews()
  {
    int j;
    for (int i = 0; i < getChildCount(); i = j + 1)
    {
      j = i;
      if (!getChildAtgetLayoutParamsisDecor)
      {
        removeViewAt(i);
        j = i - 1;
      }
    }
  }
  
  private void requestParentDisallowInterceptTouchEvent$1385ff()
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null) {
      localViewParent.requestDisallowInterceptTouchEvent(true);
    }
  }
  
  private void scrollToItem(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    ItemInfo localItemInfo = infoForPosition(paramInt1);
    float f;
    if (localItemInfo != null) {
      f = getClientWidth();
    }
    for (int i = (int)(Math.max(mFirstOffset, Math.min(offset, mLastOffset)) * f);; i = 0)
    {
      if (paramBoolean1)
      {
        smoothScrollTo(i, 0, paramInt2);
        if ((paramBoolean2) && (mOnPageChangeListener != null)) {
          mOnPageChangeListener.onPageSelected(paramInt1);
        }
        if ((paramBoolean2) && (mInternalPageChangeListener != null)) {
          mInternalPageChangeListener.onPageSelected(paramInt1);
        }
        return;
      }
      if ((paramBoolean2) && (mOnPageChangeListener != null)) {
        mOnPageChangeListener.onPageSelected(paramInt1);
      }
      if ((paramBoolean2) && (mInternalPageChangeListener != null)) {
        mInternalPageChangeListener.onPageSelected(paramInt1);
      }
      completeScroll(false);
      scrollTo(i, 0);
      pageScrolled(i);
      return;
    }
  }
  
  private void setCurrentItemInternal(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    setCurrentItemInternal(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  private void setCurrentItemInternal(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    boolean bool = false;
    if ((mAdapter == null) || (mAdapter.getCount() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!paramBoolean2) && (mCurItem == paramInt1) && (mItems.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i;
    if (paramInt1 < 0) {
      i = 0;
    }
    for (;;)
    {
      paramInt1 = mOffscreenPageLimit;
      if ((i <= mCurItem + paramInt1) && (i >= mCurItem - paramInt1)) {
        break;
      }
      paramInt1 = 0;
      while (paramInt1 < mItems.size())
      {
        mItems.get(paramInt1)).scrolling = true;
        paramInt1 += 1;
      }
      i = paramInt1;
      if (paramInt1 >= mAdapter.getCount()) {
        i = mAdapter.getCount() - 1;
      }
    }
    paramBoolean2 = bool;
    if (mCurItem != i) {
      paramBoolean2 = true;
    }
    if (mFirstLayout)
    {
      mCurItem = i;
      if ((paramBoolean2) && (mOnPageChangeListener != null)) {
        mOnPageChangeListener.onPageSelected(i);
      }
      if ((paramBoolean2) && (mInternalPageChangeListener != null)) {
        mInternalPageChangeListener.onPageSelected(i);
      }
      requestLayout();
      return;
    }
    populate(i);
    scrollToItem(i, paramBoolean1, paramInt2, paramBoolean2);
  }
  
  private void setScrollState(int paramInt)
  {
    if (mScrollState == paramInt) {}
    label35:
    label71:
    do
    {
      return;
      mScrollState = paramInt;
      if (mPageTransformer != null)
      {
        int i;
        int j;
        if (paramInt != 0)
        {
          i = 1;
          int m = getChildCount();
          j = 0;
          if (j >= m) {
            continue;
          }
          if (i == 0) {
            break label71;
          }
        }
        for (int k = 2;; k = 0)
        {
          ViewCompat.setLayerType(getChildAt(j), k, null);
          j += 1;
          break label35;
          i = 0;
          break;
        }
      }
    } while (mOnPageChangeListener == null);
    mOnPageChangeListener.onPageScrollStateChanged(paramInt);
  }
  
  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (mScrollingCacheEnabled != paramBoolean) {
      mScrollingCacheEnabled = paramBoolean;
    }
  }
  
  private void smoothScrollTo(int paramInt1, int paramInt2)
  {
    smoothScrollTo(paramInt1, paramInt2, 0);
  }
  
  private void smoothScrollTo(int paramInt1, int paramInt2, int paramInt3)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i = getScrollX();
    int j = getScrollY();
    int k = paramInt1 - i;
    paramInt2 -= j;
    if ((k == 0) && (paramInt2 == 0))
    {
      completeScroll(false);
      populate();
      setScrollState(0);
      return;
    }
    setScrollingCacheEnabled(true);
    setScrollState(2);
    paramInt1 = getClientWidth();
    int m = paramInt1 / 2;
    float f3 = Math.min(1.0F, 1.0F * Math.abs(k) / paramInt1);
    float f1 = m;
    float f2 = m;
    f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
    paramInt3 = Math.abs(paramInt3);
    if (paramInt3 > 0) {}
    for (paramInt1 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt3)) * 4;; paramInt1 = (int)((Math.abs(k) / (f1 * 1.0F + mPageMargin) + 1.0F) * 100.0F))
    {
      paramInt1 = Math.min(paramInt1, 600);
      mScroller.startScroll(i, j, k, paramInt2, paramInt1);
      ViewCompat.postInvalidateOnAnimation(this);
      return;
      f1 = paramInt1;
    }
  }
  
  private void sortChildDrawingOrder()
  {
    if (mDrawingOrder != 0)
    {
      if (mDrawingOrderedChildren == null) {
        mDrawingOrderedChildren = new ArrayList();
      }
      for (;;)
      {
        int j = getChildCount();
        int i = 0;
        while (i < j)
        {
          View localView = getChildAt(i);
          mDrawingOrderedChildren.add(localView);
          i += 1;
        }
        mDrawingOrderedChildren.clear();
      }
      Collections.sort(mDrawingOrderedChildren, sPositionComparator);
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int j = paramArrayList.size();
    int k = getDescendantFocusability();
    if (k != 393216)
    {
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        if (localView.getVisibility() == 0)
        {
          ItemInfo localItemInfo = infoForChild(localView);
          if ((localItemInfo != null) && (position == mCurItem)) {
            localView.addFocusables(paramArrayList, paramInt1, paramInt2);
          }
        }
        i += 1;
      }
    }
    if (((k == 262144) && (j != paramArrayList.size())) || (!isFocusable())) {}
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null)) {
      return;
    }
    paramArrayList.add(this);
  }
  
  public void addTouchables(ArrayList<View> paramArrayList)
  {
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (position == mCurItem)) {
          localView.addTouchables(paramArrayList);
        }
      }
      i += 1;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams)) {
      paramLayoutParams = generateLayoutParams(paramLayoutParams);
    }
    for (;;)
    {
      LayoutParams localLayoutParams = (LayoutParams)paramLayoutParams;
      isDecor |= paramView instanceof Decor;
      if (mInLayout)
      {
        if ((localLayoutParams != null) && (isDecor)) {
          throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        needsMeasure = true;
        addViewInLayout(paramView, paramInt, paramLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    if (mAdapter == null) {}
    int i;
    int j;
    do
    {
      do
      {
        return false;
        i = getClientWidth();
        j = getScrollX();
        if (paramInt >= 0) {
          break;
        }
      } while (j <= (int)(i * mFirstOffset));
      return true;
    } while ((paramInt <= 0) || (j >= (int)(i * mLastOffset)));
    return true;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if ((!mScroller.isFinished()) && (mScroller.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = mScroller.getCurrX();
      int m = mScroller.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!pageScrolled(k))
        {
          mScroller.abortAnimation();
          scrollTo(0, m);
        }
      }
      ViewCompat.postInvalidateOnAnimation(this);
      return;
    }
    completeScroll(true);
  }
  
  final void dataSetChanged()
  {
    int i2 = mAdapter.getCount();
    mExpectedAdapterCount = i2;
    int i;
    int j;
    int k;
    int n;
    int m;
    label67:
    Object localObject;
    if ((mItems.size() < mOffscreenPageLimit * 2 + 1) && (mItems.size() < i2))
    {
      i = 1;
      j = mCurItem;
      k = 0;
      n = 0;
      m = i;
      i = j;
      j = k;
      k = n;
      if (k >= mItems.size()) {
        break label270;
      }
      localObject = (ItemInfo)mItems.get(k);
      n = mAdapter.getItemPosition(object);
      if (n == -1) {
        break label354;
      }
      if (n != -2) {
        break label218;
      }
      mItems.remove(k);
      m = k - 1;
      k = j;
      if (j == 0) {
        k = 1;
      }
      mAdapter.destroyItem(this, position, object);
      if (mCurItem != position) {
        break label375;
      }
      j = Math.max(0, Math.min(mCurItem, i2 - 1));
      i = k;
      k = 1;
    }
    for (;;)
    {
      n = k;
      int i1 = j;
      k = m + 1;
      j = i;
      i = i1;
      m = n;
      break label67;
      i = 0;
      break;
      label218:
      if (position != n)
      {
        if (position == mCurItem) {
          i = n;
        }
        position = n;
        n = i;
        i1 = 1;
        m = k;
        i = j;
        j = n;
        k = i1;
        continue;
        label270:
        if (j != 0) {
          mAdapter.finishUpdate$52bc874c();
        }
        Collections.sort(mItems, COMPARATOR);
        if (m != 0)
        {
          k = getChildCount();
          j = 0;
          while (j < k)
          {
            localObject = (LayoutParams)getChildAt(j).getLayoutParams();
            if (!isDecor) {
              widthFactor = 0.0F;
            }
            j += 1;
          }
          setCurrentItemInternal(i, false, true);
          requestLayout();
        }
      }
      else
      {
        label354:
        n = i;
        i1 = m;
        m = k;
        i = j;
        j = n;
        k = i1;
        continue;
        label375:
        j = i;
        n = 1;
        i = k;
        k = n;
      }
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyEvent(paramKeyEvent)) || (executeKeyEvent(paramKeyEvent));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramAccessibilityEvent.getEventType() == 4096)
    {
      bool1 = super.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent);
      return bool1;
    }
    int j = getChildCount();
    int i = 0;
    for (;;)
    {
      bool1 = bool2;
      if (i >= j) {
        break;
      }
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (position == mCurItem) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent))) {
          return true;
        }
      }
      i += 1;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int k = 0;
    int i = 0;
    int m = ViewCompat.getOverScrollMode(this);
    boolean bool;
    if ((m == 0) || ((m == 1) && (mAdapter != null) && (mAdapter.getCount() > 1)))
    {
      int j;
      if (!mLeftEdge.isFinished())
      {
        k = paramCanvas.save();
        i = getHeight() - getPaddingTop() - getPaddingBottom();
        m = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i + getPaddingTop(), mFirstOffset * m);
        mLeftEdge.setSize(i, m);
        j = mLeftEdge.draw(paramCanvas) | false;
        paramCanvas.restoreToCount(k);
      }
      k = j;
      if (!mRightEdge.isFinished())
      {
        m = paramCanvas.save();
        k = getWidth();
        int n = getHeight();
        int i1 = getPaddingTop();
        int i2 = getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(mLastOffset + 1.0F) * k);
        mRightEdge.setSize(n - i1 - i2, k);
        bool = j | mRightEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(m);
      }
    }
    for (;;)
    {
      if (bool) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return;
      mLeftEdge.finish();
      mRightEdge.finish();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = mMarginDrawable;
    if ((localDrawable != null) && (localDrawable.isStateful())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  public boolean executeKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode())
      {
      }
    }
    do
    {
      do
      {
        return false;
        return arrowScroll(17);
        return arrowScroll(66);
      } while (Build.VERSION.SDK_INT < 11);
      if (KeyEventCompat.hasNoModifiers(paramKeyEvent)) {
        return arrowScroll(2);
      }
    } while (!KeyEventCompat.hasModifiers(paramKeyEvent, 1));
    return arrowScroll(1);
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
    return generateDefaultLayoutParams();
  }
  
  public PagerAdapter getAdapter()
  {
    return mAdapter;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (mDrawingOrder == 2) {
      i = paramInt1 - 1 - paramInt2;
    }
    return mDrawingOrderedChildren.get(i)).getLayoutParams()).childIndex;
  }
  
  public int getCurrentItem()
  {
    return mCurItem;
  }
  
  public int getOffscreenPageLimit()
  {
    return mOffscreenPageLimit;
  }
  
  public int getPageMargin()
  {
    return mPageMargin;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mFirstLayout = true;
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(mEndScrollRunnable);
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((mPageMargin > 0) && (mMarginDrawable != null) && (mItems.size() > 0) && (mAdapter != null))
    {
      int k = getScrollX();
      int m = getWidth();
      float f3 = mPageMargin / m;
      Object localObject = (ItemInfo)mItems.get(0);
      float f1 = offset;
      int n = mItems.size();
      int i = position;
      int i1 = mItems.get(n - 1)).position;
      int j = 0;
      if (i < i1)
      {
        while ((i > position) && (j < n))
        {
          localObject = mItems;
          j += 1;
          localObject = (ItemInfo)((ArrayList)localObject).get(j);
        }
        float f2;
        if (i == position) {
          f2 = (offset + widthFactor) * m;
        }
        for (f1 = offset + widthFactor + f3;; f1 += 1.0F + f3)
        {
          if (mPageMargin + f2 > k)
          {
            mMarginDrawable.setBounds((int)f2, mTopPageBounds, (int)(mPageMargin + f2 + 0.5F), mBottomPageBounds);
            mMarginDrawable.draw(paramCanvas);
          }
          if (f2 > k + m) {
            return;
          }
          i += 1;
          break;
          f2 = (1.0F + f1) * m;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction() & 0xFF;
    if ((i == 3) || (i == 1))
    {
      mIsBeingDragged = false;
      mIsUnableToDrag = false;
      mActivePointerId = -1;
      if (mVelocityTracker != null)
      {
        mVelocityTracker.recycle();
        mVelocityTracker = null;
      }
    }
    do
    {
      return false;
      if (i == 0) {
        break;
      }
      if (mIsBeingDragged) {
        return true;
      }
    } while (mIsUnableToDrag);
    switch (i)
    {
    }
    for (;;)
    {
      if (mVelocityTracker == null) {
        mVelocityTracker = VelocityTracker.obtain();
      }
      mVelocityTracker.addMovement(paramMotionEvent);
      return mIsBeingDragged;
      i = mActivePointerId;
      if (i != -1)
      {
        i = MotionEventCompat.findPointerIndex(paramMotionEvent, i);
        float f2 = MotionEventCompat.getX(paramMotionEvent, i);
        float f1 = f2 - mLastMotionX;
        float f4 = Math.abs(f1);
        float f3 = MotionEventCompat.getY(paramMotionEvent, i);
        float f5 = Math.abs(f3 - mInitialMotionY);
        if (f1 != 0.0F)
        {
          float f6 = mLastMotionX;
          if (((f6 < mGutterSize) && (f1 > 0.0F)) || ((f6 > getWidth() - mGutterSize) && (f1 < 0.0F))) {}
          for (i = 1; (i == 0) && (canScroll(this, false, (int)f1, (int)f2, (int)f3)); i = 0)
          {
            mLastMotionX = f2;
            mLastMotionY = f3;
            mIsUnableToDrag = true;
            return false;
          }
        }
        if ((f4 > mTouchSlop) && (0.5F * f4 > f5))
        {
          mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent$1385ff();
          setScrollState(1);
          if (f1 > 0.0F)
          {
            f1 = mInitialMotionX + mTouchSlop;
            label356:
            mLastMotionX = f1;
            mLastMotionY = f3;
            setScrollingCacheEnabled(true);
          }
        }
        while ((mIsBeingDragged) && (performDrag(f2)))
        {
          ViewCompat.postInvalidateOnAnimation(this);
          break;
          f1 = mInitialMotionX - mTouchSlop;
          break label356;
          if (f5 > mTouchSlop) {
            mIsUnableToDrag = true;
          }
        }
        f1 = paramMotionEvent.getX();
        mInitialMotionX = f1;
        mLastMotionX = f1;
        f1 = paramMotionEvent.getY();
        mInitialMotionY = f1;
        mLastMotionY = f1;
        mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
        mIsUnableToDrag = false;
        mScroller.computeScrollOffset();
        if ((mScrollState == 2) && (Math.abs(mScroller.getFinalX() - mScroller.getCurrX()) > mCloseEnough))
        {
          mScroller.abortAnimation();
          mPopulatePending = false;
          populate();
          mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent$1385ff();
          setScrollState(1);
        }
        else
        {
          completeScroll(false);
          mIsBeingDragged = false;
          continue;
          onSecondaryPointerUp(paramMotionEvent);
        }
      }
    }
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getChildCount();
    int i3 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    paramInt2 = getPaddingLeft();
    paramInt1 = getPaddingTop();
    int i = getPaddingRight();
    paramInt3 = getPaddingBottom();
    int i4 = getScrollX();
    int j = 0;
    int m = 0;
    View localView;
    LayoutParams localLayoutParams;
    int i5;
    int k;
    label154:
    int n;
    if (m < i1)
    {
      localView = getChildAt(m);
      if (localView.getVisibility() == 8) {
        break label671;
      }
      localLayoutParams = (LayoutParams)localView.getLayoutParams();
      if (!isDecor) {
        break label671;
      }
      paramInt4 = gravity;
      i5 = gravity;
      switch (paramInt4 & 0x7)
      {
      case 2: 
      case 4: 
      default: 
        paramInt4 = paramInt2;
        k = paramInt2;
        switch (i5 & 0x70)
        {
        default: 
          n = paramInt1;
          paramInt2 = paramInt1;
          paramInt1 = paramInt3;
          paramInt3 = n;
          label204:
          paramInt4 += i4;
          localView.layout(paramInt4, paramInt3, localView.getMeasuredWidth() + paramInt4, localView.getMeasuredHeight() + paramInt3);
          j += 1;
          paramInt4 = i;
          paramInt3 = k;
          i = paramInt1;
          paramInt1 = j;
        }
        break;
      }
    }
    for (;;)
    {
      m += 1;
      k = paramInt3;
      j = paramInt1;
      paramInt1 = paramInt2;
      paramInt3 = i;
      i = paramInt4;
      paramInt2 = k;
      break;
      k = localView.getMeasuredWidth();
      paramInt4 = paramInt2;
      k += paramInt2;
      break label154;
      paramInt4 = Math.max((i3 - localView.getMeasuredWidth()) / 2, paramInt2);
      k = paramInt2;
      break label154;
      k = localView.getMeasuredWidth();
      paramInt4 = i + localView.getMeasuredWidth();
      n = i3 - i - k;
      i = paramInt4;
      k = paramInt2;
      paramInt4 = n;
      break label154;
      n = localView.getMeasuredHeight();
      paramInt2 = paramInt3;
      n += paramInt1;
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = n;
      break label204;
      n = Math.max((i2 - localView.getMeasuredHeight()) / 2, paramInt1);
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      paramInt3 = n;
      break label204;
      n = i2 - paramInt3 - localView.getMeasuredHeight();
      i5 = localView.getMeasuredHeight();
      paramInt2 = paramInt1;
      paramInt1 = paramInt3 + i5;
      paramInt3 = n;
      break label204;
      i = i3 - paramInt2 - i;
      paramInt4 = 0;
      while (paramInt4 < i1)
      {
        localView = getChildAt(paramInt4);
        if (localView.getVisibility() != 8)
        {
          localLayoutParams = (LayoutParams)localView.getLayoutParams();
          if (!isDecor)
          {
            ItemInfo localItemInfo = infoForChild(localView);
            if (localItemInfo != null)
            {
              float f = i;
              k = (int)(offset * f) + paramInt2;
              if (needsMeasure)
              {
                needsMeasure = false;
                f = i;
                localView.measure(View.MeasureSpec.makeMeasureSpec((int)(widthFactor * f), 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - paramInt1 - paramInt3, 1073741824));
              }
              localView.layout(k, paramInt1, localView.getMeasuredWidth() + k, localView.getMeasuredHeight() + paramInt1);
            }
          }
        }
        paramInt4 += 1;
      }
      mTopPageBounds = paramInt1;
      mBottomPageBounds = (i2 - paramInt3);
      mDecorChildCount = j;
      if (mFirstLayout) {
        scrollToItem(mCurItem, false, 0, false);
      }
      mFirstLayout = false;
      return;
      label671:
      paramInt4 = j;
      j = paramInt1;
      k = paramInt2;
      paramInt1 = paramInt4;
      paramInt4 = i;
      i = paramInt3;
      paramInt2 = j;
      paramInt3 = k;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    paramInt1 = getMeasuredWidth();
    mGutterSize = Math.min(paramInt1 / 10, mDefaultGutterSize);
    paramInt1 = paramInt1 - getPaddingLeft() - getPaddingRight();
    paramInt2 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int i4 = getChildCount();
    int k = 0;
    View localView;
    int i;
    int j;
    LayoutParams localLayoutParams;
    int m;
    int i1;
    label183:
    int n;
    if (k < i4)
    {
      localView = getChildAt(k);
      i = paramInt1;
      j = paramInt2;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (LayoutParams)localView.getLayoutParams();
        i = paramInt1;
        j = paramInt2;
        if (localLayoutParams != null)
        {
          i = paramInt1;
          j = paramInt2;
          if (isDecor)
          {
            i = gravity & 0x7;
            m = gravity & 0x70;
            i1 = Integer.MIN_VALUE;
            j = Integer.MIN_VALUE;
            if ((m != 48) && (m != 80)) {
              break label333;
            }
            m = 1;
            if ((i != 3) && (i != 5)) {
              break label339;
            }
            n = 1;
            label198:
            if (m == 0) {
              break label345;
            }
            i = 1073741824;
            label208:
            if (width == -2) {
              break label528;
            }
            i1 = 1073741824;
            if (width == -1) {
              break label522;
            }
            i = width;
          }
        }
      }
    }
    for (;;)
    {
      int i3;
      if (height != -2)
      {
        i2 = 1073741824;
        j = i2;
        if (height != -1)
        {
          i3 = height;
          j = i2;
        }
      }
      for (int i2 = i3;; i2 = paramInt2)
      {
        localView.measure(View.MeasureSpec.makeMeasureSpec(i, i1), View.MeasureSpec.makeMeasureSpec(i2, j));
        if (m != 0)
        {
          j = paramInt2 - localView.getMeasuredHeight();
          i = paramInt1;
        }
        for (;;)
        {
          k += 1;
          paramInt1 = i;
          paramInt2 = j;
          break;
          label333:
          m = 0;
          break label183;
          label339:
          n = 0;
          break label198;
          label345:
          i = i1;
          if (n == 0) {
            break label208;
          }
          j = 1073741824;
          i = i1;
          break label208;
          i = paramInt1;
          j = paramInt2;
          if (n != 0)
          {
            i = paramInt1 - localView.getMeasuredWidth();
            j = paramInt2;
          }
        }
        mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);
        mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
        mInLayout = true;
        populate();
        mInLayout = false;
        i = getChildCount();
        paramInt2 = 0;
        while (paramInt2 < i)
        {
          localView = getChildAt(paramInt2);
          if (localView.getVisibility() != 8)
          {
            localLayoutParams = (LayoutParams)localView.getLayoutParams();
            if ((localLayoutParams == null) || (!isDecor))
            {
              float f = paramInt1;
              localView.measure(View.MeasureSpec.makeMeasureSpec((int)(widthFactor * f), 1073741824), mChildHeightMeasureSpec);
            }
          }
          paramInt2 += 1;
        }
        return;
      }
      label522:
      i = paramInt1;
      continue;
      label528:
      i1 = i;
      i = paramInt1;
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    int i;
    int j;
    int i2;
    int n;
    View localView;
    int k;
    int m;
    label132:
    int i4;
    if (mDecorChildCount > 0)
    {
      int i1 = getScrollX();
      i = getPaddingLeft();
      j = getPaddingRight();
      i2 = getWidth();
      int i3 = getChildCount();
      n = 0;
      if (n < i3)
      {
        localView = getChildAt(n);
        LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
        if (!isDecor) {
          break label396;
        }
        switch (gravity & 0x7)
        {
        case 2: 
        case 4: 
        default: 
          k = i;
          m = j;
          j = i;
          i = m;
          i4 = k + i1 - localView.getLeft();
          k = i;
          m = j;
          if (i4 != 0)
          {
            localView.offsetLeftAndRight(i4);
            m = j;
            k = i;
          }
          break;
        }
      }
    }
    for (;;)
    {
      n += 1;
      i = m;
      j = k;
      break;
      k = localView.getWidth();
      m = k + i;
      k = i;
      i = j;
      j = m;
      break label132;
      k = Math.max((i2 - localView.getMeasuredWidth()) / 2, i);
      m = i;
      i = j;
      j = m;
      break label132;
      k = i2 - j - localView.getMeasuredWidth();
      i4 = localView.getMeasuredWidth();
      m = i;
      i = j + i4;
      j = m;
      break label132;
      if (mOnPageChangeListener != null) {
        mOnPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
      }
      if (mInternalPageChangeListener != null) {
        mInternalPageChangeListener.onPageScrolled(paramInt1, paramFloat, paramInt2);
      }
      if (mPageTransformer != null)
      {
        getScrollX();
        paramInt2 = getChildCount();
        paramInt1 = 0;
        while (paramInt1 < paramInt2)
        {
          localView = getChildAt(paramInt1);
          if (!getLayoutParamsisDecor)
          {
            localView.getLeft();
            getClientWidth();
          }
          paramInt1 += 1;
        }
      }
      mCalledSuper = true;
      return;
      label396:
      k = j;
      m = i;
    }
  }
  
  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int k = -1;
    int j = getChildCount();
    int i;
    if ((paramInt & 0x2) != 0)
    {
      k = 1;
      i = 0;
    }
    while (i != j)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() == 0)
      {
        ItemInfo localItemInfo = infoForChild(localView);
        if ((localItemInfo != null) && (position == mCurItem) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          i = j - 1;
          j = -1;
          continue;
        }
      }
      i += k;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (mAdapter != null)
    {
      mAdapter.restoreState(adapterState, loader);
      setCurrentItemInternal(position, false, true);
      return;
    }
    mRestoredCurItem = position;
    mRestoredAdapterState = adapterState;
    mRestoredClassLoader = loader;
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    position = mCurItem;
    if (mAdapter != null) {
      adapterState = mAdapter.saveState();
    }
    return localSavedState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      recomputeScrollPosition(paramInt1, paramInt3, mPageMargin, mPageMargin);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int m = 0;
    if (mFakeDragging) {
      return true;
    }
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0)) {
      return false;
    }
    if ((mAdapter == null) || (mAdapter.getCount() == 0)) {
      return false;
    }
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    int i = m;
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    default: 
      i = m;
    }
    for (;;)
    {
      if (i != 0) {
        ViewCompat.postInvalidateOnAnimation(this);
      }
      return true;
      mScroller.abortAnimation();
      mPopulatePending = false;
      populate();
      float f1 = paramMotionEvent.getX();
      mInitialMotionX = f1;
      mLastMotionX = f1;
      f1 = paramMotionEvent.getY();
      mInitialMotionY = f1;
      mLastMotionY = f1;
      mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      i = m;
      continue;
      float f2;
      if (!mIsBeingDragged)
      {
        i = MotionEventCompat.findPointerIndex(paramMotionEvent, mActivePointerId);
        f1 = MotionEventCompat.getX(paramMotionEvent, i);
        float f3 = Math.abs(f1 - mLastMotionX);
        f2 = MotionEventCompat.getY(paramMotionEvent, i);
        float f4 = Math.abs(f2 - mLastMotionY);
        if ((f3 > mTouchSlop) && (f3 > f4))
        {
          mIsBeingDragged = true;
          requestParentDisallowInterceptTouchEvent$1385ff();
          if (f1 - mInitialMotionX <= 0.0F) {
            break label377;
          }
        }
      }
      Object localObject;
      label377:
      for (f1 = mInitialMotionX + mTouchSlop;; f1 = mInitialMotionX - mTouchSlop)
      {
        mLastMotionX = f1;
        mLastMotionY = f2;
        setScrollState(1);
        setScrollingCacheEnabled(true);
        localObject = getParent();
        if (localObject != null) {
          ((ViewParent)localObject).requestDisallowInterceptTouchEvent(true);
        }
        i = m;
        if (!mIsBeingDragged) {
          break;
        }
        bool1 = performDrag(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, mActivePointerId))) | false;
        break;
      }
      boolean bool1 = m;
      if (mIsBeingDragged)
      {
        localObject = mVelocityTracker;
        ((VelocityTracker)localObject).computeCurrentVelocity(1000, mMaximumVelocity);
        int j = (int)VelocityTrackerCompat.getXVelocity((VelocityTracker)localObject, mActivePointerId);
        mPopulatePending = true;
        m = getClientWidth();
        int n = getScrollX();
        localObject = infoForCurrentScrollPosition();
        setCurrentItemInternal(determineTargetPage(position, (n / m - offset) / widthFactor, j, (int)(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, mActivePointerId)) - mInitialMotionX)), true, true, j);
        mActivePointerId = -1;
        endDrag();
        boolean bool3 = mLeftEdge.onRelease();
        boolean bool2 = mRightEdge.onRelease() | bool3;
        continue;
        bool2 = m;
        if (mIsBeingDragged)
        {
          scrollToItem(mCurItem, true, 0, false);
          mActivePointerId = -1;
          endDrag();
          bool3 = mLeftEdge.onRelease();
          bool2 = mRightEdge.onRelease() | bool3;
          continue;
          int k = MotionEventCompat.getActionIndex(paramMotionEvent);
          mLastMotionX = MotionEventCompat.getX(paramMotionEvent, k);
          mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, k);
          k = m;
          continue;
          onSecondaryPointerUp(paramMotionEvent);
          mLastMotionX = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, mActivePointerId));
          k = m;
        }
      }
    }
  }
  
  final void populate()
  {
    populate(mCurItem);
  }
  
  public void removeView(View paramView)
  {
    if (mInLayout)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }
  
  public void setAdapter(PagerAdapter paramPagerAdapter)
  {
    if (mAdapter != null)
    {
      mAdapter.unregisterDataSetObserver(mObserver);
      int i = 0;
      while (i < mItems.size())
      {
        localObject = (ItemInfo)mItems.get(i);
        mAdapter.destroyItem(this, position, object);
        i += 1;
      }
      mAdapter.finishUpdate$52bc874c();
      mItems.clear();
      int j;
      for (i = 0; i < getChildCount(); i = j + 1)
      {
        j = i;
        if (!getChildAtgetLayoutParamsisDecor)
        {
          removeViewAt(i);
          j = i - 1;
        }
      }
      mCurItem = 0;
      scrollTo(0, 0);
    }
    Object localObject = mAdapter;
    mAdapter = paramPagerAdapter;
    mExpectedAdapterCount = 0;
    boolean bool;
    if (mAdapter != null)
    {
      if (mObserver == null) {
        mObserver = new PagerObserver((byte)0);
      }
      mAdapter.registerDataSetObserver(mObserver);
      mPopulatePending = false;
      bool = mFirstLayout;
      mFirstLayout = true;
      mExpectedAdapterCount = mAdapter.getCount();
      if (mRestoredCurItem < 0) {
        break label293;
      }
      mAdapter.restoreState(mRestoredAdapterState, mRestoredClassLoader);
      setCurrentItemInternal(mRestoredCurItem, false, true);
      mRestoredCurItem = -1;
      mRestoredAdapterState = null;
      mRestoredClassLoader = null;
    }
    for (;;)
    {
      if ((mAdapterChangeListener != null) && (localObject != paramPagerAdapter)) {
        mAdapterChangeListener.onAdapterChanged((PagerAdapter)localObject, paramPagerAdapter);
      }
      return;
      label293:
      if (!bool) {
        populate();
      } else {
        requestLayout();
      }
    }
  }
  
  void setChildrenDrawingOrderEnabledCompat(boolean paramBoolean)
  {
    if ((Build.VERSION.SDK_INT < 7) || (mSetChildrenDrawingOrderEnabled == null)) {}
    try
    {
      mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] { Boolean.TYPE });
      try
      {
        mSetChildrenDrawingOrderEnabled.invoke(this, new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      catch (Exception localException) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public void setCurrentItem(int paramInt)
  {
    mPopulatePending = false;
    if (!mFirstLayout) {}
    for (boolean bool = true;; bool = false)
    {
      setCurrentItemInternal(paramInt, bool, false);
      return;
    }
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    mPopulatePending = false;
    setCurrentItemInternal(paramInt, paramBoolean, false);
  }
  
  final OnPageChangeListener setInternalPageChangeListener(OnPageChangeListener paramOnPageChangeListener)
  {
    OnPageChangeListener localOnPageChangeListener = mInternalPageChangeListener;
    mInternalPageChangeListener = paramOnPageChangeListener;
    return localOnPageChangeListener;
  }
  
  public void setOffscreenPageLimit(int paramInt)
  {
    int i = paramInt;
    if (paramInt <= 0)
    {
      new StringBuilder("Requested offscreen page limit ").append(paramInt).append(" too small; defaulting to 1");
      i = 1;
    }
    if (i != mOffscreenPageLimit)
    {
      mOffscreenPageLimit = i;
      populate();
    }
  }
  
  void setOnAdapterChangeListener(OnAdapterChangeListener paramOnAdapterChangeListener)
  {
    mAdapterChangeListener = paramOnAdapterChangeListener;
  }
  
  public void setOnPageChangeListener(OnPageChangeListener paramOnPageChangeListener)
  {
    mOnPageChangeListener = paramOnPageChangeListener;
  }
  
  public void setPageMargin(int paramInt)
  {
    int i = mPageMargin;
    mPageMargin = paramInt;
    int j = getWidth();
    recomputeScrollPosition(j, j, paramInt, i);
    requestLayout();
  }
  
  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    mMarginDrawable = paramDrawable;
    if (paramDrawable != null) {
      refreshDrawableState();
    }
    if (paramDrawable == null) {}
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }
  
  public void setPageTransformer(boolean paramBoolean, PageTransformer paramPageTransformer)
  {
    int j = 1;
    boolean bool1;
    boolean bool2;
    label28:
    int i;
    if (Build.VERSION.SDK_INT >= 11)
    {
      if (paramPageTransformer == null) {
        break label75;
      }
      bool1 = true;
      if (mPageTransformer == null) {
        break label81;
      }
      bool2 = true;
      if (bool1 == bool2) {
        break label87;
      }
      i = 1;
      label37:
      mPageTransformer = paramPageTransformer;
      setChildrenDrawingOrderEnabledCompat(bool1);
      if (!bool1) {
        break label92;
      }
      if (paramBoolean) {
        j = 2;
      }
    }
    label75:
    label81:
    label87:
    label92:
    for (mDrawingOrder = j;; mDrawingOrder = 0)
    {
      if (i != 0) {
        populate();
      }
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label28;
      i = 0;
      break label37;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == mMarginDrawable);
  }
  
  static abstract interface Decor {}
  
  static final class ItemInfo
  {
    Object object;
    float offset;
    int position;
    boolean scrolling;
    float widthFactor;
  }
  
  public static class LayoutParams
    extends ViewGroup.LayoutParams
  {
    int childIndex;
    public int gravity;
    public boolean isDecor;
    boolean needsMeasure;
    int position;
    float widthFactor = 0.0F;
    
    public LayoutParams()
    {
      super(-1);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.LAYOUT_ATTRS);
      gravity = paramContext.getInteger(0, 48);
      paramContext.recycle();
    }
  }
  
  final class MyAccessibilityDelegate
    extends AccessibilityDelegateCompat
  {
    MyAccessibilityDelegate() {}
    
    private boolean canScroll()
    {
      return (mAdapter != null) && (mAdapter.getCount() > 1);
    }
    
    public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ViewPager.class.getName());
      paramView = AccessibilityRecordCompat.obtain();
      paramView.setScrollable(canScroll());
      if ((paramAccessibilityEvent.getEventType() == 4096) && (mAdapter != null))
      {
        paramView.setItemCount(mAdapter.getCount());
        paramView.setFromIndex(mCurItem);
        paramView.setToIndex(mCurItem);
      }
    }
    
    public final void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramAccessibilityNodeInfoCompat);
      paramAccessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
      paramAccessibilityNodeInfoCompat.setScrollable(canScroll());
      if (canScrollHorizontally(1)) {
        paramAccessibilityNodeInfoCompat.addAction(4096);
      }
      if (canScrollHorizontally(-1)) {
        paramAccessibilityNodeInfoCompat.addAction(8192);
      }
    }
    
    public final boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
    {
      if (super.performAccessibilityAction(paramView, paramInt, paramBundle)) {
        return true;
      }
      switch (paramInt)
      {
      default: 
        return false;
      case 4096: 
        if (canScrollHorizontally(1))
        {
          setCurrentItem(mCurItem + 1);
          return true;
        }
        return false;
      }
      if (canScrollHorizontally(-1))
      {
        setCurrentItem(mCurItem - 1);
        return true;
      }
      return false;
    }
  }
  
  static abstract interface OnAdapterChangeListener
  {
    public abstract void onAdapterChanged(PagerAdapter paramPagerAdapter1, PagerAdapter paramPagerAdapter2);
  }
  
  public static abstract interface OnPageChangeListener
  {
    public abstract void onPageScrollStateChanged(int paramInt);
    
    public abstract void onPageScrolled(int paramInt1, float paramFloat, int paramInt2);
    
    public abstract void onPageSelected(int paramInt);
  }
  
  public static abstract interface PageTransformer
  {
    public abstract void transformPage$5359e7dd();
  }
  
  final class PagerObserver
    extends DataSetObserver
  {
    private PagerObserver() {}
    
    public final void onChanged()
    {
      dataSetChanged();
    }
    
    public final void onInvalidated()
    {
      dataSetChanged();
    }
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR;
    Parcelable adapterState;
    ClassLoader loader;
    int position;
    
    static
    {
      ParcelableCompatCreatorCallbacks local1 = new ParcelableCompatCreatorCallbacks()
      {
        private static ViewPager.SavedState createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
        {
          return new ViewPager.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
        }
        
        private static ViewPager.SavedState[] newArray(int paramAnonymousInt)
        {
          return new ViewPager.SavedState[paramAnonymousInt];
        }
      };
      if (Build.VERSION.SDK_INT >= 13) {
        ParcelableCompatCreatorHoneycombMR2Stub.instantiate(local1);
      }
      CREATOR = new ParcelableCompat.CompatCreator(local1);
    }
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super();
      ClassLoader localClassLoader = paramClassLoader;
      if (paramClassLoader == null) {
        localClassLoader = getClass().getClassLoader();
      }
      position = paramParcel.readInt();
      adapterState = paramParcel.readParcelable(localClassLoader);
      loader = localClassLoader;
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + position + "}";
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(position);
      paramParcel.writeParcelable(adapterState, paramInt);
    }
  }
  
  public static class SimpleOnPageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    public void onPageScrollStateChanged(int paramInt) {}
    
    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
    
    public void onPageSelected(int paramInt) {}
  }
  
  static final class ViewPositionComparator
    implements Comparator<View>
  {
    private static int compare(View paramView1, View paramView2)
    {
      paramView1 = (ViewPager.LayoutParams)paramView1.getLayoutParams();
      paramView2 = (ViewPager.LayoutParams)paramView2.getLayoutParams();
      if (isDecor != isDecor)
      {
        if (isDecor) {
          return 1;
        }
        return -1;
      }
      return position - position;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
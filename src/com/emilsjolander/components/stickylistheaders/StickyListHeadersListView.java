package com.emilsjolander.components.stickylistheaders;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SectionIndexer;
import java.lang.reflect.Field;
import java.util.ArrayList;

public class StickyListHeadersListView
  extends ListView
{
  private AdapterWrapper mAdapter;
  private AdapterWrapper.OnHeaderClickListener mAdapterHeaderClickListener = new AdapterWrapper.OnHeaderClickListener()
  {
    public final void onHeaderClick$17e13fe2() {}
  };
  private boolean mAreHeadersSticky = true;
  private final Rect mClippingRect = new Rect();
  private Boolean mClippingToPadding;
  private Long mCurrentHeaderId = null;
  private DataSetObserver mDataSetChangedObserver = new DataSetObserver()
  {
    public final void onChanged()
    {
      StickyListHeadersListView.this.reset();
    }
    
    public final void onInvalidated()
    {
      StickyListHeadersListView.this.reset();
    }
  };
  private Drawable mDivider;
  private int mDividerHeight;
  private boolean mDrawingListUnderStickyHeader = false;
  private ArrayList<View> mFooterViews;
  private View mHeader;
  private boolean mHeaderBeingPressed = false;
  private int mHeaderBottomPosition;
  private float mHeaderDownY = -1.0F;
  private Integer mHeaderPosition;
  private OnHeaderClickListener mOnHeaderClickListener;
  private AbsListView.OnScrollListener mOnScrollListener = new AbsListView.OnScrollListener()
  {
    public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      if (mOnScrollListenerDelegate != null) {
        mOnScrollListenerDelegate.onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
      }
      if (Build.VERSION.SDK_INT >= 8) {
        StickyListHeadersListView.this.scrollChanged(paramAnonymousInt1);
      }
    }
    
    public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if (mOnScrollListenerDelegate != null) {
        mOnScrollListenerDelegate.onScrollStateChanged(paramAnonymousAbsListView, paramAnonymousInt);
      }
    }
  };
  private AbsListView.OnScrollListener mOnScrollListenerDelegate;
  private Field mSelectorPositionField;
  private Rect mSelectorRect = new Rect();
  private ViewConfiguration mViewConfig;
  
  public StickyListHeadersListView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public StickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public StickyListHeadersListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setOnScrollListener(mOnScrollListener);
    super.setDivider(null);
    super.setDividerHeight(0);
    mViewConfig = ViewConfiguration.get(paramContext);
    if (mClippingToPadding == null) {
      mClippingToPadding = Boolean.valueOf(true);
    }
    try
    {
      paramContext = AbsListView.class.getDeclaredField("mSelectorRect");
      paramContext.setAccessible(true);
      mSelectorRect = ((Rect)paramContext.get(this));
      if (Build.VERSION.SDK_INT >= 14)
      {
        mSelectorPositionField = AbsListView.class.getDeclaredField("mSelectorPosition");
        mSelectorPositionField.setAccessible(true);
      }
      return;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    catch (IllegalArgumentException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    catch (IllegalAccessException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static int convertDpToPixel$62b020d0(Context paramContext)
  {
    return (int)(getResourcesgetDisplayMetricsdensityDpi / 160.0F * 32.0F);
  }
  
  private void drawStickyHeader(Canvas paramCanvas)
  {
    if (mHeader == null) {
      return;
    }
    int i = getHeaderHeight();
    int j = mHeaderBottomPosition - i;
    mClippingRect.left = getPaddingLeft();
    mClippingRect.right = (getWidth() - getPaddingRight());
    mClippingRect.bottom = (i + j);
    Rect localRect = mClippingRect;
    if (mClippingToPadding.booleanValue()) {}
    for (i = getPaddingTop();; i = 0)
    {
      top = i;
      paramCanvas.save();
      paramCanvas.clipRect(mClippingRect);
      paramCanvas.translate(getPaddingLeft(), j);
      mHeader.draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  private int fixedFirstVisibleItem(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return paramInt;
    }
    int j = 0;
    for (;;)
    {
      int i = paramInt;
      if (j < getChildCount())
      {
        if (getChildAt(j).getBottom() >= 0) {
          i = paramInt + j;
        }
      }
      else
      {
        paramInt = i;
        if (mClippingToPadding.booleanValue()) {
          break;
        }
        paramInt = i;
        if (getPaddingTop() <= 0) {
          break;
        }
        paramInt = i;
        if (super.getChildAt(0).getTop() <= 0) {
          break;
        }
        paramInt = i;
        if (i <= 0) {
          break;
        }
        return i - 1;
      }
      j += 1;
    }
  }
  
  private int getHeaderHeight()
  {
    if (mHeader == null) {
      return 0;
    }
    return mHeader.getMeasuredHeight();
  }
  
  private int getSelectorPosition()
  {
    int i;
    if (mSelectorPositionField == null)
    {
      i = 0;
      while (i < getChildCount())
      {
        if (getChildAt(i).getBottom() == mSelectorRect.bottom) {
          return i + fixedFirstVisibleItem(getFirstVisiblePosition());
        }
        i += 1;
      }
    }
    try
    {
      i = mSelectorPositionField.getInt(this);
      return i;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return -1;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
  }
  
  private boolean hasStickyHeaderAtPosition(int paramInt)
  {
    paramInt -= getHeaderViewsCount();
    return (mAreHeadersSticky) && (paramInt > 0) && (paramInt < mAdapter.getCount()) && (mAdapter.getHeaderId(paramInt) == mAdapter.getHeaderId(paramInt - 1));
  }
  
  private boolean isDrawingListUnderStickyHeader()
  {
    return mDrawingListUnderStickyHeader;
  }
  
  private boolean isScrollBarOverlay()
  {
    int i = getScrollBarStyle();
    return (i == 0) || (i == 33554432);
  }
  
  private void measureHeader()
  {
    int j = getWidth();
    int k = getPaddingLeft();
    int m = convertDpToPixel$62b020d0(getContext());
    int i = getScrollBarStyle();
    label43:
    ViewGroup.LayoutParams localLayoutParams;
    if ((i == 0) || (i == 33554432))
    {
      i = 1;
      if (i == 0) {
        break label179;
      }
      i = 0;
      j = View.MeasureSpec.makeMeasureSpec(j - k - m - i, 1073741824);
      localLayoutParams = mHeader.getLayoutParams();
      if (localLayoutParams == null) {
        mHeader.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
      }
      if ((localLayoutParams == null) || (height <= 0)) {
        break label187;
      }
    }
    label179:
    label187:
    for (i = View.MeasureSpec.makeMeasureSpec(height, 1073741824);; i = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      mHeader.measure(j, i);
      if (Build.VERSION.SDK_INT >= 17) {
        mHeader.setLayoutDirection(getLayoutDirection());
      }
      mHeader.layout(getPaddingLeft(), 0, getWidth() - convertDpToPixel$62b020d0(getContext()), mHeader.getMeasuredHeight());
      return;
      i = 0;
      break;
      i = getVerticalScrollbarWidth();
      break label43;
    }
  }
  
  private void positionSelectorRect()
  {
    if (!mSelectorRect.isEmpty())
    {
      int i = getSelectorPosition();
      if (i >= 0)
      {
        Object localObject = getChildAt(i - fixedFirstVisibleItem(getFirstVisiblePosition()));
        if ((localObject instanceof WrapperView))
        {
          localObject = (WrapperView)localObject;
          Rect localRect = mSelectorRect;
          i = ((WrapperView)localObject).getTop();
          top = (mItemTop + i);
        }
      }
    }
  }
  
  private void reset()
  {
    mHeader = null;
    mCurrentHeaderId = null;
    mHeaderPosition = null;
    mHeaderBottomPosition = -1;
  }
  
  private void scrollChanged(int paramInt)
  {
    int i1 = 0;
    int n = 0;
    if (mAdapter == null) {}
    for (int i = 0; (i == 0) || (!mAreHeadersSticky); i = mAdapter.getCount()) {
      return;
    }
    int i2 = getHeaderViewsCount();
    int i3 = fixedFirstVisibleItem(paramInt) - i2;
    if ((i3 < 0) || (i3 > i - 1))
    {
      reset();
      updateHeaderVisibilities();
      invalidate();
      return;
    }
    int j;
    int k;
    label190:
    Object localObject;
    label261:
    label343:
    label379:
    int m;
    if ((mHeaderPosition == null) || (mHeaderPosition.intValue() != i3))
    {
      mHeaderPosition = Integer.valueOf(i3);
      mCurrentHeaderId = Long.valueOf(mAdapter.getHeaderId(i3));
      mHeader = mAdapter.getHeaderView(mHeaderPosition.intValue(), mHeader, this);
      i = getWidth();
      j = getPaddingLeft();
      k = convertDpToPixel$62b020d0(getContext());
      paramInt = getScrollBarStyle();
      if ((paramInt == 0) || (paramInt == 33554432))
      {
        paramInt = 1;
        if (paramInt == 0) {
          break label478;
        }
        paramInt = 0;
        i = View.MeasureSpec.makeMeasureSpec(i - j - k - paramInt, 1073741824);
        localObject = mHeader.getLayoutParams();
        if (localObject == null) {
          mHeader.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, -2));
        }
        if ((localObject == null) || (height <= 0)) {
          break label486;
        }
        paramInt = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
        mHeader.measure(i, paramInt);
        if (Build.VERSION.SDK_INT >= 17) {
          mHeader.setLayoutDirection(getLayoutDirection());
        }
        mHeader.layout(getPaddingLeft(), 0, getWidth() - convertDpToPixel$62b020d0(getContext()), mHeader.getMeasuredHeight());
      }
    }
    else
    {
      int i4 = getChildCount();
      if (i4 == 0) {
        break label564;
      }
      localObject = null;
      i = Integer.MAX_VALUE;
      k = 0;
      paramInt = 0;
      if (k >= i4) {
        break label506;
      }
      View localView = super.getChildAt(k);
      if ((mFooterViews == null) || (!mFooterViews.contains(localView))) {
        break label495;
      }
      j = 1;
      int i5 = localView.getTop();
      if (!mClippingToPadding.booleanValue()) {
        break label500;
      }
      m = getPaddingTop();
      label402:
      m = i5 - m;
      if ((m < 0) || ((localObject != null) && ((paramInt != 0) || (((WrapperView)localObject).hasHeader())) && (((j == 0) && (!((WrapperView)localView).hasHeader())) || (m >= i)))) {
        break label662;
      }
      paramInt = j;
      i = m;
      localObject = localView;
    }
    label478:
    label486:
    label495:
    label500:
    label506:
    label564:
    label662:
    for (;;)
    {
      k += 1;
      break label343;
      paramInt = 0;
      break;
      paramInt = getVerticalScrollbarWidth();
      break label190;
      paramInt = View.MeasureSpec.makeMeasureSpec(0, 0);
      break label261;
      j = 0;
      break label379;
      m = 0;
      break label402;
      i = getHeaderHeight();
      if ((localObject != null) && ((paramInt != 0) || (((WrapperView)localObject).hasHeader()))) {
        if ((i3 == i2) && (super.getChildAt(0).getTop() > 0) && (!mClippingToPadding.booleanValue())) {
          mHeaderBottomPosition = 0;
        }
      }
      for (;;)
      {
        updateHeaderVisibilities();
        invalidate();
        return;
        paramInt = n;
        if (mClippingToPadding.booleanValue()) {
          paramInt = getPaddingTop();
        }
        mHeaderBottomPosition = Math.min(((View)localObject).getTop(), i + paramInt);
        if (mHeaderBottomPosition < paramInt) {}
        for (paramInt = i + paramInt;; paramInt = mHeaderBottomPosition)
        {
          mHeaderBottomPosition = paramInt;
          break;
        }
        paramInt = i1;
        if (mClippingToPadding.booleanValue()) {
          paramInt = getPaddingTop();
        }
        mHeaderBottomPosition = (i + paramInt);
      }
    }
  }
  
  private void updateHeaderVisibilities()
  {
    int i;
    int j;
    label22:
    View localView;
    if (mClippingToPadding.booleanValue())
    {
      i = getPaddingTop();
      int k = getChildCount();
      j = 0;
      if (j >= k) {
        return;
      }
      Object localObject = super.getChildAt(j);
      if ((localObject instanceof WrapperView))
      {
        localObject = (WrapperView)localObject;
        if (((WrapperView)localObject).hasHeader())
        {
          localView = mHeader;
          if (((WrapperView)localObject).getTop() >= i) {
            break label91;
          }
          localView.setVisibility(4);
        }
      }
    }
    for (;;)
    {
      j += 1;
      break label22;
      i = 0;
      break;
      label91:
      localView.setVisibility(0);
    }
  }
  
  private AdapterWrapper wrapAdapter(ListAdapter paramListAdapter)
  {
    if ((paramListAdapter instanceof SectionIndexer)) {}
    for (paramListAdapter = new SectionIndexerAdapterWrapper(getContext(), (StickyListHeadersAdapter)paramListAdapter);; paramListAdapter = new AdapterWrapper(getContext(), (StickyListHeadersAdapter)paramListAdapter))
    {
      mDivider = mDivider;
      mDividerHeight = mDividerHeight;
      paramListAdapter.registerDataSetObserver(mDataSetChangedObserver);
      mOnHeaderClickListener = mAdapterHeaderClickListener;
      return paramListAdapter;
    }
  }
  
  public void addFooterView(View paramView)
  {
    super.addFooterView(paramView);
    if (mFooterViews == null) {
      mFooterViews = new ArrayList();
    }
    mFooterViews.add(paramView);
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT < 8) {
      scrollChanged(getFirstVisiblePosition());
    }
    if (!mSelectorRect.isEmpty())
    {
      i = getSelectorPosition();
      if (i >= 0)
      {
        localObject = getChildAt(i - fixedFirstVisibleItem(getFirstVisiblePosition()));
        if ((localObject instanceof WrapperView))
        {
          localObject = (WrapperView)localObject;
          Rect localRect = mSelectorRect;
          i = ((WrapperView)localObject).getTop();
          top = (mItemTop + i);
        }
      }
    }
    if ((!mAreHeadersSticky) || (mHeader == null)) {
      super.dispatchDraw(paramCanvas);
    }
    do
    {
      return;
      if (!mDrawingListUnderStickyHeader)
      {
        mClippingRect.set(0, mHeaderBottomPosition, getWidth(), getHeight());
        paramCanvas.save();
        paramCanvas.clipRect(mClippingRect);
      }
      super.dispatchDraw(paramCanvas);
      if (!mDrawingListUnderStickyHeader) {
        paramCanvas.restore();
      }
    } while (mHeader == null);
    int i = getHeaderHeight();
    int j = mHeaderBottomPosition - i;
    mClippingRect.left = getPaddingLeft();
    mClippingRect.right = (getWidth() - getPaddingRight());
    mClippingRect.bottom = (i + j);
    Object localObject = mClippingRect;
    if (mClippingToPadding.booleanValue()) {}
    for (i = getPaddingTop();; i = 0)
    {
      top = i;
      paramCanvas.save();
      paramCanvas.clipRect(mClippingRect);
      paramCanvas.translate(getPaddingLeft(), j);
      mHeader.draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  public boolean getAreHeadersSticky()
  {
    return mAreHeadersSticky;
  }
  
  public StickyListHeadersAdapter getWrappedAdapter()
  {
    if (mAdapter == null) {
      return null;
    }
    return mAdapter.mDelegate;
  }
  
  public final View getWrappedView(int paramInt)
  {
    View localView2 = getChildAt(paramInt);
    View localView1 = localView2;
    if ((localView2 instanceof WrapperView)) {
      localView1 = mItem;
    }
    return localView1;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramBoolean)
    {
      reset();
      scrollChanged(getFirstVisiblePosition());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if ((i == 0) && (paramMotionEvent.getY() <= mHeaderBottomPosition))
    {
      mHeaderDownY = paramMotionEvent.getY();
      mHeaderBeingPressed = true;
      mHeader.setPressed(true);
      mHeader.invalidate();
      invalidate(0, 0, getWidth(), mHeaderBottomPosition);
    }
    do
    {
      do
      {
        return true;
        if (!mHeaderBeingPressed) {
          break label212;
        }
        if (Math.abs(paramMotionEvent.getY() - mHeaderDownY) >= mViewConfig.getScaledTouchSlop()) {
          break;
        }
      } while ((i != 1) && (i != 3));
      mHeaderDownY = -1.0F;
      mHeaderBeingPressed = false;
      mHeader.setPressed(false);
      mHeader.invalidate();
      invalidate(0, 0, getWidth(), mHeaderBottomPosition);
    } while (mOnHeaderClickListener == null);
    mHeaderPosition.intValue();
    mCurrentHeaderId.longValue();
    return true;
    mHeaderDownY = -1.0F;
    mHeaderBeingPressed = false;
    mHeader.setPressed(false);
    mHeader.invalidate();
    invalidate(0, 0, getWidth(), mHeaderBottomPosition);
    label212:
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performItemClick(View paramView, int paramInt, long paramLong)
  {
    View localView = paramView;
    if ((paramView instanceof WrapperView)) {
      localView = mItem;
    }
    return super.performItemClick(localView, paramInt, paramLong);
  }
  
  public boolean removeFooterView(View paramView)
  {
    if (super.removeFooterView(paramView))
    {
      mFooterViews.remove(paramView);
      return true;
    }
    return false;
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (isInEditMode())
    {
      super.setAdapter(paramListAdapter);
      return;
    }
    if (paramListAdapter == null)
    {
      mAdapter = null;
      reset();
      super.setAdapter(null);
      return;
    }
    if (!(paramListAdapter instanceof StickyListHeadersAdapter)) {
      throw new IllegalArgumentException("Adapter must implement StickyListHeadersAdapter");
    }
    if ((paramListAdapter instanceof SectionIndexer)) {}
    for (paramListAdapter = new SectionIndexerAdapterWrapper(getContext(), (StickyListHeadersAdapter)paramListAdapter);; paramListAdapter = new AdapterWrapper(getContext(), (StickyListHeadersAdapter)paramListAdapter))
    {
      mDivider = mDivider;
      mDividerHeight = mDividerHeight;
      paramListAdapter.registerDataSetObserver(mDataSetChangedObserver);
      mOnHeaderClickListener = mAdapterHeaderClickListener;
      mAdapter = paramListAdapter;
      reset();
      super.setAdapter(mAdapter);
      return;
    }
  }
  
  public void setAreHeadersSticky(boolean paramBoolean)
  {
    if (mAreHeadersSticky != paramBoolean)
    {
      mAreHeadersSticky = paramBoolean;
      requestLayout();
    }
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    super.setClipToPadding(paramBoolean);
    mClippingToPadding = Boolean.valueOf(paramBoolean);
  }
  
  public void setDivider(Drawable paramDrawable)
  {
    mDivider = paramDrawable;
    if (paramDrawable != null)
    {
      int i = paramDrawable.getIntrinsicHeight();
      if (i >= 0) {
        setDividerHeight(i);
      }
    }
    if (mAdapter != null)
    {
      mAdapter.mDivider = paramDrawable;
      requestLayout();
      invalidate();
    }
  }
  
  public void setDividerHeight(int paramInt)
  {
    mDividerHeight = paramInt;
    if (mAdapter != null)
    {
      mAdapter.mDividerHeight = paramInt;
      requestLayout();
      invalidate();
    }
  }
  
  public void setDrawingListUnderStickyHeader(boolean paramBoolean)
  {
    mDrawingListUnderStickyHeader = paramBoolean;
  }
  
  public void setOnHeaderClickListener(OnHeaderClickListener paramOnHeaderClickListener)
  {
    mOnHeaderClickListener = paramOnHeaderClickListener;
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    mOnScrollListenerDelegate = paramOnScrollListener;
  }
  
  public void setSelectionFromTop(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (hasStickyHeaderAtPosition(paramInt1)) {
      i = paramInt2 + getHeaderHeight();
    }
    super.setSelectionFromTop(paramInt1, i);
  }
  
  @SuppressLint({"NewApi"})
  public void smoothScrollToPositionFromTop(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (hasStickyHeaderAtPosition(paramInt1)) {
      i = paramInt2 + getHeaderHeight();
    }
    super.smoothScrollToPositionFromTop(paramInt1, i);
  }
  
  @SuppressLint({"NewApi"})
  public void smoothScrollToPositionFromTop(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    if (hasStickyHeaderAtPosition(paramInt1)) {
      i = paramInt2 + getHeaderHeight();
    }
    super.smoothScrollToPositionFromTop(paramInt1, i, paramInt3);
  }
  
  public static abstract interface OnHeaderClickListener
  {
    public abstract void onHeaderClick$2ffbb08c();
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
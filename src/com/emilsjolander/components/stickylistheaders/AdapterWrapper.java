package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import java.util.LinkedList;
import java.util.List;

class AdapterWrapper
  extends BaseAdapter
  implements StickyListHeadersAdapter
{
  private final Context mContext;
  private DataSetObserver mDataSetObserver = new DataSetObserver()
  {
    public final void onChanged()
    {
      AdapterWrapper.this.notifyDataSetChanged();
    }
    
    public final void onInvalidated()
    {
      mHeaderCache.clear();
      AdapterWrapper.this.notifyDataSetInvalidated();
    }
  };
  final StickyListHeadersAdapter mDelegate;
  Drawable mDivider;
  int mDividerHeight;
  private final List<View> mHeaderCache = new LinkedList();
  OnHeaderClickListener mOnHeaderClickListener;
  
  AdapterWrapper(Context paramContext, StickyListHeadersAdapter paramStickyListHeadersAdapter)
  {
    mContext = paramContext;
    mDelegate = paramStickyListHeadersAdapter;
    paramStickyListHeadersAdapter.registerDataSetObserver(mDataSetObserver);
  }
  
  private View configureHeader(WrapperView paramWrapperView, final int paramInt)
  {
    View localView;
    if (mHeader == null) {
      if (mHeaderCache.size() > 0) {
        localView = (View)mHeaderCache.remove(0);
      }
    }
    for (;;)
    {
      paramWrapperView = mDelegate.getHeaderView(paramInt, localView, paramWrapperView);
      if (paramWrapperView != null) {
        break;
      }
      throw new NullPointerException("Header view must not be null.");
      localView = null;
      continue;
      localView = mHeader;
    }
    paramWrapperView.setClickable(true);
    paramWrapperView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (mOnHeaderClickListener != null) {
          mDelegate.getHeaderId(paramInt);
        }
      }
    });
    return paramWrapperView;
  }
  
  private WrapperView getView$1ad34c65(int paramInt, View paramView)
  {
    Object localObject = null;
    View localView2;
    int i;
    label68:
    View localView1;
    if (paramView == null)
    {
      paramView = new WrapperView(mContext);
      localView2 = mDelegate.getView(paramInt, mItem, paramView);
      if ((paramInt == 0) || (mDelegate.getHeaderId(paramInt) != mDelegate.getHeaderId(paramInt - 1))) {
        break label159;
      }
      i = 1;
      if (i == 0) {
        break label164;
      }
      localObject = mHeader;
      if (localObject != null) {
        mHeaderCache.add(localObject);
      }
      localView1 = null;
      label98:
      if ((!(localView2 instanceof Checkable)) || ((paramView instanceof CheckableWrapperView))) {
        break label260;
      }
      localObject = new CheckableWrapperView(mContext);
    }
    for (;;)
    {
      paramView = mDivider;
      paramInt = mDividerHeight;
      if (localView2 != null) {
        break label297;
      }
      throw new NullPointerException("List view item must not be null.");
      paramView = (WrapperView)paramView;
      break;
      label159:
      i = 0;
      break label68;
      label164:
      if (mHeader == null) {
        if (mHeaderCache.size() <= 0) {}
      }
      for (localObject = (View)mHeaderCache.remove(0);; localObject = mHeader)
      {
        localView1 = mDelegate.getHeaderView(paramInt, (View)localObject, paramView);
        if (localView1 != null) {
          break;
        }
        throw new NullPointerException("Header view must not be null.");
      }
      localView1.setClickable(true);
      localView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (mOnHeaderClickListener != null) {
            mDelegate.getHeaderId(paramInt);
          }
        }
      });
      break label98;
      label260:
      localObject = paramView;
      if (!(localView2 instanceof Checkable))
      {
        localObject = paramView;
        if ((paramView instanceof CheckableWrapperView)) {
          localObject = new WrapperView(mContext);
        }
      }
    }
    label297:
    if (mItem != localView2)
    {
      ((WrapperView)localObject).removeView(mItem);
      mItem = localView2;
      ViewParent localViewParent = localView2.getParent();
      if ((localViewParent != null) && (localViewParent != localObject) && ((localViewParent instanceof ViewGroup))) {
        ((ViewGroup)localViewParent).removeView(localView2);
      }
      ((WrapperView)localObject).addView(localView2);
    }
    if (mHeader != localView1)
    {
      if (mHeader != null) {
        ((WrapperView)localObject).removeView(mHeader);
      }
      mHeader = localView1;
      if (localView1 != null) {
        ((WrapperView)localObject).addView(localView1);
      }
    }
    if (mDivider != paramView)
    {
      mDivider = paramView;
      mDividerHeight = paramInt;
      ((WrapperView)localObject).invalidate();
    }
    return (WrapperView)localObject;
  }
  
  private View popHeader()
  {
    if (mHeaderCache.size() > 0) {
      return (View)mHeaderCache.remove(0);
    }
    return null;
  }
  
  private boolean previousPositionHasSameHeader(int paramInt)
  {
    return (paramInt != 0) && (mDelegate.getHeaderId(paramInt) == mDelegate.getHeaderId(paramInt - 1));
  }
  
  private void recycleHeaderIfExists(WrapperView paramWrapperView)
  {
    paramWrapperView = mHeader;
    if (paramWrapperView != null) {
      mHeaderCache.add(paramWrapperView);
    }
  }
  
  private void setDivider(Drawable paramDrawable)
  {
    mDivider = paramDrawable;
  }
  
  private void setDividerHeight(int paramInt)
  {
    mDividerHeight = paramInt;
  }
  
  private void setOnHeaderClickListener(OnHeaderClickListener paramOnHeaderClickListener)
  {
    mOnHeaderClickListener = paramOnHeaderClickListener;
  }
  
  public boolean areAllItemsEnabled()
  {
    return mDelegate.areAllItemsEnabled();
  }
  
  public boolean equals(Object paramObject)
  {
    return mDelegate.equals(paramObject);
  }
  
  public int getCount()
  {
    return mDelegate.getCount();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return ((BaseAdapter)mDelegate).getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public final long getHeaderId(int paramInt)
  {
    return mDelegate.getHeaderId(paramInt);
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return mDelegate.getHeaderView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt)
  {
    return mDelegate.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return mDelegate.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    return mDelegate.getItemViewType(paramInt);
  }
  
  public int getViewTypeCount()
  {
    return mDelegate.getViewTypeCount();
  }
  
  public boolean hasStableIds()
  {
    return mDelegate.hasStableIds();
  }
  
  public int hashCode()
  {
    return mDelegate.hashCode();
  }
  
  public boolean isEmpty()
  {
    return mDelegate.isEmpty();
  }
  
  public boolean isEnabled(int paramInt)
  {
    return mDelegate.isEnabled(paramInt);
  }
  
  public void notifyDataSetChanged()
  {
    ((BaseAdapter)mDelegate).notifyDataSetChanged();
  }
  
  public void notifyDataSetInvalidated()
  {
    ((BaseAdapter)mDelegate).notifyDataSetInvalidated();
  }
  
  public String toString()
  {
    return mDelegate.toString();
  }
  
  public static abstract interface OnHeaderClickListener
  {
    public abstract void onHeaderClick$17e13fe2();
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.AdapterWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
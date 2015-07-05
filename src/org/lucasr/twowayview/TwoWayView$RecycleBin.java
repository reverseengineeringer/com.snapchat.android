package org.lucasr.twowayview;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class TwoWayView$RecycleBin
{
  private View[] mActiveViews = new View[0];
  private ArrayList<View> mCurrentScrap;
  private int mFirstActivePosition;
  private TwoWayView.RecyclerListener mRecyclerListener;
  private ArrayList<View>[] mScrapViews;
  private SparseArrayCompat<View> mTransientStateViews;
  private int mViewTypeCount;
  
  TwoWayView$RecycleBin(TwoWayView paramTwoWayView) {}
  
  private void pruneScrapViews()
  {
    int m = 0;
    int n = mActiveViews.length;
    int i1 = mViewTypeCount;
    ArrayList[] arrayOfArrayList = mScrapViews;
    int i = 0;
    int j;
    while (i < i1)
    {
      ArrayList localArrayList = arrayOfArrayList[i];
      int i2 = localArrayList.size();
      j = i2 - 1;
      int k = 0;
      while (k < i2 - n)
      {
        TwoWayView.access$1600(this$0, (View)localArrayList.remove(j), false);
        k += 1;
        j -= 1;
      }
      i += 1;
    }
    if (mTransientStateViews != null) {
      for (i = m; i < mTransientStateViews.size(); i = j + 1)
      {
        j = i;
        if (!ViewCompat.hasTransientState((View)mTransientStateViews.valueAt(i)))
        {
          mTransientStateViews.removeAt(i);
          j = i - 1;
        }
      }
    }
  }
  
  @TargetApi(14)
  void addScrapView(View paramView, int paramInt)
  {
    TwoWayView.LayoutParams localLayoutParams = (TwoWayView.LayoutParams)paramView.getLayoutParams();
    if (localLayoutParams == null) {}
    int i;
    boolean bool;
    do
    {
      return;
      scrappedFromPosition = paramInt;
      i = viewType;
      bool = ViewCompat.hasTransientState(paramView);
      if ((shouldRecycleViewType(i)) && (!bool)) {
        break;
      }
    } while (!bool);
    if (mTransientStateViews == null) {
      mTransientStateViews = new SparseArrayCompat();
    }
    mTransientStateViews.put(paramInt, paramView);
    return;
    if (mViewTypeCount == 1) {
      mCurrentScrap.add(paramView);
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 14) {
        paramView.setAccessibilityDelegate(null);
      }
      if (mRecyclerListener == null) {
        break;
      }
      mRecyclerListener.onMovedToScrapHeap(paramView);
      return;
      mScrapViews[i].add(paramView);
    }
  }
  
  void clear()
  {
    ArrayList localArrayList;
    int j;
    if (mViewTypeCount == 1)
    {
      localArrayList = mCurrentScrap;
      j = localArrayList.size();
      i = 0;
      while (i < j)
      {
        TwoWayView.access$1200(this$0, (View)localArrayList.remove(j - 1 - i), false);
        i += 1;
      }
    }
    int k = mViewTypeCount;
    int i = 0;
    while (i < k)
    {
      localArrayList = mScrapViews[i];
      int m = localArrayList.size();
      j = 0;
      while (j < m)
      {
        TwoWayView.access$1300(this$0, (View)localArrayList.remove(m - 1 - j), false);
        j += 1;
      }
      i += 1;
    }
    if (mTransientStateViews != null) {
      mTransientStateViews.clear();
    }
  }
  
  void clearTransientStateViews()
  {
    if (mTransientStateViews != null) {
      mTransientStateViews.clear();
    }
  }
  
  void fillActiveViews(int paramInt1, int paramInt2)
  {
    if (mActiveViews.length < paramInt1) {
      mActiveViews = new View[paramInt1];
    }
    mFirstActivePosition = paramInt2;
    View[] arrayOfView = mActiveViews;
    paramInt2 = 0;
    while (paramInt2 < paramInt1)
    {
      arrayOfView[paramInt2] = this$0.getChildAt(paramInt2);
      paramInt2 += 1;
    }
  }
  
  View getActiveView(int paramInt)
  {
    paramInt -= mFirstActivePosition;
    View[] arrayOfView = mActiveViews;
    if ((paramInt >= 0) && (paramInt < arrayOfView.length))
    {
      View localView = arrayOfView[paramInt];
      arrayOfView[paramInt] = null;
      return localView;
    }
    return null;
  }
  
  View getScrapView(int paramInt)
  {
    if (mViewTypeCount == 1) {
      return retrieveFromScrap(mCurrentScrap, paramInt);
    }
    int i = TwoWayView.access$1400(this$0).getItemViewType(paramInt);
    if ((i >= 0) && (i < mScrapViews.length)) {
      return retrieveFromScrap(mScrapViews[i], paramInt);
    }
    return null;
  }
  
  View getTransientStateView(int paramInt)
  {
    if (mTransientStateViews == null) {}
    do
    {
      return null;
      paramInt = mTransientStateViews.indexOfKey(paramInt);
    } while (paramInt < 0);
    View localView = (View)mTransientStateViews.valueAt(paramInt);
    mTransientStateViews.removeAt(paramInt);
    return localView;
  }
  
  public void markChildrenDirty()
  {
    int j = 0;
    Object localObject;
    if (mViewTypeCount == 1)
    {
      localObject = mCurrentScrap;
      k = ((ArrayList)localObject).size();
      i = 0;
      while (i < k)
      {
        ((View)((ArrayList)localObject).get(i)).forceLayout();
        i += 1;
      }
    }
    int k = mViewTypeCount;
    int i = 0;
    while (i < k)
    {
      localObject = mScrapViews[i].iterator();
      while (((Iterator)localObject).hasNext()) {
        ((View)((Iterator)localObject).next()).forceLayout();
      }
      i += 1;
    }
    if (mTransientStateViews != null)
    {
      k = mTransientStateViews.size();
      i = j;
      while (i < k)
      {
        ((View)mTransientStateViews.valueAt(i)).forceLayout();
        i += 1;
      }
    }
  }
  
  void reclaimScrapViews(List<View> paramList)
  {
    if (mViewTypeCount == 1) {
      paramList.addAll(mCurrentScrap);
    }
    for (;;)
    {
      return;
      int j = mViewTypeCount;
      ArrayList[] arrayOfArrayList = mScrapViews;
      int i = 0;
      while (i < j)
      {
        paramList.addAll(arrayOfArrayList[i]);
        i += 1;
      }
    }
  }
  
  View retrieveFromScrap(ArrayList<View> paramArrayList, int paramInt)
  {
    int j = paramArrayList.size();
    if (j <= 0) {
      return null;
    }
    int i = 0;
    while (i < j)
    {
      View localView = (View)paramArrayList.get(i);
      if (getLayoutParamsscrappedFromPosition == paramInt)
      {
        paramArrayList.remove(i);
        return localView;
      }
      i += 1;
    }
    return (View)paramArrayList.remove(j - 1);
  }
  
  @TargetApi(14)
  void scrapActiveViews()
  {
    View[] arrayOfView = mActiveViews;
    int i;
    Object localObject1;
    int j;
    label28:
    View localView;
    Object localObject2;
    int k;
    if (mViewTypeCount > 1)
    {
      i = 1;
      localObject1 = mCurrentScrap;
      j = arrayOfView.length - 1;
      if (j < 0) {
        break label234;
      }
      localView = arrayOfView[j];
      localObject2 = localObject1;
      if (localView != null)
      {
        localObject2 = (TwoWayView.LayoutParams)localView.getLayoutParams();
        k = viewType;
        arrayOfView[j] = null;
        boolean bool = ViewCompat.hasTransientState(localView);
        if ((shouldRecycleViewType(k)) && (!bool)) {
          break label160;
        }
        localObject2 = localObject1;
        if (bool)
        {
          TwoWayView.access$1500(this$0, localView, false);
          if (mTransientStateViews == null) {
            mTransientStateViews = new SparseArrayCompat();
          }
          mTransientStateViews.put(mFirstActivePosition + j, localView);
          localObject2 = localObject1;
        }
      }
    }
    for (;;)
    {
      j -= 1;
      localObject1 = localObject2;
      break label28;
      i = 0;
      break;
      label160:
      if (i != 0) {
        localObject1 = mScrapViews[k];
      }
      scrappedFromPosition = (mFirstActivePosition + j);
      ((ArrayList)localObject1).add(localView);
      if (Build.VERSION.SDK_INT >= 14) {
        localView.setAccessibilityDelegate(null);
      }
      localObject2 = localObject1;
      if (mRecyclerListener != null)
      {
        mRecyclerListener.onMovedToScrapHeap(localView);
        localObject2 = localObject1;
      }
    }
    label234:
    pruneScrapViews();
  }
  
  public void setViewTypeCount(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("Can't have a viewTypeCount < 1");
    }
    ArrayList[] arrayOfArrayList = new ArrayList[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      arrayOfArrayList[i] = new ArrayList();
      i += 1;
    }
    mViewTypeCount = paramInt;
    mCurrentScrap = arrayOfArrayList[0];
    mScrapViews = arrayOfArrayList;
  }
  
  public boolean shouldRecycleViewType(int paramInt)
  {
    return paramInt >= 0;
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.RecycleBin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
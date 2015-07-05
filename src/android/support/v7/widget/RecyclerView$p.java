package android.support.v7.widget;

import android.support.v4.util.ArrayMap;
import android.util.SparseArray;

public final class RecyclerView$p
{
  int a = -1;
  ArrayMap<RecyclerView.s, RecyclerView.g> b = new ArrayMap();
  ArrayMap<RecyclerView.s, RecyclerView.g> c = new ArrayMap();
  ArrayMap<Long, RecyclerView.s> d = new ArrayMap();
  int e = 0;
  int f = 0;
  int g = 0;
  boolean h = false;
  boolean i = false;
  boolean j = false;
  boolean k = false;
  private SparseArray<Object> l;
  
  public final int a()
  {
    if (i) {
      return f - g;
    }
    return e;
  }
  
  public final void a(RecyclerView.s params)
  {
    b.remove(params);
    c.remove(params);
    ArrayMap localArrayMap;
    int m;
    if (d != null)
    {
      localArrayMap = d;
      m = localArrayMap.size() - 1;
    }
    for (;;)
    {
      if (m >= 0)
      {
        if (params == localArrayMap.valueAt(m)) {
          localArrayMap.removeAt(m);
        }
      }
      else {
        return;
      }
      m -= 1;
    }
  }
  
  public final String toString()
  {
    return "State{mTargetPosition=" + a + ", mPreLayoutHolderMap=" + b + ", mPostLayoutHolderMap=" + c + ", mData=" + l + ", mItemCount=" + e + ", mPreviousLayoutItemCount=" + f + ", mDeletedInvisibleItemCountSincePreviousLayout=" + g + ", mStructureChanged=" + h + ", mInPreLayout=" + i + ", mRunSimpleAnimations=" + j + ", mRunPredictiveAnimations=" + k + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
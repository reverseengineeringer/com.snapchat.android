package com.snapchat.android.ui;

import android.database.DataSetObserver;
import android.widget.BaseAdapter;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

final class LockingAboveTheFoldListView$a
  extends DataSetObserver
{
  BaseAdapter a;
  
  private LockingAboveTheFoldListView$a(LockingAboveTheFoldListView paramLockingAboveTheFoldListView) {}
  
  private Set<String> a()
  {
    int j = a.getCount();
    HashSet localHashSet = new HashSet(j);
    int i = 0;
    while (i < j)
    {
      Object localObject = a.getItem(i);
      if (localObject != null) {
        localHashSet.add(LockingAboveTheFoldListView.a(b).a(localObject));
      }
      i += 1;
    }
    return localHashSet;
  }
  
  public final void onChanged()
  {
    super.onChanged();
    if (a == null) {
      throw new NullPointerException("onChanged cannot be called without an adapter");
    }
    Set localSet = a();
    b.a.keySet().retainAll(localSet);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.LockingAboveTheFoldListView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
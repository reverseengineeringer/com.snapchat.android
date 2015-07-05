package android.support.v7.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;

public final class RecyclerView$k
{
  SparseArray<ArrayList<RecyclerView.s>> a = new SparseArray();
  int b = 0;
  private SparseIntArray c = new SparseIntArray();
  
  final void a()
  {
    b += 1;
  }
  
  public final void a(RecyclerView.s params)
  {
    int i = e;
    ArrayList localArrayList2 = (ArrayList)a.get(i);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null)
    {
      localArrayList2 = new ArrayList();
      a.put(i, localArrayList2);
      localArrayList1 = localArrayList2;
      if (c.indexOfKey(i) < 0)
      {
        c.put(i, 5);
        localArrayList1 = localArrayList2;
      }
    }
    if (c.get(i) <= localArrayList1.size()) {
      return;
    }
    params.o();
    localArrayList1.add(params);
  }
  
  final void b()
  {
    b -= 1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
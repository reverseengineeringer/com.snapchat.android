package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class dt<T>
{
  private final List<WeakReference<T>> a = new LinkedList();
  
  public List<T> a()
  {
    ArrayList localArrayList = new ArrayList(a.size());
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = ((WeakReference)localIterator.next()).get();
      if (localObject == null) {
        localIterator.remove();
      } else {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public void a(T paramT)
  {
    if (paramT == null) {
      return;
    }
    a.add(new WeakReference(paramT));
  }
  
  public int b()
  {
    return a.size();
  }
  
  public boolean b(T paramT)
  {
    if (paramT == null) {
      return false;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = ((WeakReference)localIterator.next()).get();
      if (localObject == null)
      {
        localIterator.remove();
      }
      else if ((paramT == localObject) || (paramT.equals(localObject)))
      {
        localIterator.remove();
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public final class atw<T>
  implements List<T>
{
  @cgc
  public BaseAdapter mAdapter;
  @cgb
  private final List<T> mInternalList;
  
  public atw()
  {
    this(null);
  }
  
  private atw(@cgc List<T> paramList)
  {
    if (paramList == null)
    {
      mInternalList = new ArrayList();
      return;
    }
    mInternalList = paramList;
  }
  
  public static <T> atw<T> a(@cgc List<T> paramList)
  {
    return new atw(paramList);
  }
  
  protected final void a()
  {
    
    if (mAdapter != null) {
      mAdapter.notifyDataSetChanged();
    }
  }
  
  public final void add(int paramInt, T paramT)
  {
    a();
    mInternalList.add(paramInt, paramT);
  }
  
  public final boolean add(T paramT)
  {
    a();
    return mInternalList.add(paramT);
  }
  
  public final boolean addAll(int paramInt, Collection<? extends T> paramCollection)
  {
    a();
    return mInternalList.addAll(paramInt, paramCollection);
  }
  
  public final boolean addAll(Collection<? extends T> paramCollection)
  {
    a();
    return mInternalList.addAll(paramCollection);
  }
  
  public final void clear()
  {
    a();
    mInternalList.clear();
  }
  
  public final boolean contains(Object paramObject)
  {
    return mInternalList.contains(paramObject);
  }
  
  public final boolean containsAll(@cgb Collection<?> paramCollection)
  {
    return mInternalList.containsAll(paramCollection);
  }
  
  public final T get(int paramInt)
  {
    return (T)mInternalList.get(paramInt);
  }
  
  public final int indexOf(Object paramObject)
  {
    return mInternalList.indexOf(paramObject);
  }
  
  public final boolean isEmpty()
  {
    return mInternalList.isEmpty();
  }
  
  @cgb
  public final Iterator<T> iterator()
  {
    return new atw.a(mInternalList.iterator());
  }
  
  public final int lastIndexOf(Object paramObject)
  {
    return mInternalList.lastIndexOf(paramObject);
  }
  
  @q
  public final ListIterator<T> listIterator()
  {
    a();
    return mInternalList.listIterator();
  }
  
  @q
  public final ListIterator<T> listIterator(int paramInt)
  {
    a();
    return mInternalList.listIterator(paramInt);
  }
  
  public final T remove(int paramInt)
  {
    a();
    return (T)mInternalList.remove(paramInt);
  }
  
  public final boolean remove(Object paramObject)
  {
    a();
    return mInternalList.remove(paramObject);
  }
  
  public final boolean removeAll(@cgb Collection<?> paramCollection)
  {
    a();
    return mInternalList.removeAll(paramCollection);
  }
  
  public final boolean retainAll(@cgb Collection<?> paramCollection)
  {
    a();
    return mInternalList.retainAll(paramCollection);
  }
  
  public final T set(int paramInt, T paramT)
  {
    a();
    return (T)mInternalList.set(paramInt, paramT);
  }
  
  public final int size()
  {
    return mInternalList.size();
  }
  
  @q
  public final List<T> subList(int paramInt1, int paramInt2)
  {
    a();
    return mInternalList.subList(paramInt1, paramInt2);
  }
  
  @q
  public final Object[] toArray()
  {
    return mInternalList.toArray();
  }
  
  @q
  public final <T1> T1[] toArray(@cgb T1[] paramArrayOfT1)
  {
    return mInternalList.toArray(paramArrayOfT1);
  }
  
  final class a
    implements Iterator<T>
  {
    final Iterator<T> mIterator;
    
    a()
    {
      Iterator localIterator;
      mIterator = localIterator;
    }
    
    public final boolean hasNext()
    {
      return mIterator.hasNext();
    }
    
    public final T next()
    {
      return (T)mIterator.next();
    }
    
    public final void remove()
    {
      a();
      mIterator.remove();
    }
  }
}

/* Location:
 * Qualified Name:     atw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
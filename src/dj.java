import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

@cd
public abstract class dj<E>
  extends AbstractCollection<E>
  implements Serializable
{
  private transient dl<E> a;
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      paramArrayOfObject[paramInt] = localIterator.next();
      paramInt += 1;
    }
    return paramInt;
  }
  
  public abstract ef<E> a();
  
  @Deprecated
  public final boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public dl<E> b()
  {
    dl localdl2 = a;
    dl localdl1 = localdl2;
    if (localdl2 == null)
    {
      localdl1 = d();
      a = localdl1;
    }
    return localdl1;
  }
  
  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean contains(@Nullable Object paramObject)
  {
    return (paramObject != null) && (super.contains(paramObject));
  }
  
  dl<E> d()
  {
    switch (size())
    {
    default: 
      return new dy(this, toArray());
    case 0: 
      return dl.e();
    }
    return dl.a(a().next());
  }
  
  @Deprecated
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final Object[] toArray()
  {
    int i = size();
    if (i == 0) {
      return dw.a;
    }
    Object[] arrayOfObject = new Object[i];
    a(arrayOfObject, 0);
    return arrayOfObject;
  }
  
  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    co.a(paramArrayOfT);
    int i = size();
    Object localObject;
    if (paramArrayOfT.length < i) {
      localObject = dw.a(paramArrayOfT, i);
    }
    for (;;)
    {
      a((Object[])localObject, 0);
      return (T[])localObject;
      localObject = paramArrayOfT;
      if (paramArrayOfT.length > i)
      {
        paramArrayOfT[i] = null;
        localObject = paramArrayOfT;
      }
    }
  }
}

/* Location:
 * Qualified Name:     dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

@cd
public abstract class dc<E>
  extends AbstractCollection<E>
  implements Serializable
{
  private transient de<E> a;
  
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
  
  public abstract dw<E> a();
  
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
  
  public de<E> b()
  {
    de localde2 = a;
    de localde1 = localde2;
    if (localde2 == null)
    {
      localde1 = d();
      a = localde1;
    }
    return localde1;
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
  
  de<E> d()
  {
    switch (size())
    {
    default: 
      return new dp(this, toArray());
    case 0: 
      return de.e();
    }
    return de.a(a().next());
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
      return dn.a;
    }
    Object[] arrayOfObject = new Object[i];
    a(arrayOfObject, 0);
    return arrayOfObject;
  }
  
  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    ck.a(paramArrayOfT);
    int i = size();
    Object localObject;
    if (paramArrayOfT.length < i) {
      localObject = dn.a(paramArrayOfT, i);
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
 * Qualified Name:     dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
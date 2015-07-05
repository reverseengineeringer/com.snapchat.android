import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.Nullable;

@cd
public abstract class de<E>
  extends dc<E>
  implements List<E>, RandomAccess
{
  static final de<Object> a = new dq(dn.a);
  
  public static <E> de<E> a(E paramE)
  {
    return new du(paramE);
  }
  
  public static <E> de<E> e()
  {
    return a;
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      paramArrayOfObject[(paramInt + i)] = get(i);
      i += 1;
    }
    return paramInt + j;
  }
  
  public de<E> a(int paramInt1, int paramInt2)
  {
    ck.a(paramInt1, paramInt2, size());
    switch (paramInt2 - paramInt1)
    {
    default: 
      return b(paramInt1, paramInt2);
    case 0: 
      return a;
    }
    return a(get(paramInt1));
  }
  
  public dw<E> a()
  {
    return a(0);
  }
  
  public dx<E> a(int paramInt)
  {
    new cq(size(), paramInt)
    {
      protected final E a(int paramAnonymousInt)
      {
        return (E)get(paramAnonymousInt);
      }
    };
  }
  
  @Deprecated
  public final void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final de<E> b()
  {
    return this;
  }
  
  de<E> b(int paramInt1, int paramInt2)
  {
    return new de.a(paramInt1, paramInt2 - paramInt1);
  }
  
  public boolean contains(@Nullable Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }
  
  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == ck.a(this)) {}
    do
    {
      return true;
      if (!(paramObject instanceof List)) {
        break;
      }
      paramObject = (List)paramObject;
    } while ((size() == ((List)paramObject).size()) && (dj.a(iterator(), ((List)paramObject).iterator())));
    return false;
  }
  
  public int hashCode()
  {
    int j = 1;
    int k = size();
    int i = 0;
    while (i < k)
    {
      j = j * 31 + get(i).hashCode() ^ 0xFFFFFFFF ^ 0xFFFFFFFF;
      i += 1;
    }
    return j;
  }
  
  public int indexOf(@Nullable Object paramObject)
  {
    if (paramObject != null)
    {
      ListIterator localListIterator = listIterator();
      while (localListIterator.hasNext()) {
        if (cj.a(paramObject, localListIterator.next())) {
          return localListIterator.previousIndex();
        }
      }
    }
    return -1;
  }
  
  public int lastIndexOf(@Nullable Object paramObject)
  {
    if (paramObject != null)
    {
      ListIterator localListIterator = listIterator(size());
      while (localListIterator.hasPrevious()) {
        if (cj.a(paramObject, localListIterator.previous())) {
          return localListIterator.nextIndex();
        }
      }
    }
    return -1;
  }
  
  @Deprecated
  public final E remove(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  final class a
    extends de<E>
  {
    final transient int b;
    final transient int c;
    
    a(int paramInt1, int paramInt2)
    {
      b = paramInt1;
      c = paramInt2;
    }
    
    public final de<E> a(int paramInt1, int paramInt2)
    {
      ck.a(paramInt1, paramInt2, c);
      return de.this.a(b + paramInt1, b + paramInt2);
    }
    
    public final E get(int paramInt)
    {
      ck.a(paramInt, c);
      return (E)de.this.get(b + paramInt);
    }
    
    public final int size()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
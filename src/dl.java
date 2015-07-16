import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import javax.annotation.Nullable;

@cd
public abstract class dl<E>
  extends dj<E>
  implements List<E>, RandomAccess
{
  static final dl<Object> a = new dz(dw.a);
  
  public static <E> dl<E> a(E paramE)
  {
    return new ed(paramE);
  }
  
  public static <E> dl<E> a(E paramE1, E paramE2)
  {
    return a(dw.a(new Object[] { paramE1, paramE2 }));
  }
  
  static <E> dl<E> a(Object[] paramArrayOfObject)
  {
    int i = paramArrayOfObject.length;
    switch (i)
    {
    default: 
      Object[] arrayOfObject = paramArrayOfObject;
      if (i < paramArrayOfObject.length) {
        arrayOfObject = dw.b(paramArrayOfObject, i);
      }
      return new dz(arrayOfObject);
    case 0: 
      return a;
    }
    return new ed(paramArrayOfObject[0]);
  }
  
  public static <E> dl<E> e()
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
  
  public dl<E> a(int paramInt1, int paramInt2)
  {
    co.a(paramInt1, paramInt2, size());
    switch (paramInt2 - paramInt1)
    {
    default: 
      return b(paramInt1, paramInt2);
    case 0: 
      return a;
    }
    return a(get(paramInt1));
  }
  
  public ef<E> a()
  {
    return a(0);
  }
  
  public eg<E> a(int paramInt)
  {
    new cv(size(), paramInt)
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
  
  public final dl<E> b()
  {
    return this;
  }
  
  dl<E> b(int paramInt1, int paramInt2)
  {
    return new dl.a(paramInt1, paramInt2 - paramInt1);
  }
  
  public boolean contains(@Nullable Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }
  
  public boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == co.a(this)) {}
    do
    {
      return true;
      if (!(paramObject instanceof List)) {
        break;
      }
      paramObject = (List)paramObject;
    } while ((size() == ((List)paramObject).size()) && (ds.a(iterator(), ((List)paramObject).iterator())));
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
        if (cm.a(paramObject, localListIterator.next())) {
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
        if (cm.a(paramObject, localListIterator.previous())) {
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
    extends dl<E>
  {
    final transient int b;
    final transient int c;
    
    a(int paramInt1, int paramInt2)
    {
      b = paramInt1;
      c = paramInt2;
    }
    
    public final dl<E> a(int paramInt1, int paramInt2)
    {
      co.a(paramInt1, paramInt2, c);
      return dl.this.a(b + paramInt1, b + paramInt2);
    }
    
    public final E get(int paramInt)
    {
      co.a(paramInt, c);
      return (E)dl.this.get(b + paramInt);
    }
    
    public final int size()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
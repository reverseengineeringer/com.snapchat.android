import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;

@cd
public final class ds
{
  static final eg<Object> a = new eg()
  {
    public final boolean hasNext()
    {
      return false;
    }
    
    public final boolean hasPrevious()
    {
      return false;
    }
    
    public final Object next()
    {
      throw new NoSuchElementException();
    }
    
    public final int nextIndex()
    {
      return 0;
    }
    
    public final Object previous()
    {
      throw new NoSuchElementException();
    }
    
    public final int previousIndex()
    {
      return -1;
    }
  };
  private static final Iterator<Object> b = new Iterator()
  {
    public final boolean hasNext()
    {
      return false;
    }
    
    public final Object next()
    {
      throw new NoSuchElementException();
    }
    
    public final void remove()
    {
      co.b(false, "no calls to next() since the last call to remove()");
    }
  };
  
  public static <T> int a(Iterator<T> paramIterator, cp<? super T> paramcp)
  {
    co.a(paramcp, "predicate");
    int i = 0;
    while (paramIterator.hasNext())
    {
      if (paramcp.a(paramIterator.next())) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  @Deprecated
  public static <T> ef<T> a()
  {
    return a;
  }
  
  public static <T> ef<T> a(@Nullable T paramT)
  {
    new ef()
    {
      boolean a;
      
      public final boolean hasNext()
      {
        return !a;
      }
      
      public final T next()
      {
        if (a) {
          throw new NoSuchElementException();
        }
        a = true;
        return (T)b;
      }
    };
  }
  
  public static <T> ef<T> a(T... paramVarArgs)
  {
    return a(paramVarArgs, 0, paramVarArgs.length, 0);
  }
  
  static <T> eg<T> a(final T[] paramArrayOfT, final int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      co.a(bool);
      co.a(paramInt1, paramInt1 + paramInt2, paramArrayOfT.length);
      co.b(paramInt3, paramInt2);
      if (paramInt2 != 0) {
        break;
      }
      return a;
    }
    new cv(paramInt2, paramInt3)
    {
      protected final T a(int paramAnonymousInt)
      {
        return (T)paramArrayOfT[(paramInt1 + paramAnonymousInt)];
      }
    };
  }
  
  public static <T> boolean a(Collection<T> paramCollection, Iterator<? extends T> paramIterator)
  {
    co.a(paramCollection);
    co.a(paramIterator);
    boolean bool = false;
    while (paramIterator.hasNext()) {
      bool |= paramCollection.add(paramIterator.next());
    }
    return bool;
  }
  
  public static boolean a(Iterator<?> paramIterator, @Nullable Object paramObject)
  {
    return a(paramIterator, cq.a(paramObject)) != -1;
  }
  
  public static boolean a(Iterator<?> paramIterator1, Iterator<?> paramIterator2)
  {
    if (paramIterator1.hasNext()) {
      if (paramIterator2.hasNext()) {}
    }
    while (paramIterator2.hasNext())
    {
      return false;
      if (cm.a(paramIterator1.next(), paramIterator2.next())) {
        break;
      }
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
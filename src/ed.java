import java.util.List;
import javax.annotation.Nullable;

@cd
final class ed<E>
  extends dl<E>
{
  final transient E b;
  
  ed(E paramE)
  {
    b = co.a(paramE);
  }
  
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    paramArrayOfObject[paramInt] = b;
    return paramInt + 1;
  }
  
  public final dl<E> a(int paramInt1, int paramInt2)
  {
    co.a(paramInt1, paramInt2, 1);
    Object localObject = this;
    if (paramInt1 == paramInt2) {
      localObject = dl.a;
    }
    return (dl<E>)localObject;
  }
  
  public final ef<E> a()
  {
    return ds.a(b);
  }
  
  public final boolean contains(@Nullable Object paramObject)
  {
    return b.equals(paramObject);
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof List)) {
        break;
      }
      paramObject = (List)paramObject;
    } while ((((List)paramObject).size() == 1) && (b.equals(((List)paramObject).get(0))));
    return false;
    return false;
  }
  
  public final E get(int paramInt)
  {
    co.a(paramInt, 1);
    return (E)b;
  }
  
  public final int hashCode()
  {
    return b.hashCode() + 31;
  }
  
  public final int indexOf(@Nullable Object paramObject)
  {
    if (b.equals(paramObject)) {
      return 0;
    }
    return -1;
  }
  
  public final boolean isEmpty()
  {
    return false;
  }
  
  public final int lastIndexOf(@Nullable Object paramObject)
  {
    return indexOf(paramObject);
  }
  
  public final int size()
  {
    return 1;
  }
  
  public final String toString()
  {
    String str = b.toString();
    return str.length() + 2 + '[' + str + ']';
  }
}

/* Location:
 * Qualified Name:     ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
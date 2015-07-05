import java.util.List;
import javax.annotation.Nullable;

@cd
final class du<E>
  extends de<E>
{
  final transient E b;
  
  du(E paramE)
  {
    b = ck.a(paramE);
  }
  
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    paramArrayOfObject[paramInt] = b;
    return paramInt + 1;
  }
  
  public final de<E> a(int paramInt1, int paramInt2)
  {
    ck.a(paramInt1, paramInt2, 1);
    Object localObject = this;
    if (paramInt1 == paramInt2) {
      localObject = de.a;
    }
    return (de<E>)localObject;
  }
  
  public final dw<E> a()
  {
    return dj.a(b);
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
    ck.a(paramInt, 1);
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
 * Qualified Name:     du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
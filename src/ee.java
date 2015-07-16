import java.util.Iterator;
import java.util.Set;
import javax.annotation.Nullable;

@cd
final class ee<E>
  extends dr<E>
{
  final transient E a;
  private transient int b;
  
  ee(E paramE)
  {
    a = co.a(paramE);
  }
  
  ee(E paramE, int paramInt)
  {
    a = paramE;
    b = paramInt;
  }
  
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    paramArrayOfObject[paramInt] = a;
    return paramInt + 1;
  }
  
  public final ef<E> a()
  {
    return ds.a(a);
  }
  
  final boolean c()
  {
    return b != 0;
  }
  
  public final boolean contains(Object paramObject)
  {
    return a.equals(paramObject);
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Set)) {
        break;
      }
      paramObject = (Set)paramObject;
    } while ((((Set)paramObject).size() == 1) && (a.equals(((Set)paramObject).iterator().next())));
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    int j = b;
    int i = j;
    if (j == 0)
    {
      i = a.hashCode();
      b = i;
    }
    return i;
  }
  
  public final boolean isEmpty()
  {
    return false;
  }
  
  public final int size()
  {
    return 1;
  }
  
  public final String toString()
  {
    String str = a.toString();
    return str.length() + 2 + '[' + str + ']';
  }
}

/* Location:
 * Qualified Name:     ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
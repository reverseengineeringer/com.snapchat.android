import java.util.Collection;
import java.util.Set;
import javax.annotation.Nullable;

@cd
final class cx
  extends di<Object>
{
  static final cx a = new cx();
  
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    return paramInt;
  }
  
  public final dw<Object> a()
  {
    return dj.a();
  }
  
  public final de<Object> b()
  {
    return de.e();
  }
  
  final boolean c()
  {
    return true;
  }
  
  public final boolean contains(@Nullable Object paramObject)
  {
    return false;
  }
  
  public final boolean containsAll(Collection<?> paramCollection)
  {
    return paramCollection.isEmpty();
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof Set)) {
      return ((Set)paramObject).isEmpty();
    }
    return false;
  }
  
  public final int hashCode()
  {
    return 0;
  }
  
  public final boolean isEmpty()
  {
    return true;
  }
  
  public final int size()
  {
    return 0;
  }
  
  public final String toString()
  {
    return "[]";
  }
}

/* Location:
 * Qualified Name:     cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
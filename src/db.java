import java.util.Collection;
import java.util.Set;
import javax.annotation.Nullable;

@cd
final class db
  extends dr<Object>
{
  static final db a = new db();
  
  final int a(Object[] paramArrayOfObject, int paramInt)
  {
    return paramInt;
  }
  
  public final ef<Object> a()
  {
    return ds.a();
  }
  
  public final dl<Object> b()
  {
    return dl.e();
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
 * Qualified Name:     db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
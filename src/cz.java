import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.Nullable;

@cd
public final class cz<T>
  extends dx<T>
  implements Serializable
{
  final Comparator<T> a;
  
  public cz(Comparator<T> paramComparator)
  {
    a = ((Comparator)co.a(paramComparator));
  }
  
  public final int compare(T paramT1, T paramT2)
  {
    return a.compare(paramT1, paramT2);
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof cz))
    {
      paramObject = (cz)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
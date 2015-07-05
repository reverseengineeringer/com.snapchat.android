import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.Nullable;

@cd
public final class cv<T>
  extends do<T>
  implements Serializable
{
  final Comparator<T> a;
  
  public cv(Comparator<T> paramComparator)
  {
    a = ((Comparator)ck.a(paramComparator));
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
    if ((paramObject instanceof cv))
    {
      paramObject = (cv)paramObject;
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
 * Qualified Name:     cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
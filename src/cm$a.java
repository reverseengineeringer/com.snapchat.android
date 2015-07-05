import java.io.Serializable;
import javax.annotation.Nullable;

final class cm$a<T>
  implements cl<T>, Serializable
{
  private final T a;
  
  private cm$a(T paramT)
  {
    a = paramT;
  }
  
  public final boolean a(T paramT)
  {
    return a.equals(paramT);
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof a))
    {
      paramObject = (a)paramObject;
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
    String str = String.valueOf(String.valueOf(a));
    return str.length() + 20 + "Predicates.equalTo(" + str + ")";
  }
}

/* Location:
 * Qualified Name:     cm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
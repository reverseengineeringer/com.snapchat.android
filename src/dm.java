import java.io.Serializable;
import javax.annotation.Nullable;

@cd
final class dm<T>
  extends do<T>
  implements Serializable
{
  final do<? super T> a;
  
  dm(do<? super T> paramdo)
  {
    a = paramdo;
  }
  
  public final <S extends T> do<S> a()
  {
    return this;
  }
  
  public final int compare(@Nullable T paramT1, @Nullable T paramT2)
  {
    if (paramT1 == paramT2) {
      return 0;
    }
    if (paramT1 == null) {
      return 1;
    }
    if (paramT2 == null) {
      return -1;
    }
    return a.compare(paramT1, paramT2);
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof dm))
    {
      paramObject = (dm)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return a.hashCode() ^ 0xC9177248;
  }
  
  public final String toString()
  {
    String str = String.valueOf(String.valueOf(a));
    return str.length() + 12 + str + ".nullsLast()";
  }
}

/* Location:
 * Qualified Name:     dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
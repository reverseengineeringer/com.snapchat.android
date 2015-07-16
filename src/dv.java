import java.io.Serializable;
import javax.annotation.Nullable;

@cd
final class dv<T>
  extends dx<T>
  implements Serializable
{
  final dx<? super T> a;
  
  dv(dx<? super T> paramdx)
  {
    a = paramdx;
  }
  
  public final <S extends T> dx<S> a()
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
    if ((paramObject instanceof dv))
    {
      paramObject = (dv)paramObject;
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
 * Qualified Name:     dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
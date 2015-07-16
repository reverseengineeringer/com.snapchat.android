import javax.annotation.Nullable;

@cd
final class cr<T>
  extends cn<T>
{
  private final T a;
  
  cr(T paramT)
  {
    a = paramT;
  }
  
  public final T a(T paramT)
  {
    co.a(paramT, "use Optional.orNull() instead of Optional.or(null)");
    return (T)a;
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    if ((paramObject instanceof cr))
    {
      paramObject = (cr)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return 1502476572 + a.hashCode();
  }
  
  public final String toString()
  {
    String str = String.valueOf(String.valueOf(a));
    return str.length() + 13 + "Optional.of(" + str + ")";
  }
}

/* Location:
 * Qualified Name:     cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
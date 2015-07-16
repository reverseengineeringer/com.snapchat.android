import javax.annotation.Nullable;

@cd
final class cg<T>
  extends cn<T>
{
  static final cg<Object> a = new cg();
  
  static <T> cn<T> a()
  {
    return a;
  }
  
  public final T a(T paramT)
  {
    return (T)co.a(paramT, "use Optional.orNull() instead of Optional.or(null)");
  }
  
  public final boolean equals(@Nullable Object paramObject)
  {
    return paramObject == this;
  }
  
  public final int hashCode()
  {
    return 1502476572;
  }
  
  public final String toString()
  {
    return "Optional.absent()";
  }
}

/* Location:
 * Qualified Name:     cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
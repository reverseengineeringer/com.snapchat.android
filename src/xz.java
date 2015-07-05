import javax.inject.Provider;

public final class xz
  implements buj<xx>
{
  private final Provider<qh> b;
  private final Provider<qd> c;
  
  static
  {
    if (!xz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private xz(Provider<qh> paramProvider, Provider<qd> paramProvider1)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    c = paramProvider1;
  }
  
  public static buj<xx> a(Provider<qh> paramProvider, Provider<qd> paramProvider1)
  {
    return new xz(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     xz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
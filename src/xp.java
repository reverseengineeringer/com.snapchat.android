import javax.inject.Provider;

public final class xp
  implements buj<xn>
{
  private final Provider<ayg> b;
  private final Provider<ato> c;
  
  static
  {
    if (!xp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private xp(Provider<ayg> paramProvider, Provider<ato> paramProvider1)
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
  
  public static buj<xn> a(Provider<ayg> paramProvider, Provider<ato> paramProvider1)
  {
    return new xp(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     xp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
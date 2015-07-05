import javax.inject.Provider;

public final class xt
  implements buj<xr>
{
  private final Provider<ayg> b;
  
  static
  {
    if (!xt.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private xt(Provider<ayg> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static buj<xr> a(Provider<ayg> paramProvider)
  {
    return new xt(paramProvider);
  }
}

/* Location:
 * Qualified Name:     xt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
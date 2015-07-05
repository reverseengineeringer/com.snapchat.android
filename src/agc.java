import javax.inject.Provider;

public final class agc
  implements buj<agb>
{
  private final Provider<bgk> b;
  
  static
  {
    if (!agc.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agc(Provider<bgk> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static buj<agb> a(Provider<bgk> paramProvider)
  {
    return new agc(paramProvider);
  }
}

/* Location:
 * Qualified Name:     agc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
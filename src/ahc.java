import javax.inject.Provider;

public final class ahc
  implements bvk<ahb>
{
  private final Provider<bhk> b;
  
  static
  {
    if (!ahc.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahc(Provider<bhk> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static bvk<ahb> a(Provider<bhk> paramProvider)
  {
    return new ahc(paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
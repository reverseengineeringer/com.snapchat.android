import javax.inject.Provider;

public final class yp
  implements bvk<yn>
{
  private final Provider<aze> b;
  
  static
  {
    if (!yp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private yp(Provider<aze> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static bvk<yn> a(Provider<aze> paramProvider)
  {
    return new yp(paramProvider);
  }
}

/* Location:
 * Qualified Name:     yp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
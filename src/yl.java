import javax.inject.Provider;

public final class yl
  implements bvk<yj>
{
  private final Provider<aze> b;
  private final Provider<aum> c;
  
  static
  {
    if (!yl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private yl(Provider<aze> paramProvider, Provider<aum> paramProvider1)
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
  
  public static bvk<yj> a(Provider<aze> paramProvider, Provider<aum> paramProvider1)
  {
    return new yl(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     yl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
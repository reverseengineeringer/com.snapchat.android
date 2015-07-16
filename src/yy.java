import javax.inject.Provider;

public final class yy
  implements bvk<yw>
{
  private final Provider<qt> b;
  private final Provider<nq> c;
  
  static
  {
    if (!yy.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private yy(Provider<qt> paramProvider, Provider<nq> paramProvider1)
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
  
  public static bvk<yw> a(Provider<qt> paramProvider, Provider<nq> paramProvider1)
  {
    return new yy(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     yy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
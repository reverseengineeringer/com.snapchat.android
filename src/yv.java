import javax.inject.Provider;

public final class yv
  implements bvk<yt>
{
  private final Provider<qx> b;
  private final Provider<qt> c;
  
  static
  {
    if (!yv.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private yv(Provider<qx> paramProvider, Provider<qt> paramProvider1)
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
  
  public static bvk<yt> a(Provider<qx> paramProvider, Provider<qt> paramProvider1)
  {
    return new yv(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     yv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class zl
  implements bvk<zk>
{
  private final Provider<yw> b;
  
  static
  {
    if (!zl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private zl(Provider<yw> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static bvk<zk> a(Provider<yw> paramProvider)
  {
    return new zl(paramProvider);
  }
}

/* Location:
 * Qualified Name:     zl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
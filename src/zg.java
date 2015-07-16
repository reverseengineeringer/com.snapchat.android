import javax.inject.Provider;

public final class zg
  implements bvk<zf>
{
  private final Provider<yw> b;
  
  static
  {
    if (!zg.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private zg(Provider<yw> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static bvk<zf> a(Provider<yw> paramProvider)
  {
    return new zg(paramProvider);
  }
}

/* Location:
 * Qualified Name:     zg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class zn
  implements bvk<zm>
{
  private final Provider<yw> b;
  
  static
  {
    if (!zn.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private zn(Provider<yw> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static bvk<zm> a(Provider<yw> paramProvider)
  {
    return new zn(paramProvider);
  }
}

/* Location:
 * Qualified Name:     zn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
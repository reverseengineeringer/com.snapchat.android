import javax.inject.Provider;

public final class uu
  implements bvp<ut>
{
  private final Provider<ub> entityFactoryProvider;
  
  static
  {
    if (!uu.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private uu(Provider<ub> paramProvider)
  {
    assert (paramProvider != null);
    entityFactoryProvider = paramProvider;
  }
  
  public static bvp<ut> a(Provider<ub> paramProvider)
  {
    return new uu(paramProvider);
  }
}

/* Location:
 * Qualified Name:     uu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
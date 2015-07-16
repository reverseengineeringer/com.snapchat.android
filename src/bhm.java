import javax.inject.Provider;

public final class bhm
  implements bvk<bhl>
{
  private final Provider<bhk> mClockProvider;
  
  static
  {
    if (!bhm.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bhm(Provider<bhk> paramProvider)
  {
    assert (paramProvider != null);
    mClockProvider = paramProvider;
  }
  
  public static bvk<bhl> a(Provider<bhk> paramProvider)
  {
    return new bhm(paramProvider);
  }
}

/* Location:
 * Qualified Name:     bhm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class rm
  implements buj<rl>
{
  private final Provider<xr> mCashCardManagerProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!rm.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rm(buj<qv> parambuj, Provider<xr> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashCardManagerProvider = paramProvider;
  }
  
  public static buj<rl> a(buj<qv> parambuj, Provider<xr> paramProvider)
  {
    return new rm(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     rm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
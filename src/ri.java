import javax.inject.Provider;

public final class ri
  implements buj<rh>
{
  private final Provider<xr> mCashCardManagerProvider;
  private final Provider<sn> mSquareProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!ri.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ri(buj<qv> parambuj, Provider<xr> paramProvider, Provider<sn> paramProvider1)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashCardManagerProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareProvider = paramProvider1;
  }
  
  public static buj<rh> a(buj<qv> parambuj, Provider<xr> paramProvider, Provider<sn> paramProvider1)
  {
    return new ri(parambuj, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     ri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class rg
  implements buj<rf>
{
  private final Provider<xn> mCashAuthManagerProvider;
  private final Provider<qg> mCashErrorReporterProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!rg.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rg(buj<qv> parambuj, Provider<xn> paramProvider, Provider<qg> paramProvider1)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashAuthManagerProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashErrorReporterProvider = paramProvider1;
  }
  
  public static buj<rf> a(buj<qv> parambuj, Provider<xn> paramProvider, Provider<qg> paramProvider1)
  {
    return new rg(parambuj, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     rg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
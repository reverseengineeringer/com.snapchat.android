import javax.inject.Provider;

public final class rk
  implements buj<rj>
{
  private final Provider<qg> mCashErrorReporterProvider;
  private final Provider<sn> mSquareProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!rk.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rk(buj<qv> parambuj, Provider<qg> paramProvider, Provider<sn> paramProvider1)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareProvider = paramProvider1;
  }
  
  public static buj<rj> a(buj<qv> parambuj, Provider<qg> paramProvider, Provider<sn> paramProvider1)
  {
    return new rk(parambuj, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     rk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class rr
  implements buj<rq>
{
  private final Provider<qg> mCashErrorReporterProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!rr.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rr(buj<qv> parambuj, Provider<qg> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
  }
  
  public static buj<rq> a(buj<qv> parambuj, Provider<qg> paramProvider)
  {
    return new rr(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     rr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
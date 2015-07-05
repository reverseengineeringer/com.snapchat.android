import javax.inject.Provider;

public final class ro
  implements buj<rn>
{
  private final Provider<xr> mCashCardManagerProvider;
  private final Provider<qg> mCashErrorReporterProvider;
  private final Provider<sn> mSquareProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!ro.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ro(buj<qv> parambuj, Provider<sn> paramProvider, Provider<xr> paramProvider1, Provider<qg> paramProvider2)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mSquareProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashCardManagerProvider = paramProvider1;
    assert (paramProvider2 != null);
    mCashErrorReporterProvider = paramProvider2;
  }
  
  public static buj<rn> a(buj<qv> parambuj, Provider<sn> paramProvider, Provider<xr> paramProvider1, Provider<qg> paramProvider2)
  {
    return new ro(parambuj, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     ro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
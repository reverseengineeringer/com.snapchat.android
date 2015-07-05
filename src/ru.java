import javax.inject.Provider;

public final class ru
  implements buj<rt>
{
  private final Provider<qg> mCashErrorReporterProvider;
  private final Provider<sn> mSquareProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!ru.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ru(buj<qv> parambuj, Provider<sn> paramProvider, Provider<qg> paramProvider1)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mSquareProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashErrorReporterProvider = paramProvider1;
  }
  
  public static buj<rt> a(buj<qv> parambuj, Provider<sn> paramProvider, Provider<qg> paramProvider1)
  {
    return new ru(parambuj, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     ru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
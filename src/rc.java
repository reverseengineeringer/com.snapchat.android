import javax.inject.Provider;

public final class rc
  implements buj<rb>
{
  private final Provider<qg> mCashErrorReporterProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!rc.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rc(buj<qv> parambuj, Provider<qg> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
  }
  
  public static buj<rb> a(buj<qv> parambuj, Provider<qg> paramProvider)
  {
    return new rc(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     rc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class re
  implements buj<rd>
{
  private final Provider<qg> mCashErrorReporterProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!re.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private re(buj<qv> parambuj, Provider<qg> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
  }
  
  public static buj<rd> a(buj<qv> parambuj, Provider<qg> paramProvider)
  {
    return new re(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     re
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class sr
  implements buj<sq>
{
  private final Provider<xn> mCashAuthManagerProvider;
  private final Provider<tl> mEntityFactoryProvider;
  private final Provider<uj> mSquareOkHttpClientFactoryProvider;
  private final buj<tv> supertypeInjector;
  
  static
  {
    if (!sr.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private sr(buj<tv> parambuj, Provider<xn> paramProvider, Provider<uj> paramProvider1, Provider<tl> paramProvider2)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashAuthManagerProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareOkHttpClientFactoryProvider = paramProvider1;
    assert (paramProvider2 != null);
    mEntityFactoryProvider = paramProvider2;
  }
  
  public static buj<sq> a(buj<tv> parambuj, Provider<xn> paramProvider, Provider<uj> paramProvider1, Provider<tl> paramProvider2)
  {
    return new sr(parambuj, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     sr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
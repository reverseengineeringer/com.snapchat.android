import javax.inject.Provider;

public final class rw
  implements buj<rv>
{
  private final Provider<xn> mCashAuthManagerProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!rw.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rw(buj<qv> parambuj, Provider<xn> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashAuthManagerProvider = paramProvider;
  }
  
  public static buj<rv> a(buj<qv> parambuj, Provider<xn> paramProvider)
  {
    return new rw(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     rw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
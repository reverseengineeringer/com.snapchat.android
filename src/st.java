import javax.inject.Provider;

public final class st
  implements buj<ss>
{
  private final Provider<xr> mCashCardManagerProvider;
  private final buj<sq> supertypeInjector;
  
  static
  {
    if (!st.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private st(buj<sq> parambuj, Provider<xr> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mCashCardManagerProvider = paramProvider;
  }
  
  public static buj<ss> a(buj<sq> parambuj, Provider<xr> paramProvider)
  {
    return new st(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     st
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
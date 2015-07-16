import javax.inject.Provider;

public final class qv
  implements bvk<qt>
{
  private final Provider<qx> mCashProviderManagerProvider;
  
  static
  {
    if (!qv.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private qv(Provider<qx> paramProvider)
  {
    assert (paramProvider != null);
    mCashProviderManagerProvider = paramProvider;
  }
  
  public static bvk<qt> a(Provider<qx> paramProvider)
  {
    return new qv(paramProvider);
  }
}

/* Location:
 * Qualified Name:     qv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
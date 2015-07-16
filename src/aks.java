import javax.inject.Provider;

public final class aks
  implements bvk<akp>
{
  private final Provider<qx> mCashProviderManagerProvider;
  private final Provider<aze> mSlightlySecurePreferencesProvider;
  private final Provider<akq> mUserDatabaseLoaderProvider;
  
  static
  {
    if (!aks.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private aks(Provider<aze> paramProvider, Provider<qx> paramProvider1, Provider<akq> paramProvider2)
  {
    assert (paramProvider != null);
    mSlightlySecurePreferencesProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashProviderManagerProvider = paramProvider1;
    assert (paramProvider2 != null);
    mUserDatabaseLoaderProvider = paramProvider2;
  }
  
  public static bvk<akp> a(Provider<aze> paramProvider, Provider<qx> paramProvider1, Provider<akq> paramProvider2)
  {
    return new aks(paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     aks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
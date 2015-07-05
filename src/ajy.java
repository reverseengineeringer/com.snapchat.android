import javax.inject.Provider;

public final class ajy
  implements buj<ajv>
{
  private final Provider<qh> mCashProviderManagerProvider;
  private final Provider<ayg> mSlightlySecurePreferencesProvider;
  private final Provider<ajw> mUserDatabaseLoaderProvider;
  
  static
  {
    if (!ajy.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ajy(Provider<ayg> paramProvider, Provider<qh> paramProvider1, Provider<ajw> paramProvider2)
  {
    assert (paramProvider != null);
    mSlightlySecurePreferencesProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashProviderManagerProvider = paramProvider1;
    assert (paramProvider2 != null);
    mUserDatabaseLoaderProvider = paramProvider2;
  }
  
  public static buj<ajv> a(Provider<ayg> paramProvider, Provider<qh> paramProvider1, Provider<ajw> paramProvider2)
  {
    return new ajy(paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     ajy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
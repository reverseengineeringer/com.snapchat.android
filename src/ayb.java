import javax.inject.Provider;

public final class ayb
  implements buo<aya>
{
  private final Provider<pk> apiTaskFactoryProvider;
  private final Provider<azn> developerSettingsProvider;
  private final Provider<ato> gsonWrapperProvider;
  private final Provider<ayg> slightlySecurePreferencesProvider;
  
  static
  {
    if (!ayb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ayb(Provider<ayg> paramProvider, Provider<ato> paramProvider1, Provider<pk> paramProvider2, Provider<azn> paramProvider3)
  {
    assert (paramProvider != null);
    slightlySecurePreferencesProvider = paramProvider;
    assert (paramProvider1 != null);
    gsonWrapperProvider = paramProvider1;
    assert (paramProvider2 != null);
    apiTaskFactoryProvider = paramProvider2;
    assert (paramProvider3 != null);
    developerSettingsProvider = paramProvider3;
  }
  
  public static buo<aya> a(Provider<ayg> paramProvider, Provider<ato> paramProvider1, Provider<pk> paramProvider2, Provider<azn> paramProvider3)
  {
    return new ayb(paramProvider, paramProvider1, paramProvider2, paramProvider3);
  }
}

/* Location:
 * Qualified Name:     ayb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
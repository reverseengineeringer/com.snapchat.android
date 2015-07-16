import javax.inject.Provider;

public final class ayz
  implements bvp<ayy>
{
  private final Provider<qb> apiTaskFactoryProvider;
  private final Provider<bam> developerSettingsProvider;
  private final Provider<aum> gsonWrapperProvider;
  private final Provider<aze> slightlySecurePreferencesProvider;
  
  static
  {
    if (!ayz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ayz(Provider<aze> paramProvider, Provider<aum> paramProvider1, Provider<qb> paramProvider2, Provider<bam> paramProvider3)
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
  
  public static bvp<ayy> a(Provider<aze> paramProvider, Provider<aum> paramProvider1, Provider<qb> paramProvider2, Provider<bam> paramProvider3)
  {
    return new ayz(paramProvider, paramProvider1, paramProvider2, paramProvider3);
  }
}

/* Location:
 * Qualified Name:     ayz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
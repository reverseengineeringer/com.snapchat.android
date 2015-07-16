import javax.inject.Provider;

public final class ayw
  implements bvk<ayv>
{
  private final Provider<aum> mGsonProvider;
  private final Provider<aze> mSlightlySecurePreferencesProvider;
  
  static
  {
    if (!ayw.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ayw(Provider<aze> paramProvider, Provider<aum> paramProvider1)
  {
    assert (paramProvider != null);
    mSlightlySecurePreferencesProvider = paramProvider;
    assert (paramProvider1 != null);
    mGsonProvider = paramProvider1;
  }
  
  public static bvk<ayv> a(Provider<aze> paramProvider, Provider<aum> paramProvider1)
  {
    return new ayw(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     ayw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
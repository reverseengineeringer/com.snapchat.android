import javax.inject.Provider;

public final class tm
  implements buo<tl>
{
  private final Provider<to> formEncodedJsonFieldMapperProvider;
  private final Provider<ato> gsonProvider;
  private final Provider<tz> multipartEncodedFieldMapperProvider;
  
  static
  {
    if (!tm.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private tm(Provider<to> paramProvider, Provider<tz> paramProvider1, Provider<ato> paramProvider2)
  {
    assert (paramProvider != null);
    formEncodedJsonFieldMapperProvider = paramProvider;
    assert (paramProvider1 != null);
    multipartEncodedFieldMapperProvider = paramProvider1;
    assert (paramProvider2 != null);
    gsonProvider = paramProvider2;
  }
  
  public static buo<tl> a(Provider<to> paramProvider, Provider<tz> paramProvider1, Provider<ato> paramProvider2)
  {
    return new tm(paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     tm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class uc
  implements bvp<ub>
{
  private final Provider<ue> formEncodedJsonFieldMapperProvider;
  private final Provider<aum> gsonProvider;
  private final Provider<up> multipartEncodedFieldMapperProvider;
  
  static
  {
    if (!uc.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private uc(Provider<ue> paramProvider, Provider<up> paramProvider1, Provider<aum> paramProvider2)
  {
    assert (paramProvider != null);
    formEncodedJsonFieldMapperProvider = paramProvider;
    assert (paramProvider1 != null);
    multipartEncodedFieldMapperProvider = paramProvider1;
    assert (paramProvider2 != null);
    gsonProvider = paramProvider2;
  }
  
  public static bvp<ub> a(Provider<ue> paramProvider, Provider<up> paramProvider1, Provider<aum> paramProvider2)
  {
    return new uc(paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     uc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
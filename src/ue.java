import javax.inject.Provider;

public final class ue
  implements buo<ud>
{
  private final Provider<tl> entityFactoryProvider;
  
  static
  {
    if (!ue.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ue(Provider<tl> paramProvider)
  {
    assert (paramProvider != null);
    entityFactoryProvider = paramProvider;
  }
  
  public static buo<ud> a(Provider<tl> paramProvider)
  {
    return new ue(paramProvider);
  }
}

/* Location:
 * Qualified Name:     ue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
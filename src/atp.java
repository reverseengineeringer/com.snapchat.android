import javax.inject.Provider;

public final class atp
  implements buo<ato>
{
  private final Provider<azp> gracefulExceptionHandlerProvider;
  
  static
  {
    if (!atp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private atp(Provider<azp> paramProvider)
  {
    assert (paramProvider != null);
    gracefulExceptionHandlerProvider = paramProvider;
  }
  
  public static buo<ato> a(Provider<azp> paramProvider)
  {
    return new atp(paramProvider);
  }
}

/* Location:
 * Qualified Name:     atp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
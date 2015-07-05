import javax.inject.Provider;

public final class tp
  implements buo<to>
{
  private final Provider<ato> gsonProvider;
  private final buj<to> membersInjector;
  
  static
  {
    if (!tp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private tp(buj<to> parambuj, Provider<ato> paramProvider)
  {
    assert (parambuj != null);
    membersInjector = parambuj;
    assert (paramProvider != null);
    gsonProvider = paramProvider;
  }
  
  public static buo<to> a(buj<to> parambuj, Provider<ato> paramProvider)
  {
    return new tp(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     tp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
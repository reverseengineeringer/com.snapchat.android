import javax.inject.Provider;

public final class ru
  implements bvk<rt>
{
  private final Provider<qw> mCashErrorReporterProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!ru.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ru(bvk<rl> parambvk, Provider<qw> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
  }
  
  public static bvk<rt> a(bvk<rl> parambvk, Provider<qw> paramProvider)
  {
    return new ru(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
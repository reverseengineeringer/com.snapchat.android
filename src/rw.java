import javax.inject.Provider;

public final class rw
  implements bvk<rv>
{
  private final Provider<yj> mCashAuthManagerProvider;
  private final Provider<qw> mCashErrorReporterProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!rw.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rw(bvk<rl> parambvk, Provider<yj> paramProvider, Provider<qw> paramProvider1)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashAuthManagerProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashErrorReporterProvider = paramProvider1;
  }
  
  public static bvk<rv> a(bvk<rl> parambvk, Provider<yj> paramProvider, Provider<qw> paramProvider1)
  {
    return new rw(parambvk, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     rw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
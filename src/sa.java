import javax.inject.Provider;

public final class sa
  implements bvk<rz>
{
  private final Provider<qw> mCashErrorReporterProvider;
  private final Provider<td> mSquareProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!sa.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private sa(bvk<rl> parambvk, Provider<qw> paramProvider, Provider<td> paramProvider1)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareProvider = paramProvider1;
  }
  
  public static bvk<rz> a(bvk<rl> parambvk, Provider<qw> paramProvider, Provider<td> paramProvider1)
  {
    return new sa(parambvk, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     sa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
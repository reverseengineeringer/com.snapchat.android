import javax.inject.Provider;

public final class rs
  implements bvk<rr>
{
  private final Provider<qw> mCashErrorReporterProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!rs.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rs(bvk<rl> parambvk, Provider<qw> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
  }
  
  public static bvk<rr> a(bvk<rl> parambvk, Provider<qw> paramProvider)
  {
    return new rs(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     rs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
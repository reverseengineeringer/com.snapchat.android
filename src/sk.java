import javax.inject.Provider;

public final class sk
  implements bvk<sj>
{
  private final Provider<qw> mCashErrorReporterProvider;
  private final Provider<td> mSquareProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!sk.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private sk(bvk<rl> parambvk, Provider<td> paramProvider, Provider<qw> paramProvider1)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mSquareProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashErrorReporterProvider = paramProvider1;
  }
  
  public static bvk<sj> a(bvk<rl> parambvk, Provider<td> paramProvider, Provider<qw> paramProvider1)
  {
    return new sk(parambvk, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     sk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
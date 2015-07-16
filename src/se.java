import javax.inject.Provider;

public final class se
  implements bvk<sd>
{
  private final Provider<yn> mCashCardManagerProvider;
  private final Provider<qw> mCashErrorReporterProvider;
  private final Provider<td> mSquareProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!se.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private se(bvk<rl> parambvk, Provider<td> paramProvider, Provider<yn> paramProvider1, Provider<qw> paramProvider2)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mSquareProvider = paramProvider;
    assert (paramProvider1 != null);
    mCashCardManagerProvider = paramProvider1;
    assert (paramProvider2 != null);
    mCashErrorReporterProvider = paramProvider2;
  }
  
  public static bvk<sd> a(bvk<rl> parambvk, Provider<td> paramProvider, Provider<yn> paramProvider1, Provider<qw> paramProvider2)
  {
    return new se(parambvk, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     se
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
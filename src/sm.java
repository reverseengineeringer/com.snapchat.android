import javax.inject.Provider;

public final class sm
  implements bvk<sl>
{
  private final Provider<yj> mCashAuthManagerProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!sm.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private sm(bvk<rl> parambvk, Provider<yj> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashAuthManagerProvider = paramProvider;
  }
  
  public static bvk<sl> a(bvk<rl> parambvk, Provider<yj> paramProvider)
  {
    return new sm(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     sm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
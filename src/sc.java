import javax.inject.Provider;

public final class sc
  implements bvk<sb>
{
  private final Provider<yn> mCashCardManagerProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!sc.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private sc(bvk<rl> parambvk, Provider<yn> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashCardManagerProvider = paramProvider;
  }
  
  public static bvk<sb> a(bvk<rl> parambvk, Provider<yn> paramProvider)
  {
    return new sc(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     sc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class tj
  implements bvk<ti>
{
  private final Provider<yn> mCashCardManagerProvider;
  private final bvk<tg> supertypeInjector;
  
  static
  {
    if (!tj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private tj(bvk<tg> parambvk, Provider<yn> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashCardManagerProvider = paramProvider;
  }
  
  public static bvk<ti> a(bvk<tg> parambvk, Provider<yn> paramProvider)
  {
    return new tj(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     tj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
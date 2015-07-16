import javax.inject.Provider;

public final class ry
  implements bvk<rx>
{
  private final Provider<yn> mCashCardManagerProvider;
  private final Provider<td> mSquareProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!ry.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ry(bvk<rl> parambvk, Provider<yn> paramProvider, Provider<td> paramProvider1)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashCardManagerProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareProvider = paramProvider1;
  }
  
  public static bvk<rx> a(bvk<rl> parambvk, Provider<yn> paramProvider, Provider<td> paramProvider1)
  {
    return new ry(parambvk, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     ry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
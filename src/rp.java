import javax.inject.Provider;

public final class rp
  implements bvk<ro>
{
  private final Provider<yt> mReceivingCashManagerProvider;
  private final bvk<rl> supertypeInjector;
  
  static
  {
    if (!rp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private rp(bvk<rl> parambvk, Provider<yt> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mReceivingCashManagerProvider = paramProvider;
  }
  
  public static bvk<ro> a(bvk<rl> parambvk, Provider<yt> paramProvider)
  {
    return new rp(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     rp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
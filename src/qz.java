import javax.inject.Provider;

public final class qz
  implements buj<qy>
{
  private final Provider<xx> mReceivingCashManagerProvider;
  private final buj<qv> supertypeInjector;
  
  static
  {
    if (!qz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private qz(buj<qv> parambuj, Provider<xx> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mReceivingCashManagerProvider = paramProvider;
  }
  
  public static buj<qy> a(buj<qv> parambuj, Provider<xx> paramProvider)
  {
    return new qz(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     qz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
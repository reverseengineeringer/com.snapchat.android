import javax.inject.Provider;

public final class th
  implements bvk<tg>
{
  private final Provider<yj> mCashAuthManagerProvider;
  private final Provider<ub> mEntityFactoryProvider;
  private final Provider<va> mSquareOkHttpClientFactoryProvider;
  private final bvk<ul> supertypeInjector;
  
  static
  {
    if (!th.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private th(bvk<ul> parambvk, Provider<yj> paramProvider, Provider<va> paramProvider1, Provider<ub> paramProvider2)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mCashAuthManagerProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareOkHttpClientFactoryProvider = paramProvider1;
    assert (paramProvider2 != null);
    mEntityFactoryProvider = paramProvider2;
  }
  
  public static bvk<tg> a(bvk<ul> parambvk, Provider<yj> paramProvider, Provider<va> paramProvider1, Provider<ub> paramProvider2)
  {
    return new th(parambvk, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     th
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
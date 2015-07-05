import javax.inject.Provider;

public final class qj
  implements buj<qh>
{
  private final Provider<qs> mScProvider;
  private final Provider<sn> mSquareProvider;
  
  static
  {
    if (!qj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private qj(Provider<qs> paramProvider, Provider<sn> paramProvider1)
  {
    assert (paramProvider != null);
    mScProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareProvider = paramProvider1;
  }
  
  public static buj<qh> a(Provider<qs> paramProvider, Provider<sn> paramProvider1)
  {
    return new qj(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     qj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
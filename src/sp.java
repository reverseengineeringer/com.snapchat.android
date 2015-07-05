import javax.inject.Provider;

public final class sp
  implements buj<sn>
{
  private final Provider<qg> mCashErrorReporterProvider;
  
  static
  {
    if (!sp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private sp(Provider<qg> paramProvider)
  {
    assert (paramProvider != null);
    mCashErrorReporterProvider = paramProvider;
  }
  
  public static buj<sn> a(Provider<qg> paramProvider)
  {
    return new sp(paramProvider);
  }
}

/* Location:
 * Qualified Name:     sp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class axw
  implements buj<axu>
{
  private final Provider<bgk> mClockProvider;
  
  static
  {
    if (!axw.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private axw(Provider<bgk> paramProvider)
  {
    assert (paramProvider != null);
    mClockProvider = paramProvider;
  }
  
  public static buj<axu> a(Provider<bgk> paramProvider)
  {
    return new axw(paramProvider);
  }
}

/* Location:
 * Qualified Name:     axw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
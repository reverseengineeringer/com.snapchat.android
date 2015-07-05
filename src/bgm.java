import javax.inject.Provider;

public final class bgm
  implements buj<bgl>
{
  private final Provider<bgk> mClockProvider;
  
  static
  {
    if (!bgm.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bgm(Provider<bgk> paramProvider)
  {
    assert (paramProvider != null);
    mClockProvider = paramProvider;
  }
  
  public static buj<bgl> a(Provider<bgk> paramProvider)
  {
    return new bgm(paramProvider);
  }
}

/* Location:
 * Qualified Name:     bgm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class azy
  implements buo<azx>
{
  private final Provider<ReleaseManager> releaseManagerProvider;
  
  static
  {
    if (!azy.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private azy(Provider<ReleaseManager> paramProvider)
  {
    assert (paramProvider != null);
    releaseManagerProvider = paramProvider;
  }
  
  public static buo<azx> a(Provider<ReleaseManager> paramProvider)
  {
    return new azy(paramProvider);
  }
}

/* Location:
 * Qualified Name:     azy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
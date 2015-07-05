import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class azq
  implements buo<azp>
{
  private final Provider<azi> crashSamplerProvider;
  private final Provider<ReleaseManager> releaseManagerProvider;
  
  static
  {
    if (!azq.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private azq(Provider<azi> paramProvider, Provider<ReleaseManager> paramProvider1)
  {
    assert (paramProvider != null);
    crashSamplerProvider = paramProvider;
    assert (paramProvider1 != null);
    releaseManagerProvider = paramProvider1;
  }
  
  public static buo<azp> a(Provider<azi> paramProvider, Provider<ReleaseManager> paramProvider1)
  {
    return new azq(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     azq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
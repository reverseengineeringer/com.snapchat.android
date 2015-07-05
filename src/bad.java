import android.content.Context;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class bad
  implements buo<bac>
{
  private final Provider<bkz> anrDetectorProvider;
  private final Provider<Context> contextProvider;
  private final Provider<azi> crashSamplerProvider;
  private final Provider<azp> exceptionHandlerProvider;
  private final Provider<ReleaseManager> releaseManagerProvider;
  
  static
  {
    if (!bad.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bad(Provider<azi> paramProvider, Provider<bkz> paramProvider1, Provider<ReleaseManager> paramProvider2, Provider<azp> paramProvider3, Provider<Context> paramProvider4)
  {
    assert (paramProvider != null);
    crashSamplerProvider = paramProvider;
    assert (paramProvider1 != null);
    anrDetectorProvider = paramProvider1;
    assert (paramProvider2 != null);
    releaseManagerProvider = paramProvider2;
    assert (paramProvider3 != null);
    exceptionHandlerProvider = paramProvider3;
    assert (paramProvider4 != null);
    contextProvider = paramProvider4;
  }
  
  public static buo<bac> a(Provider<azi> paramProvider, Provider<bkz> paramProvider1, Provider<ReleaseManager> paramProvider2, Provider<azp> paramProvider3, Provider<Context> paramProvider4)
  {
    return new bad(paramProvider, paramProvider1, paramProvider2, paramProvider3, paramProvider4);
  }
}

/* Location:
 * Qualified Name:     bad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
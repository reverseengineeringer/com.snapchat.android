import android.content.Context;
import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class bbd
  implements bvp<bbc>
{
  private final Provider<bma> anrDetectorProvider;
  private final Provider<Context> contextProvider;
  private final Provider<bah> crashSamplerProvider;
  private final Provider<bao> exceptionHandlerProvider;
  private final Provider<ReleaseManager> releaseManagerProvider;
  
  static
  {
    if (!bbd.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bbd(Provider<bah> paramProvider, Provider<bma> paramProvider1, Provider<ReleaseManager> paramProvider2, Provider<bao> paramProvider3, Provider<Context> paramProvider4)
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
  
  public static bvp<bbc> a(Provider<bah> paramProvider, Provider<bma> paramProvider1, Provider<ReleaseManager> paramProvider2, Provider<bao> paramProvider3, Provider<Context> paramProvider4)
  {
    return new bbd(paramProvider, paramProvider1, paramProvider2, paramProvider3, paramProvider4);
  }
}

/* Location:
 * Qualified Name:     bbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
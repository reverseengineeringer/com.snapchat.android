import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class bap
  implements bvp<bao>
{
  private final Provider<bah> crashSamplerProvider;
  private final Provider<ReleaseManager> releaseManagerProvider;
  
  static
  {
    if (!bap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bap(Provider<bah> paramProvider, Provider<ReleaseManager> paramProvider1)
  {
    assert (paramProvider != null);
    crashSamplerProvider = paramProvider;
    assert (paramProvider1 != null);
    releaseManagerProvider = paramProvider1;
  }
  
  public static bvp<bao> a(Provider<bah> paramProvider, Provider<ReleaseManager> paramProvider1)
  {
    return new bap(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     bap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
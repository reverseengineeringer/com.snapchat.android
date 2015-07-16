import com.snapchat.android.util.debug.ReleaseManager;
import javax.inject.Provider;

public final class bax
  implements bvp<baw>
{
  private final Provider<ReleaseManager> releaseManagerProvider;
  
  static
  {
    if (!bax.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bax(Provider<ReleaseManager> paramProvider)
  {
    assert (paramProvider != null);
    releaseManagerProvider = paramProvider;
  }
  
  public static bvp<baw> a(Provider<ReleaseManager> paramProvider)
  {
    return new bax(paramProvider);
  }
}

/* Location:
 * Qualified Name:     bax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import android.support.v4.app.FragmentActivity;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry;
import javax.inject.Provider;

public final class mx
  implements bvk<SnapchatActivity>
{
  private final bvk<FragmentActivity> b;
  private final Provider<AnalyticsPlatformRegistry> c;
  private final Provider<bah> d;
  private final Provider<bbc> e;
  
  static
  {
    if (!mx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private mx(bvk<FragmentActivity> parambvk, Provider<AnalyticsPlatformRegistry> paramProvider, Provider<bah> paramProvider1, Provider<bbc> paramProvider2)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    d = paramProvider1;
    if ((!a) && (paramProvider2 == null)) {
      throw new AssertionError();
    }
    e = paramProvider2;
  }
  
  public static bvk<SnapchatActivity> a(bvk<FragmentActivity> parambvk, Provider<AnalyticsPlatformRegistry> paramProvider, Provider<bah> paramProvider1, Provider<bbc> paramProvider2)
  {
    return new mx(parambvk, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     mx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
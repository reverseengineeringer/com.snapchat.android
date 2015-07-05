import android.support.v4.app.FragmentActivity;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry;
import javax.inject.Provider;

public final class mf
  implements buj<SnapchatActivity>
{
  private final buj<FragmentActivity> b;
  private final Provider<AnalyticsPlatformRegistry> c;
  private final Provider<azi> d;
  private final Provider<bac> e;
  
  static
  {
    if (!mf.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private mf(buj<FragmentActivity> parambuj, Provider<AnalyticsPlatformRegistry> paramProvider, Provider<azi> paramProvider1, Provider<bac> paramProvider2)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
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
  
  public static buj<SnapchatActivity> a(buj<FragmentActivity> parambuj, Provider<AnalyticsPlatformRegistry> paramProvider, Provider<azi> paramProvider1, Provider<bac> paramProvider2)
  {
    return new mf(parambuj, paramProvider, paramProvider1, paramProvider2);
  }
}

/* Location:
 * Qualified Name:     mf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
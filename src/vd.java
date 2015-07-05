import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class vd
  implements buj<FeedFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<azo> c;
  
  static
  {
    if (!vd.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private vd(buj<SnapchatFragment> parambuj, Provider<azo> paramProvider)
  {
    if ((!a) && (parambuj == null)) {
      throw new AssertionError();
    }
    b = parambuj;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static buj<FeedFragment> a(buj<SnapchatFragment> parambuj, Provider<azo> paramProvider)
  {
    return new vd(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     vd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
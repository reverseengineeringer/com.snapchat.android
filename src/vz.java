import com.snapchat.android.app.feature.messaging.feed.ui.fragment.FeedFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class vz
  implements bvk<FeedFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<ban> c;
  
  static
  {
    if (!vz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private vz(bvk<SnapchatFragment> parambvk, Provider<ban> paramProvider)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static bvk<FeedFragment> a(bvk<SnapchatFragment> parambvk, Provider<ban> paramProvider)
  {
    return new vz(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     vz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
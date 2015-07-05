import com.snapchat.android.fragments.stories.StoriesFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class aha
  implements buj<StoriesFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<abh> c;
  
  static
  {
    if (!aha.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private aha(buj<SnapchatFragment> parambuj, Provider<abh> paramProvider)
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
  
  public static buj<StoriesFragment> a(buj<SnapchatFragment> parambuj, Provider<abh> paramProvider)
  {
    return new aha(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     aha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
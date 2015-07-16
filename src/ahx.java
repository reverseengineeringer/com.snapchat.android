import com.snapchat.android.fragments.stories.StoriesFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ahx
  implements bvk<StoriesFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<ach> c;
  
  static
  {
    if (!ahx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahx(bvk<SnapchatFragment> parambvk, Provider<ach> paramProvider)
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
  
  public static bvk<StoriesFragment> a(bvk<SnapchatFragment> parambvk, Provider<ach> paramProvider)
  {
    return new ahx(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
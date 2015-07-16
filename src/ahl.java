import com.snapchat.android.fragments.settings.DeveloperSettingsFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ahl
  implements bvk<DeveloperSettingsFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<yj> c;
  private final Provider<yn> d;
  
  static
  {
    if (!ahl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahl(bvk<SnapchatFragment> parambvk, Provider<yj> paramProvider, Provider<yn> paramProvider1)
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
  }
  
  public static bvk<DeveloperSettingsFragment> a(bvk<SnapchatFragment> parambvk, Provider<yj> paramProvider, Provider<yn> paramProvider1)
  {
    return new ahl(parambvk, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     ahl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
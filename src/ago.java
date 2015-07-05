import com.snapchat.android.fragments.settings.DeveloperSettingsFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ago
  implements buj<DeveloperSettingsFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<xn> c;
  private final Provider<xr> d;
  
  static
  {
    if (!ago.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ago(buj<SnapchatFragment> parambuj, Provider<xn> paramProvider, Provider<xr> paramProvider1)
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
  }
  
  public static buj<DeveloperSettingsFragment> a(buj<SnapchatFragment> parambuj, Provider<xn> paramProvider, Provider<xr> paramProvider1)
  {
    return new ago(parambuj, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     ago
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
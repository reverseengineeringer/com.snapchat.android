import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class agp
  implements buj<WebFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<ato> c;
  
  static
  {
    if (!agp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agp(buj<SnapchatFragment> parambuj, Provider<ato> paramProvider)
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
  
  public static buj<WebFragment> a(buj<SnapchatFragment> parambuj, Provider<ato> paramProvider)
  {
    return new agp(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import com.snapchat.android.fragments.signup.LoginFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ags
  implements buj<LoginFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<ayg> c;
  
  static
  {
    if (!ags.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ags(buj<SnapchatFragment> parambuj, Provider<ayg> paramProvider)
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
  
  public static buj<LoginFragment> a(buj<SnapchatFragment> parambuj, Provider<ayg> paramProvider)
  {
    return new ags(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ags
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
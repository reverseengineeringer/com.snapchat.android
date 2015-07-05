import com.snapchat.android.fragments.signup.SignupFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class agt
  implements buj<SignupFragment>
{
  private final buj<SnapchatFragment> b;
  private final Provider<ayg> c;
  
  static
  {
    if (!agt.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agt(buj<SnapchatFragment> parambuj, Provider<ayg> paramProvider)
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
  
  public static buj<SignupFragment> a(buj<SnapchatFragment> parambuj, Provider<ayg> paramProvider)
  {
    return new agt(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
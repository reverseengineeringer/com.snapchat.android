import com.snapchat.android.fragments.signup.LoginFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ahp
  implements bvk<LoginFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<aze> c;
  
  static
  {
    if (!ahp.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahp(bvk<SnapchatFragment> parambvk, Provider<aze> paramProvider)
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
  
  public static bvk<LoginFragment> a(bvk<SnapchatFragment> parambvk, Provider<aze> paramProvider)
  {
    return new ahp(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
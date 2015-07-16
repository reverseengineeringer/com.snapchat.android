import com.snapchat.android.fragments.signup.SignupFragment;
import com.snapchat.android.util.fragment.SnapchatFragment;
import javax.inject.Provider;

public final class ahq
  implements bvk<SignupFragment>
{
  private final bvk<SnapchatFragment> b;
  private final Provider<aze> c;
  
  static
  {
    if (!ahq.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahq(bvk<SnapchatFragment> parambvk, Provider<aze> paramProvider)
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
  
  public static bvk<SignupFragment> a(bvk<SnapchatFragment> parambvk, Provider<aze> paramProvider)
  {
    return new ahq(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import com.snapchat.android.fragments.signup.GenericCodeVerificationFragment;
import com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment;
import javax.inject.Provider;

public final class agv
  implements buj<TwoFactorCodeVerificationFragment>
{
  private final buj<GenericCodeVerificationFragment> b;
  private final Provider<ayg> c;
  
  static
  {
    if (!agv.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agv(buj<GenericCodeVerificationFragment> parambuj, Provider<ayg> paramProvider)
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
  
  public static buj<TwoFactorCodeVerificationFragment> a(buj<GenericCodeVerificationFragment> parambuj, Provider<ayg> paramProvider)
  {
    return new agv(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
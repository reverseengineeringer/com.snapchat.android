import com.snapchat.android.fragments.signup.GenericCodeVerificationFragment;
import com.snapchat.android.fragments.signup.TwoFactorCodeVerificationFragment;
import javax.inject.Provider;

public final class ahs
  implements bvk<TwoFactorCodeVerificationFragment>
{
  private final bvk<GenericCodeVerificationFragment> b;
  private final Provider<aze> c;
  
  static
  {
    if (!ahs.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahs(bvk<GenericCodeVerificationFragment> parambvk, Provider<aze> paramProvider)
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
  
  public static bvk<TwoFactorCodeVerificationFragment> a(bvk<GenericCodeVerificationFragment> parambvk, Provider<aze> paramProvider)
  {
    return new ahs(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
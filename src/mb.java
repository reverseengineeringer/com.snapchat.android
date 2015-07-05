import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatActivity;
import javax.inject.Provider;

public final class mb
  implements buj<LandingPageActivity>
{
  private final buj<SnapchatActivity> b;
  private final Provider<abh> c;
  private final Provider<apd> d;
  
  static
  {
    if (!mb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private mb(buj<SnapchatActivity> parambuj, Provider<abh> paramProvider, Provider<apd> paramProvider1)
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
  
  public static buj<LandingPageActivity> a(buj<SnapchatActivity> parambuj, Provider<abh> paramProvider, Provider<apd> paramProvider1)
  {
    return new mb(parambuj, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     mb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
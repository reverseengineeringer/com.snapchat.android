import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatActivity;
import javax.inject.Provider;

public final class mt
  implements bvk<LandingPageActivity>
{
  private final bvk<SnapchatActivity> b;
  private final Provider<ach> c;
  private final Provider<apz> d;
  
  static
  {
    if (!mt.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private mt(bvk<SnapchatActivity> parambvk, Provider<ach> paramProvider, Provider<apz> paramProvider1)
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
  
  public static bvk<LandingPageActivity> a(bvk<SnapchatActivity> parambvk, Provider<ach> paramProvider, Provider<apz> paramProvider1)
  {
    return new mt(parambvk, paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     mt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
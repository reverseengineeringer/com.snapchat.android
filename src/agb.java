import com.snapchat.android.model.Friend;
import javax.inject.Provider;

public final class agb
  implements bvk<aga>
{
  private final bvk<aqb<Friend>> b;
  private final Provider<ban> c;
  
  static
  {
    if (!agb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agb(bvk<aqb<Friend>> parambvk, Provider<ban> paramProvider)
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
  
  public static bvk<aga> a(bvk<aqb<Friend>> parambvk, Provider<ban> paramProvider)
  {
    return new agb(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
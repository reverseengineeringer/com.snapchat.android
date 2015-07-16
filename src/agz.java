import com.snapchat.android.model.Friend;
import javax.inject.Provider;

public final class agz
  implements bvk<agy>
{
  private final bvk<aqb<Friend>> b;
  private final Provider<ban> c;
  
  static
  {
    if (!agz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agz(bvk<aqb<Friend>> parambvk, Provider<ban> paramProvider)
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
  
  public static bvk<agy> a(bvk<aqb<Friend>> parambvk, Provider<ban> paramProvider)
  {
    return new agz(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import com.snapchat.android.model.Friend;
import javax.inject.Provider;

public final class afb
  implements buj<afa>
{
  private final buj<apf<Friend>> b;
  private final Provider<azo> c;
  
  static
  {
    if (!afb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private afb(buj<apf<Friend>> parambuj, Provider<azo> paramProvider)
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
  
  public static buj<afa> a(buj<apf<Friend>> parambuj, Provider<azo> paramProvider)
  {
    return new afb(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     afb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
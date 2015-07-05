import com.snapchat.android.model.Friend;
import javax.inject.Provider;

public final class afz
  implements buj<afy>
{
  private final buj<apf<Friend>> b;
  private final Provider<azo> c;
  
  static
  {
    if (!afz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private afz(buj<apf<Friend>> parambuj, Provider<azo> paramProvider)
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
  
  public static buj<afy> a(buj<apf<Friend>> parambuj, Provider<azo> paramProvider)
  {
    return new afz(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     afz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
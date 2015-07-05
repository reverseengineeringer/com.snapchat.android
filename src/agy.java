import com.snapchat.android.fragments.stories.StoriesAdapter;
import javax.inject.Provider;

public final class agy
  implements buj<StoriesAdapter>
{
  private final buj<apf<ahb>> b;
  private final Provider<azo> c;
  
  static
  {
    if (!agy.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agy(buj<apf<ahb>> parambuj, Provider<azo> paramProvider)
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
  
  public static buj<StoriesAdapter> a(buj<apf<ahb>> parambuj, Provider<azo> paramProvider)
  {
    return new agy(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
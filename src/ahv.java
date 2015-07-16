import com.snapchat.android.fragments.stories.StoriesAdapter;
import javax.inject.Provider;

public final class ahv
  implements bvk<StoriesAdapter>
{
  private final bvk<aqb<ahy>> b;
  private final Provider<ban> c;
  
  static
  {
    if (!ahv.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahv(bvk<aqb<ahy>> parambvk, Provider<ban> paramProvider)
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
  
  public static bvk<StoriesAdapter> a(bvk<aqb<ahy>> parambvk, Provider<ban> paramProvider)
  {
    return new ahv(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
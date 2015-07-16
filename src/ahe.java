import android.support.v7.widget.RecyclerView.a;
import javax.inject.Provider;

public final class ahe
  implements bvk<ahd>
{
  private final bvk<RecyclerView.a<ato>> b;
  private final Provider<ban> c;
  
  static
  {
    if (!ahe.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ahe(bvk<RecyclerView.a<ato>> parambvk, Provider<ban> paramProvider)
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
  
  public static bvk<ahd> a(bvk<RecyclerView.a<ato>> parambvk, Provider<ban> paramProvider)
  {
    return new ahe(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ahe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
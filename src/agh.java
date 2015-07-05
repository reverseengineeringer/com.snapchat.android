import android.support.v7.widget.RecyclerView.a;
import javax.inject.Provider;

public final class agh
  implements buj<agg>
{
  private final buj<RecyclerView.a<asp>> b;
  private final Provider<azo> c;
  
  static
  {
    if (!agh.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private agh(buj<RecyclerView.a<asp>> parambuj, Provider<azo> paramProvider)
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
  
  public static buj<agg> a(buj<RecyclerView.a<asp>> parambuj, Provider<azo> paramProvider)
  {
    return new agh(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     agh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
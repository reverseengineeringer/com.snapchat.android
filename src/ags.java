import android.widget.BaseAdapter;
import javax.inject.Provider;

public final class ags
  implements bvk<agr>
{
  private final bvk<BaseAdapter> b;
  private final Provider<yt> c;
  
  static
  {
    if (!ags.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ags(bvk<BaseAdapter> parambvk, Provider<yt> paramProvider)
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
  
  public static bvk<agr> a(bvk<BaseAdapter> parambvk, Provider<yt> paramProvider)
  {
    return new ags(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ags
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
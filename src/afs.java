import android.widget.BaseAdapter;
import javax.inject.Provider;

public final class afs
  implements buj<afr>
{
  private final buj<BaseAdapter> b;
  private final Provider<xx> c;
  
  static
  {
    if (!afs.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private afs(buj<BaseAdapter> parambuj, Provider<xx> paramProvider)
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
  
  public static buj<afr> a(buj<BaseAdapter> parambuj, Provider<xx> paramProvider)
  {
    return new afs(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     afs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
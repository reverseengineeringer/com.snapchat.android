import android.os.AsyncTask;
import javax.inject.Provider;

public final class pl
  implements bvk<pk>
{
  private final Provider<aum> mGsonProvider;
  private final bvk<AsyncTask<String, Void, alp>> supertypeInjector;
  
  static
  {
    if (!pl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private pl(bvk<AsyncTask<String, Void, alp>> parambvk, Provider<aum> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mGsonProvider = paramProvider;
  }
  
  public static bvk<pk> a(bvk<AsyncTask<String, Void, alp>> parambvk, Provider<aum> paramProvider)
  {
    return new pl(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     pl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
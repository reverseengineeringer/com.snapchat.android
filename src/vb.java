import android.content.Context;
import javax.inject.Provider;

public final class vb
  implements bvp<va>
{
  private final Provider<Context> contextProvider;
  
  static
  {
    if (!vb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private vb(Provider<Context> paramProvider)
  {
    assert (paramProvider != null);
    contextProvider = paramProvider;
  }
  
  public static bvp<va> a(Provider<Context> paramProvider)
  {
    return new vb(paramProvider);
  }
}

/* Location:
 * Qualified Name:     vb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
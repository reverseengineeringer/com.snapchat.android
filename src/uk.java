import android.content.Context;
import javax.inject.Provider;

public final class uk
  implements buo<uj>
{
  private final Provider<Context> contextProvider;
  
  static
  {
    if (!uk.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private uk(Provider<Context> paramProvider)
  {
    assert (paramProvider != null);
    contextProvider = paramProvider;
  }
  
  public static buo<uj> a(Provider<Context> paramProvider)
  {
    return new uk(paramProvider);
  }
}

/* Location:
 * Qualified Name:     uk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
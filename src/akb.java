import com.snapchat.android.model.Snap;
import javax.inject.Provider;

public final class akb
  implements bvk<aka>
{
  private final Provider<bhk> mClockProvider;
  private final bvk<Snap> supertypeInjector;
  
  static
  {
    if (!akb.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private akb(bvk<Snap> parambvk, Provider<bhk> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mClockProvider = paramProvider;
  }
  
  public static bvk<aka> a(bvk<Snap> parambvk, Provider<bhk> paramProvider)
  {
    return new akb(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     akb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
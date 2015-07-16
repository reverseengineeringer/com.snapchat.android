import com.squareup.otto.Bus;
import javax.inject.Provider;

public final class bel
  implements bvk<bek>
{
  private final Provider<ban> mExceptionReporterProvider;
  private final bvk<Bus> supertypeInjector;
  
  static
  {
    if (!bel.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bel(bvk<Bus> parambvk, Provider<ban> paramProvider)
  {
    assert (parambvk != null);
    supertypeInjector = parambvk;
    assert (paramProvider != null);
    mExceptionReporterProvider = paramProvider;
  }
  
  public static bvk<bek> a(bvk<Bus> parambvk, Provider<ban> paramProvider)
  {
    return new bel(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     bel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
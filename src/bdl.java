import com.squareup.otto.Bus;
import javax.inject.Provider;

public final class bdl
  implements buj<bdk>
{
  private final Provider<azo> mExceptionReporterProvider;
  private final buj<Bus> supertypeInjector;
  
  static
  {
    if (!bdl.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private bdl(buj<Bus> parambuj, Provider<azo> paramProvider)
  {
    assert (parambuj != null);
    supertypeInjector = parambuj;
    assert (paramProvider != null);
    mExceptionReporterProvider = paramProvider;
  }
  
  public static buj<bdk> a(buj<Bus> parambuj, Provider<azo> paramProvider)
  {
    return new bdl(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     bdl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
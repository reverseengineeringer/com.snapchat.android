import javax.inject.Provider;

public final class yc
  implements buj<ya>
{
  private final Provider<qd> b;
  private final Provider<mz> c;
  
  static
  {
    if (!yc.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private yc(Provider<qd> paramProvider, Provider<mz> paramProvider1)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
    if ((!a) && (paramProvider1 == null)) {
      throw new AssertionError();
    }
    c = paramProvider1;
  }
  
  public static buj<ya> a(Provider<qd> paramProvider, Provider<mz> paramProvider1)
  {
    return new yc(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     yc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
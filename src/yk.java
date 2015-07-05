import javax.inject.Provider;

public final class yk
  implements buj<yj>
{
  private final Provider<ya> b;
  
  static
  {
    if (!yk.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private yk(Provider<ya> paramProvider)
  {
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    b = paramProvider;
  }
  
  public static buj<yj> a(Provider<ya> paramProvider)
  {
    return new yk(paramProvider);
  }
}

/* Location:
 * Qualified Name:     yk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
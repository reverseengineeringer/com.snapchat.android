import javax.inject.Provider;

public final class ani
  implements buj<anh>
{
  private final buj<apf<ajc>> b;
  private final Provider<zs> c;
  
  static
  {
    if (!ani.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private ani(buj<apf<ajc>> parambuj, Provider<zs> paramProvider)
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
  
  public static buj<anh> a(buj<apf<ajc>> parambuj, Provider<zs> paramProvider)
  {
    return new ani(parambuj, paramProvider);
  }
}

/* Location:
 * Qualified Name:     ani
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
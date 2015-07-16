import javax.inject.Provider;

public final class aof
  implements bvk<aoe>
{
  private final bvk<aqb<ajy>> b;
  private final Provider<aas> c;
  
  static
  {
    if (!aof.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private aof(bvk<aqb<ajy>> parambvk, Provider<aas> paramProvider)
  {
    if ((!a) && (parambvk == null)) {
      throw new AssertionError();
    }
    b = parambvk;
    if ((!a) && (paramProvider == null)) {
      throw new AssertionError();
    }
    c = paramProvider;
  }
  
  public static bvk<aoe> a(bvk<aqb<ajy>> parambvk, Provider<aas> paramProvider)
  {
    return new aof(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     aof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
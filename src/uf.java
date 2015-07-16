import javax.inject.Provider;

public final class uf
  implements bvp<ue>
{
  private final Provider<aum> gsonProvider;
  private final bvk<ue> membersInjector;
  
  static
  {
    if (!uf.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private uf(bvk<ue> parambvk, Provider<aum> paramProvider)
  {
    assert (parambvk != null);
    membersInjector = parambvk;
    assert (paramProvider != null);
    gsonProvider = paramProvider;
  }
  
  public static bvp<ue> a(bvk<ue> parambvk, Provider<aum> paramProvider)
  {
    return new uf(parambvk, paramProvider);
  }
}

/* Location:
 * Qualified Name:     uf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
import javax.inject.Provider;

public final class qz
  implements bvk<qx>
{
  private final Provider<ri> mScProvider;
  private final Provider<td> mSquareProvider;
  
  static
  {
    if (!qz.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private qz(Provider<ri> paramProvider, Provider<td> paramProvider1)
  {
    assert (paramProvider != null);
    mScProvider = paramProvider;
    assert (paramProvider1 != null);
    mSquareProvider = paramProvider1;
  }
  
  public static bvk<qx> a(Provider<ri> paramProvider, Provider<td> paramProvider1)
  {
    return new qz(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     qz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
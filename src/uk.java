import javax.inject.Provider;

public final class uk
  implements bvk<uj>
{
  private final Provider<aum> mGsonWrapperProvider;
  private final Provider<ut> mNetworkInterfaceProvider;
  
  static
  {
    if (!uk.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private uk(Provider<ut> paramProvider, Provider<aum> paramProvider1)
  {
    assert (paramProvider != null);
    mNetworkInterfaceProvider = paramProvider;
    assert (paramProvider1 != null);
    mGsonWrapperProvider = paramProvider1;
  }
  
  public static bvk<uj> a(Provider<ut> paramProvider, Provider<aum> paramProvider1)
  {
    return new uk(paramProvider, paramProvider1);
  }
}

/* Location:
 * Qualified Name:     uk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
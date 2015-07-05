import com.snapchat.android.util.debug.ReleaseManager;

public final class ayu
  implements buo<ReleaseManager>
{
  private final ayl module;
  
  static
  {
    if (!ayu.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ayu(ayl paramayl)
  {
    assert (paramayl != null);
    module = paramayl;
  }
  
  public static buo<ReleaseManager> a(ayl paramayl)
  {
    return new ayu(paramayl);
  }
}

/* Location:
 * Qualified Name:     ayu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
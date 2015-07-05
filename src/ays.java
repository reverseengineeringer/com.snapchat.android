import com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform;

public final class ays
  implements buo<FlurryAnalyticsPlatform>
{
  private final ayl module;
  
  static
  {
    if (!ays.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private ays(ayl paramayl)
  {
    assert (paramayl != null);
    module = paramayl;
  }
  
  public static buo<FlurryAnalyticsPlatform> a(ayl paramayl)
  {
    return new ays(paramayl);
  }
}

/* Location:
 * Qualified Name:     ays
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
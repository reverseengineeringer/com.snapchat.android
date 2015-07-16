import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.LogoutReason;

public abstract class tx
  extends ul
{
  public final akp mUser = akp.g();
  
  public String getBaseUrl()
  {
    return bal.b("dummy");
  }
  
  public abstract String getPath();
  
  public Object getRequestPayload()
  {
    return new qc();
  }
  
  public String getUrl()
  {
    return getBaseUrl() + getPath();
  }
  
  public void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (mResponseCode == 401)
    {
      AnalyticsEvents.a(AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
      aph.a().e();
    }
  }
}

/* Location:
 * Qualified Name:     tx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
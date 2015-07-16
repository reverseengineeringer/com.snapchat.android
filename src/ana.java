import android.content.Intent;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.LogoutReason;

public abstract class ana
  extends and
{
  protected akp h = akp.g();
  
  public ana(Intent paramIntent)
  {
    super(paramIntent);
  }
  
  public boolean d()
  {
    return true;
  }
  
  public String getUrl()
  {
    return bal.b("dummy") + l_();
  }
  
  public abstract String l_();
  
  public void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if ((d()) && (mResponseCode == 401))
    {
      AnalyticsEvents.a(AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
      aph.a().e();
    }
  }
}

/* Location:
 * Qualified Name:     ana
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
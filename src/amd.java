import android.content.Intent;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.LogoutReason;

public abstract class amd
  extends amg
{
  protected ajv h = ajv.g();
  
  public amd(Intent paramIntent)
  {
    super(paramIntent);
  }
  
  public void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if ((i()) && (mResponseCode == 401))
    {
      AnalyticsEvents.a(AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
      aol.a().e();
    }
  }
  
  public abstract String e();
  
  public boolean i()
  {
    return true;
  }
  
  public final String n_()
  {
    return azm.b("dummy") + e();
  }
}

/* Location:
 * Qualified Name:     amd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
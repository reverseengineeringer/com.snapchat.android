import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.AnalyticsEvents.LogoutReason;

public abstract class th
  extends tv
{
  public final ajv mUser = ajv.g();
  
  public void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (mResponseCode == 401)
    {
      AnalyticsEvents.a(AnalyticsEvents.LogoutReason.AUTHENTICATION_ERROR);
      aol.a().e();
    }
  }
  
  public Object b()
  {
    return new pl();
  }
  
  public abstract String d();
  
  public String h()
  {
    return azm.b("dummy");
  }
  
  public final String n_()
  {
    return h() + d();
  }
}

/* Location:
 * Qualified Name:     th
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
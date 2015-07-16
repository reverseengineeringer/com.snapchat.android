import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;

public class ym
{
  @SerializedName("access_token")
  @chd
  public String a;
  @SerializedName("expires_at")
  @chd
  private String b;
  
  public final boolean a(long paramLong)
  {
    String str = b;
    if (str == null) {}
    for (;;)
    {
      return true;
      try
      {
        long l = chha;
        if (paramLong <= l) {
          return false;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        new ErrorMetric("Malformed expiration dateTime").a(localIllegalArgumentException).a("dateTime", str).e();
      }
    }
    return true;
  }
  
  public String toString()
  {
    return aul.a().toJson(this);
  }
}

/* Location:
 * Qualified Name:     ym
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
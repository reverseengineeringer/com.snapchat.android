import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;

public class xq
{
  @SerializedName("access_token")
  @cgc
  public String a;
  @SerializedName("expires_at")
  @cgc
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
        long l = cgga;
        if (paramLong <= l) {
          return false;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        new ErrorMetric("Malformed expiration dateTime").a(localIllegalArgumentException).a("dateTime", str).d();
      }
    }
    return true;
  }
  
  public String toString()
  {
    return atn.a().toJson(this);
  }
}

/* Location:
 * Qualified Name:     xq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
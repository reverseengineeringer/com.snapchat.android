import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ScApplicationInfo;

@ud
public final class qe$a
  extends qc
{
  @SerializedName("application_id")
  static final String APPLICATION_ID = ;
  @SerializedName("type")
  static final String DEVICE_TYPE = "android";
  @SerializedName("device_token")
  final String mGcmRegistrationId;
  
  qe$a(String paramString)
  {
    mGcmRegistrationId = paramString;
  }
}

/* Location:
 * Qualified Name:     qe.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
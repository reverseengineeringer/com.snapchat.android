import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.debug.ScApplicationInfo;

public final class qe
  extends tx
{
  private static final String TAG = "DeviceSyncTask";
  private final String mGcmRegistrationId;
  
  public qe(String paramString)
  {
    mGcmRegistrationId = paramString;
  }
  
  protected final String getPath()
  {
    return "/ph/device";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (paramus.d())
    {
      akr.f(mGcmRegistrationId);
      return;
    }
    new StringBuilder("DeviceSyncTask failed: ").append(mResponseMessage);
  }
  
  @ud
  public static final class a
    extends qc
  {
    @SerializedName("application_id")
    static final String APPLICATION_ID = ;
    @SerializedName("type")
    static final String DEVICE_TYPE = "android";
    @SerializedName("device_token")
    final String mGcmRegistrationId;
    
    a(String paramString)
    {
      mGcmRegistrationId = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     qe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
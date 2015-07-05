import com.google.gson.annotations.SerializedName;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ScApplicationInfo;

public final class pn
  extends th
{
  private static final String TAG = "DeviceSyncTask";
  private final String mGcmRegistrationId;
  
  public pn(String paramString)
  {
    mGcmRegistrationId = paramString;
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (paramuc.d())
    {
      Timber.c("DeviceSyncTask", "DeviceSyncTask succeeded.", new Object[0]);
      ajx.f(mGcmRegistrationId);
      return;
    }
    Timber.c("DeviceSyncTask", "DeviceSyncTask failed: " + mResponseMessage, new Object[0]);
  }
  
  protected final String d()
  {
    return "/ph/device";
  }
  
  @tn
  public static final class a
    extends pl
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
 * Qualified Name:     pn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
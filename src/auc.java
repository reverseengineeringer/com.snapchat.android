import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.io.IOException;

public final class auc
{
  private static final String OPT_OUT_RESPONSE = "optout";
  private static final String TAG = "DemographicsTrackingUtils";
  public final Context mContext;
  private final aud mDeviceUtils;
  
  public auc(@chc Context paramContext)
  {
    this(paramContext, aud.a());
  }
  
  private auc(@chc Context paramContext, aud paramaud)
  {
    mContext = paramContext;
    mDeviceUtils = paramaud;
  }
  
  @chd
  public final String a()
  {
    if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(mContext) == 0) {}
    try
    {
      AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(mContext);
      String str = localInfo.getId();
      boolean bool = localInfo.isLimitAdTrackingEnabled();
      if (bool) {
        str = "optout";
      }
      return str;
    }
    catch (IOException localIOException)
    {
      String.format("Google advertising id lookup failed, by error %s", new Object[] { localIOException.toString() });
      return null;
      return Settings.Secure.getString(mContext.getContentResolver(), "android_id");
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
    {
      for (;;) {}
    }
    catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     auc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
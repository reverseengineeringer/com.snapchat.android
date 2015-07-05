import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.snapchat.android.Timber;
import java.io.IOException;

public final class atd
{
  private static final String OPT_OUT_RESPONSE = "optout";
  private static final String TAG = "DemographicsTrackingUtils";
  public final Context mContext;
  private final ate mDeviceUtils;
  
  public atd(@cgb Context paramContext)
  {
    this(paramContext, ate.a());
  }
  
  private atd(@cgb Context paramContext, ate paramate)
  {
    mContext = paramContext;
    mDeviceUtils = paramate;
  }
  
  @cgc
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
      Timber.f("DemographicsTrackingUtils", String.format("Google advertising id lookup failed, by error %s", new Object[] { localIOException.toString() }), new Object[0]);
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
 * Qualified Name:     atd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
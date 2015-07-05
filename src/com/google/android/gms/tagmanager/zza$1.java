package com.google.android.gms.tagmanager;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

class zza$1
  implements zza.zza
{
  zza$1(zza paramzza) {}
  
  public AdvertisingIdClient.Info zzsC()
  {
    try
    {
      AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(zza.zza(zzaxl));
      return localInfo;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      zzbf.zzac("IllegalStateException getting Advertising Id Info");
      return null;
    }
    catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
    {
      zzbf.zzac("GooglePlayServicesRepairableException getting Advertising Id Info");
      return null;
    }
    catch (IOException localIOException)
    {
      zzbf.zzac("IOException getting Ad Id Info");
      return null;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
    {
      zzbf.zzac("GooglePlayServicesNotAvailableException getting Advertising Id Info");
      return null;
    }
    catch (Exception localException)
    {
      zzbf.zzac("Unknown exception. Could not get the Advertising Id Info.");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zza.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
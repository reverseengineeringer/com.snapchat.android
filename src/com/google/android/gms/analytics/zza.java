package com.google.android.gms.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzra;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

class zza
  implements zzq
{
  private final zzra zzAM;
  private final zzk zzAN;
  private AdvertisingIdClient.Info zzAO;
  private long zzAP;
  private String zzAQ;
  private boolean zzAR = false;
  private Object zzAS = new Object();
  
  zza(zzra paramzzra, zzk paramzzk)
  {
    zzx.zzl(paramzzra);
    zzx.zzl(paramzzk);
    zzAM = paramzzra;
    zzAN = paramzzk;
  }
  
  static String zzB(Context paramContext)
  {
    String str = null;
    try
    {
      FileInputStream localFileInputStream = paramContext.openFileInput("gaClientIdData");
      Object localObject2 = new byte[''];
      int i = localFileInputStream.read((byte[])localObject2, 0, 128);
      if (localFileInputStream.available() > 0)
      {
        zzae.zzac("Hash file seems corrupted, deleting it.");
        localFileInputStream.close();
        paramContext.deleteFile("gaClientIdData");
        return null;
      }
      if (i <= 0)
      {
        zzae.zzaa("Hash file is empty.");
        localFileInputStream.close();
        return null;
      }
      localObject2 = new String((byte[])localObject2, 0, i);
      Object localObject1;
      return null;
    }
    catch (IOException localIOException2)
    {
      try
      {
        localFileInputStream.close();
        return (String)localObject2;
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          localObject1 = localIOException2;
        }
      }
      catch (FileNotFoundException paramContext)
      {
        return localIOException2;
      }
      localIOException2 = localIOException2;
      zzae.zzac("Error reading Hash file, deleting it.");
      paramContext.deleteFile("gaClientIdData");
      return str;
    }
    catch (FileNotFoundException paramContext) {}
  }
  
  private boolean zza(AdvertisingIdClient.Info paramInfo1, AdvertisingIdClient.Info paramInfo2)
  {
    Object localObject1 = null;
    if (paramInfo2 == null) {}
    for (paramInfo2 = null; TextUtils.isEmpty(paramInfo2); paramInfo2 = paramInfo2.getId()) {
      return true;
    }
    String str = zzAN.getValue("&cid");
    boolean bool;
    for (;;)
    {
      synchronized (zzAS)
      {
        if (!zzAR)
        {
          zzAQ = zzB(zzAM.getContext());
          zzAR = true;
          paramInfo1 = zzah(paramInfo2 + str);
          if (!TextUtils.isEmpty(paramInfo1)) {
            break;
          }
          return false;
        }
      }
      if (TextUtils.isEmpty(zzAQ))
      {
        if (paramInfo1 == null) {}
        for (paramInfo1 = (AdvertisingIdClient.Info)localObject1; paramInfo1 == null; paramInfo1 = paramInfo1.getId())
        {
          bool = zzai(paramInfo2 + str);
          return bool;
        }
        zzAQ = zzah(paramInfo1 + str);
      }
    }
    if (paramInfo1.equals(zzAQ)) {
      return true;
    }
    if (!TextUtils.isEmpty(zzAQ))
    {
      zzae.zzab("Resetting the client id because Advertising Id changed.");
      paramInfo1 = zzAN.zzfw();
      zzae.zzab("New client Id: " + paramInfo1);
    }
    for (;;)
    {
      bool = zzai(paramInfo2 + paramInfo1);
      return bool;
      paramInfo1 = str;
    }
  }
  
  static String zzah(String paramString)
  {
    MessageDigest localMessageDigest = zzan.zzav("MD5");
    if (localMessageDigest == null) {
      return null;
    }
    return String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, localMessageDigest.digest(paramString.getBytes())) });
  }
  
  private boolean zzai(String paramString)
  {
    try
    {
      paramString = zzah(paramString);
      zzae.zzab("Storing hashed adid.");
      FileOutputStream localFileOutputStream = zzAM.getContext().openFileOutput("gaClientIdData", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      zzAQ = paramString;
      return true;
    }
    catch (FileNotFoundException paramString)
    {
      zzae.zzZ("Error creating hash file.");
      return false;
    }
    catch (IOException paramString)
    {
      zzae.zzZ("Error writing to hash file.");
    }
    return false;
  }
  
  public String getValue(String paramString)
  {
    long l = System.currentTimeMillis();
    AdvertisingIdClient.Info localInfo;
    if (Math.abs(l - zzAP) > 1000L)
    {
      localInfo = zzeZ();
      if (!zza(zzAO, localInfo)) {
        break label74;
      }
    }
    label74:
    for (zzAO = localInfo;; zzAO = new AdvertisingIdClient.Info("", false))
    {
      zzAP = l;
      if (zzAO == null) {
        break label116;
      }
      if (!"&adid".equals(paramString)) {
        break;
      }
      return zzAO.getId();
    }
    if ("&ate".equals(paramString))
    {
      if (zzAO.isLimitAdTrackingEnabled()) {
        return "0";
      }
      return "1";
    }
    label116:
    return null;
  }
  
  AdvertisingIdClient.Info zzeZ()
  {
    try
    {
      AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(zzAM.getContext());
      return localInfo;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      zzae.zzac("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
      return null;
    }
    catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
    {
      zzae.zzac("GooglePlayServicesRepairableException getting Ad Id Info");
      return null;
    }
    catch (IOException localIOException)
    {
      zzae.zzac("IOException getting Ad Id Info");
      return null;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
    {
      zzae.zzac("GooglePlayServicesNotAvailableException getting Ad Id Info");
      return null;
    }
    catch (Throwable localThrowable)
    {
      zzae.zzac("Unknown exception. Could not get the ad Id.");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
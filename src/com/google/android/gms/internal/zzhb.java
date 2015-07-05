package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.Locale;

@zzgi
public final class zzhb
{
  public final int zzwx;
  public final int zzwy;
  public final float zzwz;
  public final int zzxY;
  public final boolean zzxZ;
  public final boolean zzya;
  public final String zzyb;
  public final String zzyc;
  public final boolean zzyd;
  public final boolean zzye;
  public final boolean zzyf;
  public final String zzyg;
  public final String zzyh;
  public final int zzyi;
  public final int zzyj;
  public final int zzyk;
  public final int zzyl;
  public final int zzym;
  public final int zzyn;
  public final double zzyo;
  public final boolean zzyp;
  public final boolean zzyq;
  public final int zzyr;
  
  public zzhb(Context paramContext)
  {
    AudioManager localAudioManager = (AudioManager)paramContext.getSystemService("audio");
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    Locale localLocale = Locale.getDefault();
    PackageManager localPackageManager = paramContext.getPackageManager();
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    Intent localIntent = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    zzxY = localAudioManager.getMode();
    boolean bool1;
    if (zza(localPackageManager, "geo:0,0?q=donuts") != null)
    {
      bool1 = true;
      zzxZ = bool1;
      if (zza(localPackageManager, "http://www.google.com") == null) {
        break label388;
      }
      bool1 = true;
      label117:
      zzya = bool1;
      zzyb = localTelephonyManager.getNetworkOperator();
      zzyc = localLocale.getCountry();
      zzyd = zzbe.zzbD().zzeB();
      zzye = localAudioManager.isMusicActive();
      zzyf = localAudioManager.isSpeakerphoneOn();
      zzyg = localLocale.getLanguage();
      zzyh = zza(localPackageManager);
      zzyi = localAudioManager.getStreamVolume(3);
      zzyj = zza(paramContext, localConnectivityManager, localPackageManager);
      zzyk = localTelephonyManager.getNetworkType();
      zzyl = localTelephonyManager.getPhoneType();
      zzym = localAudioManager.getRingerMode();
      zzyn = localAudioManager.getStreamVolume(2);
      zzwz = density;
      zzwx = widthPixels;
      zzwy = heightPixels;
      if (localIntent == null) {
        break label400;
      }
      int i = localIntent.getIntExtra("status", -1);
      int j = localIntent.getIntExtra("level", -1);
      int k = localIntent.getIntExtra("scale", -1);
      zzyo = (j / k);
      bool1 = bool2;
      if (i != 2)
      {
        if (i != 5) {
          break label394;
        }
        bool1 = bool2;
      }
      label335:
      zzyp = bool1;
    }
    for (;;)
    {
      if (Build.VERSION.SDK_INT >= 16)
      {
        zzyq = localConnectivityManager.isActiveNetworkMetered();
        if (localConnectivityManager.getActiveNetworkInfo() != null)
        {
          zzyr = localConnectivityManager.getActiveNetworkInfo().getDetailedState().ordinal();
          return;
          bool1 = false;
          break;
          label388:
          bool1 = false;
          break label117;
          label394:
          bool1 = false;
          break label335;
          label400:
          zzyo = -1.0D;
          zzyp = false;
          continue;
        }
        zzyr = -1;
        return;
      }
    }
    zzyq = false;
    zzyr = -1;
  }
  
  private static int zza(Context paramContext, ConnectivityManager paramConnectivityManager, PackageManager paramPackageManager)
  {
    int i = -2;
    if (zzab.zzaM().zza(paramPackageManager, paramContext.getPackageName(), "android.permission.ACCESS_NETWORK_STATE"))
    {
      paramContext = paramConnectivityManager.getActiveNetworkInfo();
      if (paramContext != null) {
        i = paramContext.getType();
      }
    }
    else
    {
      return i;
    }
    return -1;
  }
  
  private static ResolveInfo zza(PackageManager paramPackageManager, String paramString)
  {
    return paramPackageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)), 65536);
  }
  
  private static String zza(PackageManager paramPackageManager)
  {
    Object localObject = zza(paramPackageManager, "market://details?id=com.google.android.gms.ads");
    if (localObject == null) {}
    for (;;)
    {
      return null;
      localObject = activityInfo;
      if (localObject != null) {
        try
        {
          paramPackageManager = paramPackageManager.getPackageInfo(packageName, 0);
          if (paramPackageManager != null)
          {
            paramPackageManager = versionCode + "." + packageName;
            return paramPackageManager;
          }
        }
        catch (PackageManager.NameNotFoundException paramPackageManager) {}
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
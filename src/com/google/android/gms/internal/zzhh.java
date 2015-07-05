package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;

@zzgi
public class zzhh
{
  private final Object zznh = new Object();
  final String zzyL;
  long zzyZ = -1L;
  long zzza = -1L;
  int zzzb = -1;
  int zzzc = 0;
  int zzzd = 0;
  
  public zzhh(String paramString)
  {
    zzyL = paramString;
  }
  
  public static boolean zzp(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("Theme.Translucent", "style", "android");
    if (i == 0)
    {
      zzhx.zzaa("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
      return false;
    }
    ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), "com.google.android.gms.ads.AdActivity");
    try
    {
      if (i == getPackageManagergetActivityInfo0theme) {
        return true;
      }
      zzhx.zzaa("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
      return false;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      zzhx.zzac("Fail to fetch AdActivity theme");
      zzhx.zzaa("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
    }
    return false;
  }
  
  public void zzb(zzax paramzzax, long paramLong)
  {
    synchronized (zznh)
    {
      if (zzza == -1L)
      {
        zzza = paramLong;
        zzyZ = zzza;
        if ((extras == null) || (extras.getInt("gw", 2) != 1)) {}
      }
      else
      {
        zzyZ = paramLong;
      }
    }
    zzzb += 1;
  }
  
  public Bundle zzc(Context paramContext, String paramString)
  {
    synchronized (zznh)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("session_id", zzyL);
      localBundle.putLong("basets", zzza);
      localBundle.putLong("currts", zzyZ);
      localBundle.putString("seq_num", paramString);
      localBundle.putInt("preqs", zzzb);
      localBundle.putInt("pclick", zzzc);
      localBundle.putInt("pimp", zzzd);
      localBundle.putBoolean("support_transparent_background", zzp(paramContext));
      return localBundle;
    }
  }
  
  public void zzdX()
  {
    synchronized (zznh)
    {
      zzzd += 1;
      return;
    }
  }
  
  public void zzdY()
  {
    synchronized (zznh)
    {
      zzzc += 1;
      return;
    }
  }
  
  public long zzeo()
  {
    return zzza;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
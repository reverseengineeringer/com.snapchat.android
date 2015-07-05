package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.google.android.gms.common.internal.zzf;

public class zztd
{
  private final zztl zzatK;
  private zztj zzatL;
  
  public zztd(Context paramContext, int paramInt, String paramString1, String paramString2, zza paramzza, boolean paramBoolean, String paramString3)
  {
    String str = paramContext.getPackageName();
    int i = 0;
    try
    {
      int j = getPackageManagergetPackageInfo0versionCode;
      i = j;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Log.wtf("PlayLogger", "This can't happen.");
      }
    }
    zzatL = new zztj(str, i, paramInt, paramString1, paramString2, paramBoolean);
    zzatK = new zztl(paramContext, paramContext.getMainLooper(), new zzti(paramzza), new zzf(null, null, 49, null, str, paramString3, null));
  }
  
  public void start()
  {
    zzatK.start();
  }
  
  public void stop()
  {
    zzatK.stop();
  }
  
  public void zza(long paramLong, String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    zzatK.zzb(zzatL, new zztf(paramLong, paramString, paramArrayOfByte, paramVarArgs));
  }
  
  public void zzb(String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    zza(System.currentTimeMillis(), paramString, paramArrayOfByte, paramVarArgs);
  }
  
  public static abstract interface zza
  {
    public abstract void zzf(PendingIntent paramPendingIntent);
    
    public abstract void zzrE();
    
    public abstract void zzrF();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zztd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
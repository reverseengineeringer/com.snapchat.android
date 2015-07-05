package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;

public abstract class zzm
{
  private static final Object zzQc = new Object();
  private static zzm zzQd;
  
  public static zzm zzP(Context paramContext)
  {
    synchronized (zzQc)
    {
      if (zzQd == null) {
        zzQd = new zzn(paramContext.getApplicationContext());
      }
      return zzQd;
    }
  }
  
  public abstract boolean zza(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString);
  
  public abstract boolean zza(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
  
  public abstract void zzb(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString);
  
  public abstract void zzb(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
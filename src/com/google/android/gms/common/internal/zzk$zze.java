package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class zzk$zze
  implements ServiceConnection
{
  public zzk$zze(zzk paramzzk) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    zzx.zzb(paramIBinder, "Expecting a valid IBinder");
    zzk.zza(zzPT, zzs.zza.zzU(paramIBinder));
    zzPT.mHandler.sendMessage(zzPT.mHandler.obtainMessage(6, new zzk.zzg(zzPT)));
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    zzPT.mHandler.sendMessage(zzPT.mHandler.obtainMessage(4, Integer.valueOf(1)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class zzk$zzb
  extends Handler
{
  public zzk$zzb(zzk paramzzk, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    if (((what == 1) || (what == 5) || (what == 6)) && (!zzPT.isConnecting()))
    {
      paramMessage = (zzk.zzc)obj;
      paramMessage.zzjf();
      paramMessage.unregister();
      return;
    }
    if (what == 3)
    {
      zzk.zza(zzPT).zzg(new ConnectionResult(((Integer)obj).intValue(), null));
      return;
    }
    if (what == 4)
    {
      zzk.zza(zzPT, 4, null);
      zzk.zza(zzPT).zzaJ(((Integer)obj).intValue());
      zzk.zza(zzPT, 4, 1, null);
      return;
    }
    if ((what == 2) && (!zzPT.isConnected()))
    {
      paramMessage = (zzk.zzc)obj;
      paramMessage.zzjf();
      paramMessage.unregister();
      return;
    }
    if ((what == 2) || (what == 1) || (what == 5) || (what == 6))
    {
      ((zzk.zzc)obj).zzjg();
      return;
    }
    Log.wtf("GmsClient", "Don't know how to handle this message.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
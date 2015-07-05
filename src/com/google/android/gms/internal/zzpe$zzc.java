package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.location.zze.zza;
import com.google.android.gms.location.zzh;

class zzpe$zzc
  extends zze.zza
{
  private Handler zzamW;
  
  public void zza(zzh paramzzh)
  {
    if (zzamW == null) {
      return;
    }
    Message localMessage = Message.obtain();
    obj = paramzzh;
    zzamW.sendMessage(localMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpe.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
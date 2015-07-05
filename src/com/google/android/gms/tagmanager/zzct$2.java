package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class zzct$2
  implements Handler.Callback
{
  zzct$2(zzct paramzzct) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (zzct.zzfK().equals(obj)))
    {
      zzaAG.dispatch();
      if ((zzct.zzb(zzaAG) > 0) && (!zzct.zzc(zzaAG))) {
        zzct.zzd(zzaAG).sendMessageDelayed(zzct.zzd(zzaAG).obtainMessage(1, zzct.zzfK()), zzct.zzb(zzaAG));
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzct.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
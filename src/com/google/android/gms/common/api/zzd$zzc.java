package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class zzd$zzc
  extends Handler
{
  zzd$zzc(zzd paramzzd, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      new StringBuilder("Unknown message id: ").append(what);
      return;
    case 1: 
      zzd.zzl(zzNb);
      return;
    }
    zzd.zzk(zzNb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
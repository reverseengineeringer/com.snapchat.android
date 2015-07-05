package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.zzd.zza;

class zzpe$zzb
  extends zzd.zza
{
  private Handler zzamW;
  
  zzpe$zzb(LocationListener paramLocationListener, Looper paramLooper)
  {
    if (paramLooper == null) {}
    for (paramLocationListener = new zzpe.zza(paramLocationListener);; paramLocationListener = new zzpe.zza(paramLocationListener, paramLooper))
    {
      zzamW = paramLocationListener;
      return;
    }
  }
  
  public void onLocationChanged(Location paramLocation)
  {
    if (zzamW == null) {
      return;
    }
    Message localMessage = Message.obtain();
    what = 1;
    obj = paramLocation;
    zzamW.sendMessage(localMessage);
  }
  
  public void release()
  {
    zzamW = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpe.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
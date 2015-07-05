package com.google.android.gms.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.location.LocationListener;

class zzpe$zza
  extends Handler
{
  private final LocationListener zzamV;
  
  public zzpe$zza(LocationListener paramLocationListener)
  {
    zzamV = paramLocationListener;
  }
  
  public zzpe$zza(LocationListener paramLocationListener, Looper paramLooper)
  {
    super(paramLooper);
    zzamV = paramLocationListener;
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    }
    paramMessage = new Location((Location)obj);
    zzamV.onLocationChanged(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpe.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
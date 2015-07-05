package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zzb;

class zzpa$2$1
  implements zzf.zzb
{
  zzpa$2$1(zzpa.2 param2) {}
  
  public void zzb(int paramInt, PendingIntent paramPendingIntent)
  {
    zzamP.setResult(LocationStatusCodes.zzfr(paramInt));
  }
  
  public void zzb(int paramInt, String[] paramArrayOfString)
  {
    Log.wtf("GeofencingImpl", "Request ID callback shouldn't have been called");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpa.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
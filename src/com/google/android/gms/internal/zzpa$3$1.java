package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zzb;

class zzpa$3$1
  implements zzf.zzb
{
  zzpa$3$1(zzpa.3 param3) {}
  
  public void zzb(int paramInt, PendingIntent paramPendingIntent)
  {
    Log.wtf("GeofencingImpl", "PendingIntent callback shouldn't have been called");
  }
  
  public void zzb(int paramInt, String[] paramArrayOfString)
  {
    zzamR.setResult(LocationStatusCodes.zzfr(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpa.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
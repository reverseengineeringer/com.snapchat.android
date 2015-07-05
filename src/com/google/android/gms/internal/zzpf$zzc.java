package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzk.zzc;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zzb;

final class zzpf$zzc
  extends zzk<zzpc>.zzc<zzf.zzb>
{
  private final PendingIntent mPendingIntent;
  private final int zzLs;
  private final String[] zzamZ;
  private final int zzane;
  
  public zzpf$zzc(zzpf paramzzpf, int paramInt1, zzf.zzb paramzzb, int paramInt2, PendingIntent paramPendingIntent)
  {
    super(paramzzpf, paramzzb);
    if (paramInt1 == 1) {}
    for (;;)
    {
      zzb.zzN(bool);
      zzane = paramInt1;
      zzLs = LocationStatusCodes.zzfq(paramInt2);
      mPendingIntent = paramPendingIntent;
      zzamZ = null;
      return;
      bool = false;
    }
  }
  
  public zzpf$zzc(zzpf paramzzpf, int paramInt1, zzf.zzb paramzzb, int paramInt2, String[] paramArrayOfString)
  {
    super(paramzzpf, paramzzb);
    if (paramInt1 == 2) {}
    for (boolean bool = true;; bool = false)
    {
      zzb.zzN(bool);
      zzane = paramInt1;
      zzLs = LocationStatusCodes.zzfq(paramInt2);
      zzamZ = paramArrayOfString;
      mPendingIntent = null;
      return;
    }
  }
  
  protected final void zza(zzf.zzb paramzzb)
  {
    if (paramzzb != null) {}
    switch (zzane)
    {
    default: 
      Log.wtf("LocationClientImpl", "Unsupported action: " + zzane);
      return;
    case 1: 
      paramzzb.zzb(zzLs, mPendingIntent);
      return;
    }
    paramzzb.zzb(zzLs, zzamZ);
  }
  
  protected final void zzjf() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpf.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
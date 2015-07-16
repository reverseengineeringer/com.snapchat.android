package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.location.zzf.zza;
import com.google.android.gms.location.zzf.zzb;

final class zzpf$zzb
  extends zzpb.zza
{
  private zzf.zza zzanb;
  private zzf.zzb zzanc;
  private zzpf zzand;
  
  public zzpf$zzb(zzf.zza paramzza, zzpf paramzzpf)
  {
    zzanb = paramzza;
    zzanc = null;
    zzand = paramzzpf;
  }
  
  public zzpf$zzb(zzf.zzb paramzzb, zzpf paramzzpf)
  {
    zzanc = paramzzb;
    zzanb = null;
    zzand = paramzzpf;
  }
  
  public final void zza(int paramInt, String[] paramArrayOfString)
  {
    if (zzand == null)
    {
      Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
      return;
    }
    zzand.zza(new zzpf.zza(zzand, zzanb, paramInt, paramArrayOfString));
    zzand = null;
    zzanb = null;
    zzanc = null;
  }
  
  public final void zzb(int paramInt, PendingIntent paramPendingIntent)
  {
    if (zzand == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesByPendingIntentResult called multiple times");
      return;
    }
    zzand.zza(new zzpf.zzc(zzand, 1, zzanc, paramInt, paramPendingIntent));
    zzand = null;
    zzanb = null;
    zzanc = null;
  }
  
  public final void zzb(int paramInt, String[] paramArrayOfString)
  {
    if (zzand == null)
    {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesByRequestIdsResult called multiple times");
      return;
    }
    zzand.zza(new zzpf.zzc(zzand, 2, zzanc, paramInt, paramArrayOfString));
    zzand = null;
    zzanb = null;
    zzanc = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpf.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
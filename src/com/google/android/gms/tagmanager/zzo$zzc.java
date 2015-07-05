package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzc.zzj;
import com.google.android.gms.internal.zzlv;

class zzo$zzc
  implements zzbe<zzc.zzj>
{
  private zzo$zzc(zzo paramzzo) {}
  
  public void zza(zzbe.zza arg1)
  {
    synchronized (zzaxX)
    {
      if (!zzaxX.isReady())
      {
        if (zzo.zzf(zzaxX) != null) {
          zzaxX.setResult(zzo.zzf(zzaxX));
        }
      }
      else
      {
        zzo.zza(zzaxX, 3600000L);
        return;
      }
      zzaxX.setResult(zzaxX.zzaN(Status.zzNr));
    }
  }
  
  public void zzb(zzc.zzj paramzzj)
  {
    synchronized (zzaxX)
    {
      if (zzgs == null)
      {
        if (zzizzaxX).zzgs == null)
        {
          zzbf.zzZ("Current resource is null; network resource is also null");
          zzo.zza(zzaxX, 3600000L);
          return;
        }
        zzgs = zzizzaxX).zzgs;
      }
      zzo.zza(zzaxX, paramzzj, zzo.zzg(zzaxX).currentTimeMillis(), false);
      zzbf.zzab("setting refresh time to current time: " + zzo.zzj(zzaxX));
      if (!zzo.zzk(zzaxX)) {
        zzo.zza(zzaxX, paramzzj);
      }
      return;
    }
  }
  
  public void zzsR() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzo.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
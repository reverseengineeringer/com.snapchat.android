package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zza.zzb;

public final class zzkq
  implements zzkp
{
  public final PendingResult<Status> zzc(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient.zzb(new zzkr.zza(paramGoogleApiClient)
    {
      protected void zza(zzks paramAnonymouszzks)
      {
        ((zzku)paramAnonymouszzks.zzjb()).zza(new zzkq.zza(this));
      }
    });
  }
  
  static class zza
    extends zzkn
  {
    private final zza.zzb<Status> zzHa;
    
    public zza(zza.zzb<Status> paramzzb)
    {
      zzHa = paramzzb;
    }
    
    public void zzaQ(int paramInt)
    {
      zzHa.zzd(new Status(paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
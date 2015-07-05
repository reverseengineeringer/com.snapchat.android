package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzt.zza;
import java.lang.ref.WeakReference;

class zzd$zzb
  extends zzt.zza
{
  private WeakReference<zzd> zzNj;
  
  zzd$zzb(zzd paramzzd)
  {
    zzNj = new WeakReference(paramzzd);
  }
  
  public void zzb(zzaa paramzzaa)
  {
    zzd localzzd = (zzd)zzNj.get();
    if (localzzd != null) {
      zzd.zza(localzzd, paramzzaa);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
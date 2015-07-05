package com.google.android.gms.common.api;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzut;
import com.google.android.gms.internal.zzuv;
import java.lang.ref.WeakReference;

class zzd$zza
  extends zzuv
{
  private WeakReference<zzd> zzNj;
  
  zzd$zza(zzd paramzzd)
  {
    zzNj = new WeakReference(paramzzd);
  }
  
  public void zza(ConnectionResult paramConnectionResult, zzut paramzzut)
  {
    paramzzut = (zzd)zzNj.get();
    if (paramzzut != null) {
      zzd.zzc(paramzzut, paramConnectionResult);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzd.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
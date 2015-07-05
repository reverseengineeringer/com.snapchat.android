package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

@zzgi
public final class zzcg
  extends zzci.zza
{
  private final zzv zzrg;
  private final String zzrh;
  private final String zzri;
  
  public zzcg(zzv paramzzv, String paramString1, String paramString2)
  {
    zzrg = paramzzv;
    zzrh = paramString1;
    zzri = paramString2;
  }
  
  public final String getContent()
  {
    return zzri;
  }
  
  public final void recordClick()
  {
    zzrg.recordClick();
  }
  
  public final void recordImpression()
  {
    zzrg.recordImpression();
  }
  
  public final void zza(zzd paramzzd)
  {
    if (paramzzd == null) {
      return;
    }
    zzrg.zzb((View)zze.zzf(paramzzd));
  }
  
  public final String zzcv()
  {
    return zzrh;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
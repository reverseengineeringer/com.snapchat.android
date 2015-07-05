package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzlv;

class zzbx$zza
  implements zzcw.zza
{
  zzbx$zza(zzbx paramzzbx) {}
  
  public void zza(zzap paramzzap)
  {
    zzbx.zza(zzazt, paramzzap.zzgs());
  }
  
  public void zzb(zzap paramzzap)
  {
    zzbx.zza(zzazt, paramzzap.zzgs());
    zzbf.zzab("Permanent failure dispatching hitId: " + paramzzap.zzgs());
  }
  
  public void zzc(zzap paramzzap)
  {
    long l = paramzzap.zztj();
    if (l == 0L) {
      zzbx.zza(zzazt, paramzzap.zzgs(), zzbx.zza(zzazt).currentTimeMillis());
    }
    while (l + 14400000L >= zzbx.zza(zzazt).currentTimeMillis()) {
      return;
    }
    zzbx.zza(zzazt, paramzzap.zzgs());
    zzbf.zzab("Giving up on failed hitId: " + paramzzap.zzgs());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzbx.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
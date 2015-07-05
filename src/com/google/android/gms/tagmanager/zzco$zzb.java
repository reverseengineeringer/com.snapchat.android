package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzd.zza;

class zzco$zzb
{
  private zzbv<zzd.zza> zzaAn;
  private zzd.zza zzaAo;
  
  public zzco$zzb(zzbv<zzd.zza> paramzzbv, zzd.zza paramzza)
  {
    zzaAn = paramzzbv;
    zzaAo = paramzza;
  }
  
  public int getSize()
  {
    int j = ((zzd.zza)zzaAn.getObject()).zzvX();
    if (zzaAo == null) {}
    for (int i = 0;; i = zzaAo.zzvX()) {
      return i + j;
    }
  }
  
  public zzbv<zzd.zza> zztJ()
  {
    return zzaAn;
  }
  
  public zzd.zza zztK()
  {
    return zzaAo;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzco.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
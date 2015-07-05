package com.google.android.gms.common.api;

import com.google.android.gms.common.data.DataHolder;

public abstract class zzb<L>
  implements zze.zzb<L>
{
  private final DataHolder zzMd;
  
  protected zzb(DataHolder paramDataHolder)
  {
    zzMd = paramDataHolder;
  }
  
  protected abstract void zza(L paramL, DataHolder paramDataHolder);
  
  public final void zze(L paramL)
  {
    zza(paramL, zzMd);
  }
  
  public void zzhX()
  {
    if (zzMd != null) {
      zzMd.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

public final class zzvd$zza
  extends zzws<zza>
{
  public long zzaBK;
  public zzc.zzj zzaBL;
  public zzc.zzf zzgs;
  
  public zzvd$zza()
  {
    zzug();
  }
  
  public static zza zzm(byte[] paramArrayOfByte)
  {
    return (zza)zzwy.zza(new zza(), paramArrayOfByte);
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof zza));
          paramObject = (zza)paramObject;
          bool1 = bool2;
        } while (zzaBK != zzaBK);
        if (zzgs != null) {
          break;
        }
        bool1 = bool2;
      } while (zzgs != null);
      if (zzaBL != null) {
        break label93;
      }
      bool1 = bool2;
    } while (zzaBL != null);
    label93:
    while (zzaBL.equals(zzaBL))
    {
      return zza((zzws)paramObject);
      if (zzgs.equals(zzgs)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = (int)(zzaBK ^ zzaBK >>> 32);
    int i;
    if (zzgs == null)
    {
      i = 0;
      if (zzaBL != null) {
        break label67;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + zzvL();
      i = zzgs.hashCode();
      break;
      label67:
      j = zzaBL.hashCode();
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    paramzzwr.zzb(1, zzaBK);
    if (zzgs != null) {
      paramzzwr.zza(2, zzgs);
    }
    if (zzaBL != null) {
      paramzzwr.zza(3, zzaBL);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int j = super.zzc() + zzwr.zzd(1, zzaBK);
    int i = j;
    if (zzgs != null) {
      i = j + zzwr.zzc(2, zzgs);
    }
    j = i;
    if (zzaBL != null) {
      j = i + zzwr.zzc(3, zzaBL);
    }
    return j;
  }
  
  public final zza zzt(zzwq paramzzwq)
  {
    for (;;)
    {
      int i = paramzzwq.zzvu();
      switch (i)
      {
      default: 
        if (zza(paramzzwq, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        zzaBK = paramzzwq.zzvw();
        break;
      case 18: 
        if (zzgs == null) {
          zzgs = new zzc.zzf();
        }
        paramzzwq.zza(zzgs);
        break;
      case 26: 
        if (zzaBL == null) {
          zzaBL = new zzc.zzj();
        }
        paramzzwq.zza(zzaBL);
      }
    }
  }
  
  public final zza zzug()
  {
    zzaBK = 0L;
    zzgs = null;
    zzaBL = null;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvd.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
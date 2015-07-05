package com.google.android.gms.internal;

public final class zzc$zzc
  extends zzws<zzc>
{
  private static volatile zzc[] zzfu;
  public String zzfv;
  public long zzfw;
  public long zzfx;
  public boolean zzfy;
  public long zzfz;
  
  public zzc$zzc()
  {
    zzg();
  }
  
  public static zzc[] zzf()
  {
    if (zzfu == null) {}
    synchronized (zzww.zzaHL)
    {
      if (zzfu == null) {
        zzfu = new zzc[0];
      }
      return zzfu;
    }
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
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof zzc));
      paramObject = (zzc)paramObject;
      if (zzfv != null) {
        break;
      }
      bool1 = bool2;
    } while (zzfv != null);
    while (zzfv.equals(zzfv))
    {
      bool1 = bool2;
      if (zzfw != zzfw) {
        break;
      }
      bool1 = bool2;
      if (zzfx != zzfx) {
        break;
      }
      bool1 = bool2;
      if (zzfy != zzfy) {
        break;
      }
      bool1 = bool2;
      if (zzfz != zzfz) {
        break;
      }
      return zza((zzws)paramObject);
    }
    return false;
  }
  
  public final int hashCode()
  {
    int i;
    int k;
    int m;
    if (zzfv == null)
    {
      i = 0;
      k = (int)(zzfw ^ zzfw >>> 32);
      m = (int)(zzfx ^ zzfx >>> 32);
      if (!zzfy) {
        break label107;
      }
    }
    label107:
    for (int j = 1231;; j = 1237)
    {
      return ((j + (((i + 527) * 31 + k) * 31 + m) * 31) * 31 + (int)(zzfz ^ zzfz >>> 32)) * 31 + zzvL();
      i = zzfv.hashCode();
      break;
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if (!zzfv.equals("")) {
      paramzzwr.zzb(1, zzfv);
    }
    if (zzfw != 0L) {
      paramzzwr.zzb(2, zzfw);
    }
    if (zzfx != 2147483647L) {
      paramzzwr.zzb(3, zzfx);
    }
    if (zzfy) {
      paramzzwr.zzb(4, zzfy);
    }
    if (zzfz != 0L) {
      paramzzwr.zzb(5, zzfz);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int j = super.zzc();
    int i = j;
    if (!zzfv.equals("")) {
      i = j + zzwr.zzj(1, zzfv);
    }
    j = i;
    if (zzfw != 0L) {
      j = i + zzwr.zzd(2, zzfw);
    }
    i = j;
    if (zzfx != 2147483647L) {
      i = j + zzwr.zzd(3, zzfx);
    }
    j = i;
    if (zzfy) {
      j = i + zzwr.zzc(4, zzfy);
    }
    i = j;
    if (zzfz != 0L) {
      i = j + zzwr.zzd(5, zzfz);
    }
    return i;
  }
  
  public final zzc zzd(zzwq paramzzwq)
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
      case 10: 
        zzfv = paramzzwq.readString();
        break;
      case 16: 
        zzfw = paramzzwq.zzvw();
        break;
      case 24: 
        zzfx = paramzzwq.zzvw();
        break;
      case 32: 
        zzfy = paramzzwq.zzvy();
        break;
      case 40: 
        zzfz = paramzzwq.zzvw();
      }
    }
  }
  
  public final zzc zzg()
  {
    zzfv = "";
    zzfw = 0L;
    zzfx = 2147483647L;
    zzfy = false;
    zzfz = 0L;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
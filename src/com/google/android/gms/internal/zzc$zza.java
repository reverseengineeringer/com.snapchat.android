package com.google.android.gms.internal;

public final class zzc$zza
  extends zzws<zza>
{
  public int level;
  public int zzfn;
  public int zzfo;
  
  public zzc$zza()
  {
    zzb();
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
        } while (level != level);
        bool1 = bool2;
      } while (zzfn != zzfn);
      bool1 = bool2;
    } while (zzfo != zzfo);
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    return (((level + 527) * 31 + zzfn) * 31 + zzfo) * 31 + zzvL();
  }
  
  public final zza zza(zzwq paramzzwq)
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
        i = paramzzwq.zzvx();
        switch (i)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
          level = i;
        }
        break;
      case 16: 
        zzfn = paramzzwq.zzvx();
        break;
      case 24: 
        zzfo = paramzzwq.zzvx();
      }
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if (level != 1) {
      paramzzwr.zzy(1, level);
    }
    if (zzfn != 0) {
      paramzzwr.zzy(2, zzfn);
    }
    if (zzfo != 0) {
      paramzzwr.zzy(3, zzfo);
    }
    super.zza(paramzzwr);
  }
  
  public final zza zzb()
  {
    level = 1;
    zzfn = 0;
    zzfo = 0;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
  
  protected final int zzc()
  {
    int j = super.zzc();
    int i = j;
    if (level != 1) {
      i = j + zzwr.zzA(1, level);
    }
    j = i;
    if (zzfn != 0) {
      j = i + zzwr.zzA(2, zzfn);
    }
    i = j;
    if (zzfo != 0) {
      i = j + zzwr.zzA(3, zzfo);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
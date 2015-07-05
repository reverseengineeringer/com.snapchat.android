package com.google.android.gms.internal;

public final class zzxf$zzb
  extends zzws<zzb>
{
  public String version;
  public int zzaIS;
  public String zzaIT;
  
  public zzxf$zzb()
  {
    zzwp();
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
          } while (!(paramObject instanceof zzb));
          paramObject = (zzb)paramObject;
          bool1 = bool2;
        } while (zzaIS != zzaIS);
        if (zzaIT != null) {
          break;
        }
        bool1 = bool2;
      } while (zzaIT != null);
      if (version != null) {
        break label92;
      }
      bool1 = bool2;
    } while (version != null);
    label92:
    while (version.equals(version))
    {
      return zza((zzws)paramObject);
      if (zzaIT.equals(zzaIT)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int k = zzaIS;
    int i;
    if (zzaIT == null)
    {
      i = 0;
      if (version != null) {
        break label58;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + zzvL();
      i = zzaIT.hashCode();
      break;
      label58:
      j = version.hashCode();
    }
  }
  
  public final zzb zzL(zzwq paramzzwq)
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
        case 0: 
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 11: 
        case 12: 
        case 13: 
        case 14: 
        case 15: 
        case 16: 
        case 17: 
        case 18: 
        case 19: 
        case 20: 
        case 21: 
        case 22: 
        case 23: 
        case 24: 
        case 25: 
          zzaIS = i;
        }
        break;
      case 18: 
        zzaIT = paramzzwq.readString();
        break;
      case 26: 
        version = paramzzwq.readString();
      }
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if (zzaIS != 0) {
      paramzzwr.zzy(1, zzaIS);
    }
    if (!zzaIT.equals("")) {
      paramzzwr.zzb(2, zzaIT);
    }
    if (!version.equals("")) {
      paramzzwr.zzb(3, version);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int j = super.zzc();
    int i = j;
    if (zzaIS != 0) {
      i = j + zzwr.zzA(1, zzaIS);
    }
    j = i;
    if (!zzaIT.equals("")) {
      j = i + zzwr.zzj(2, zzaIT);
    }
    i = j;
    if (!version.equals("")) {
      i = j + zzwr.zzj(3, version);
    }
    return i;
  }
  
  public final zzb zzwp()
  {
    zzaIS = 0;
    zzaIT = "";
    version = "";
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxf.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
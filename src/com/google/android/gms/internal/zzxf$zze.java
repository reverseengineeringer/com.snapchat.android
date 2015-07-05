package com.google.android.gms.internal;

public final class zzxf$zze
  extends zzws<zze>
{
  private static volatile zze[] zzaJk;
  public String value;
  public String zzfv;
  
  public zzxf$zze()
  {
    zzwt();
  }
  
  public static zze[] zzws()
  {
    if (zzaJk == null) {}
    synchronized (zzww.zzaHL)
    {
      if (zzaJk == null) {
        zzaJk = new zze[0];
      }
      return zzaJk;
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
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof zze));
        paramObject = (zze)paramObject;
        if (zzfv != null) {
          break;
        }
        bool1 = bool2;
      } while (zzfv != null);
      if (value != null) {
        break label79;
      }
      bool1 = bool2;
    } while (value != null);
    label79:
    while (value.equals(value))
    {
      return zza((zzws)paramObject);
      if (zzfv.equals(zzfv)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public final int hashCode()
  {
    int j = 0;
    int i;
    if (zzfv == null)
    {
      i = 0;
      if (value != null) {
        break label48;
      }
    }
    for (;;)
    {
      return ((i + 527) * 31 + j) * 31 + zzvL();
      i = zzfv.hashCode();
      break;
      label48:
      j = value.hashCode();
    }
  }
  
  public final zze zzO(zzwq paramzzwq)
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
      case 18: 
        value = paramzzwq.readString();
      }
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if (!zzfv.equals("")) {
      paramzzwr.zzb(1, zzfv);
    }
    if (!value.equals("")) {
      paramzzwr.zzb(2, value);
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
    if (!value.equals("")) {
      j = i + zzwr.zzj(2, value);
    }
    return j;
  }
  
  public final zze zzwt()
  {
    zzfv = "";
    value = "";
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxf.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
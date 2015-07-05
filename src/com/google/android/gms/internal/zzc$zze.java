package com.google.android.gms.internal;

public final class zzc$zze
  extends zzws<zze>
{
  private static volatile zze[] zzfD;
  public int key;
  public int value;
  
  public zzc$zze()
  {
    zzj();
  }
  
  public static zze[] zzi()
  {
    if (zzfD == null) {}
    synchronized (zzww.zzaHL)
    {
      if (zzfD == null) {
        zzfD = new zze[0];
      }
      return zzfD;
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
        bool1 = bool2;
      } while (key != key);
      bool1 = bool2;
    } while (value != value);
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    return ((key + 527) * 31 + value) * 31 + zzvL();
  }
  
  public final void zza(zzwr paramzzwr)
  {
    paramzzwr.zzy(1, key);
    paramzzwr.zzy(2, value);
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    return super.zzc() + zzwr.zzA(1, key) + zzwr.zzA(2, value);
  }
  
  public final zze zzf(zzwq paramzzwq)
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
        key = paramzzwq.zzvx();
        break;
      case 16: 
        value = paramzzwq.zzvx();
      }
    }
  }
  
  public final zze zzj()
  {
    key = 0;
    value = 0;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
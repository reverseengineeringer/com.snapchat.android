package com.google.android.gms.internal;

public final class zzc$zzi
  extends zzws<zzi>
{
  private static volatile zzi[] zzgo;
  public String name;
  public zzd.zza zzgp;
  public zzc.zzd zzgq;
  
  public zzc$zzi()
  {
    zzp();
  }
  
  public static zzi[] zzo()
  {
    if (zzgo == null) {}
    synchronized (zzww.zzaHL)
    {
      if (zzgo == null) {
        zzgo = new zzi[0];
      }
      return zzgo;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    label57:
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
          } while (!(paramObject instanceof zzi));
          paramObject = (zzi)paramObject;
          if (name != null) {
            break;
          }
          bool1 = bool2;
        } while (name != null);
        if (zzgp != null) {
          break label95;
        }
        bool1 = bool2;
      } while (zzgp != null);
      if (zzgq != null) {
        break label111;
      }
      bool1 = bool2;
    } while (zzgq != null);
    label95:
    label111:
    while (zzgq.equals(zzgq))
    {
      return zza((zzws)paramObject);
      if (name.equals(name)) {
        break;
      }
      return false;
      if (zzgp.equals(zzgp)) {
        break label57;
      }
      return false;
    }
    return false;
  }
  
  public final int hashCode()
  {
    int k = 0;
    int i;
    int j;
    if (name == null)
    {
      i = 0;
      if (zzgp != null) {
        break label62;
      }
      j = 0;
      label20:
      if (zzgq != null) {
        break label73;
      }
    }
    for (;;)
    {
      return ((j + (i + 527) * 31) * 31 + k) * 31 + zzvL();
      i = name.hashCode();
      break;
      label62:
      j = zzgp.hashCode();
      break label20;
      label73:
      k = zzgq.hashCode();
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if (!name.equals("")) {
      paramzzwr.zzb(1, name);
    }
    if (zzgp != null) {
      paramzzwr.zza(2, zzgp);
    }
    if (zzgq != null) {
      paramzzwr.zza(3, zzgq);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int j = super.zzc();
    int i = j;
    if (!name.equals("")) {
      i = j + zzwr.zzj(1, name);
    }
    j = i;
    if (zzgp != null) {
      j = i + zzwr.zzc(2, zzgp);
    }
    i = j;
    if (zzgq != null) {
      i = j + zzwr.zzc(3, zzgq);
    }
    return i;
  }
  
  public final zzi zzj(zzwq paramzzwq)
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
        name = paramzzwq.readString();
        break;
      case 18: 
        if (zzgp == null) {
          zzgp = new zzd.zza();
        }
        paramzzwq.zza(zzgp);
        break;
      case 26: 
        if (zzgq == null) {
          zzgq = new zzc.zzd();
        }
        paramzzwq.zza(zzgq);
      }
    }
  }
  
  public final zzi zzp()
  {
    name = "";
    zzgp = null;
    zzgq = null;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
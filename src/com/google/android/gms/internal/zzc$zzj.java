package com.google.android.gms.internal;

public final class zzc$zzj
  extends zzws<zzj>
{
  public zzc.zzi[] zzgr;
  public zzc.zzf zzgs;
  public String zzgt;
  
  public zzc$zzj()
  {
    zzq();
  }
  
  public static zzj zzb(byte[] paramArrayOfByte)
  {
    return (zzj)zzwy.zza(new zzj(), paramArrayOfByte);
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
          } while (!(paramObject instanceof zzj));
          paramObject = (zzj)paramObject;
          bool1 = bool2;
        } while (!zzww.equals(zzgr, zzgr));
        if (zzgs != null) {
          break;
        }
        bool1 = bool2;
      } while (zzgs != null);
      if (zzgt != null) {
        break label95;
      }
      bool1 = bool2;
    } while (zzgt != null);
    label95:
    while (zzgt.equals(zzgt))
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
    int k = zzww.hashCode(zzgr);
    int i;
    if (zzgs == null)
    {
      i = 0;
      if (zzgt != null) {
        break label61;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + zzvL();
      i = zzgs.hashCode();
      break;
      label61:
      j = zzgt.hashCode();
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if ((zzgr != null) && (zzgr.length > 0))
    {
      int i = 0;
      while (i < zzgr.length)
      {
        zzc.zzi localzzi = zzgr[i];
        if (localzzi != null) {
          paramzzwr.zza(1, localzzi);
        }
        i += 1;
      }
    }
    if (zzgs != null) {
      paramzzwr.zza(2, zzgs);
    }
    if (!zzgt.equals("")) {
      paramzzwr.zzb(3, zzgt);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int i = super.zzc();
    int j = i;
    if (zzgr != null)
    {
      j = i;
      if (zzgr.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= zzgr.length) {
            break;
          }
          zzc.zzi localzzi = zzgr[k];
          j = i;
          if (localzzi != null) {
            j = i + zzwr.zzc(1, localzzi);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (zzgs != null) {
      i = j + zzwr.zzc(2, zzgs);
    }
    j = i;
    if (!zzgt.equals("")) {
      j = i + zzwr.zzj(3, zzgt);
    }
    return j;
  }
  
  public final zzj zzk(zzwq paramzzwq)
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
        int j = zzxb.zzc(paramzzwq, 10);
        if (zzgr == null) {}
        zzc.zzi[] arrayOfzzi;
        for (i = 0;; i = zzgr.length)
        {
          arrayOfzzi = new zzc.zzi[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgr, 0, arrayOfzzi, 0, i);
            j = i;
          }
          while (j < arrayOfzzi.length - 1)
          {
            arrayOfzzi[j] = new zzc.zzi();
            paramzzwq.zza(arrayOfzzi[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        arrayOfzzi[j] = new zzc.zzi();
        paramzzwq.zza(arrayOfzzi[j]);
        zzgr = arrayOfzzi;
        break;
      case 18: 
        if (zzgs == null) {
          zzgs = new zzc.zzf();
        }
        paramzzwq.zza(zzgs);
        break;
      case 26: 
        zzgt = paramzzwq.readString();
      }
    }
  }
  
  public final zzj zzq()
  {
    zzgr = zzc.zzi.zzo();
    zzgs = null;
    zzgt = "";
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
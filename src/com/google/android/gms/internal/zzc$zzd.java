package com.google.android.gms.internal;

public final class zzc$zzd
  extends zzws<zzd>
{
  public zzd.zza[] zzfA;
  public zzd.zza[] zzfB;
  public zzc.zzc[] zzfC;
  
  public zzc$zzd()
  {
    zzh();
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
          } while (!(paramObject instanceof zzd));
          paramObject = (zzd)paramObject;
          bool1 = bool2;
        } while (!zzww.equals(zzfA, zzfA));
        bool1 = bool2;
      } while (!zzww.equals(zzfB, zzfB));
      bool1 = bool2;
    } while (!zzww.equals(zzfC, zzfC));
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    return (((zzww.hashCode(zzfA) + 527) * 31 + zzww.hashCode(zzfB)) * 31 + zzww.hashCode(zzfC)) * 31 + zzvL();
  }
  
  public final void zza(zzwr paramzzwr)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((zzfA != null) && (zzfA.length > 0))
    {
      i = 0;
      while (i < zzfA.length)
      {
        localObject = zzfA[i];
        if (localObject != null) {
          paramzzwr.zza(1, (zzwy)localObject);
        }
        i += 1;
      }
    }
    if ((zzfB != null) && (zzfB.length > 0))
    {
      i = 0;
      while (i < zzfB.length)
      {
        localObject = zzfB[i];
        if (localObject != null) {
          paramzzwr.zza(2, (zzwy)localObject);
        }
        i += 1;
      }
    }
    if ((zzfC != null) && (zzfC.length > 0))
    {
      i = j;
      while (i < zzfC.length)
      {
        localObject = zzfC[i];
        if (localObject != null) {
          paramzzwr.zza(3, (zzwy)localObject);
        }
        i += 1;
      }
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int m = 0;
    int i = super.zzc();
    int j = i;
    Object localObject;
    if (zzfA != null)
    {
      j = i;
      if (zzfA.length > 0)
      {
        j = 0;
        while (j < zzfA.length)
        {
          localObject = zzfA[j];
          k = i;
          if (localObject != null) {
            k = i + zzwr.zzc(1, (zzwy)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (zzfB != null)
    {
      i = j;
      if (zzfB.length > 0)
      {
        i = j;
        j = 0;
        while (j < zzfB.length)
        {
          localObject = zzfB[j];
          k = i;
          if (localObject != null) {
            k = i + zzwr.zzc(2, (zzwy)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (zzfC != null)
    {
      k = i;
      if (zzfC.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= zzfC.length) {
            break;
          }
          localObject = zzfC[j];
          k = i;
          if (localObject != null) {
            k = i + zzwr.zzc(3, (zzwy)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public final zzd zze(zzwq paramzzwq)
  {
    for (;;)
    {
      int i = paramzzwq.zzvu();
      int j;
      Object localObject;
      switch (i)
      {
      default: 
        if (zza(paramzzwq, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        j = zzxb.zzc(paramzzwq, 10);
        if (zzfA == null) {}
        for (i = 0;; i = zzfA.length)
        {
          localObject = new zzd.zza[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfA, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new zzd.zza();
            paramzzwq.zza(localObject[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = new zzd.zza();
        paramzzwq.zza(localObject[j]);
        zzfA = ((zzd.zza[])localObject);
        break;
      case 18: 
        j = zzxb.zzc(paramzzwq, 18);
        if (zzfB == null) {}
        for (i = 0;; i = zzfB.length)
        {
          localObject = new zzd.zza[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfB, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new zzd.zza();
            paramzzwq.zza(localObject[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = new zzd.zza();
        paramzzwq.zza(localObject[j]);
        zzfB = ((zzd.zza[])localObject);
        break;
      case 26: 
        j = zzxb.zzc(paramzzwq, 26);
        if (zzfC == null) {}
        for (i = 0;; i = zzfC.length)
        {
          localObject = new zzc.zzc[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfC, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new zzc.zzc();
            paramzzwq.zza(localObject[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = new zzc.zzc();
        paramzzwq.zza(localObject[j]);
        zzfC = ((zzc.zzc[])localObject);
      }
    }
  }
  
  public final zzd zzh()
  {
    zzfA = zzd.zza.zzr();
    zzfB = zzd.zza.zzr();
    zzfC = zzc.zzc.zzf();
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

public final class zzwo
  extends zzws<zzwo>
{
  public String[] zzaHl;
  public int[] zzaHm;
  public byte[][] zzaHn;
  
  public zzwo()
  {
    zzvt();
  }
  
  public static zzwo zzr(byte[] paramArrayOfByte)
  {
    return (zzwo)zzwy.zza(new zzwo(), paramArrayOfByte);
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
          } while (!(paramObject instanceof zzwo));
          paramObject = (zzwo)paramObject;
          bool1 = bool2;
        } while (!zzww.equals(zzaHl, zzaHl));
        bool1 = bool2;
      } while (!zzww.equals(zzaHm, zzaHm));
      bool1 = bool2;
    } while (!zzww.zza(zzaHn, zzaHn));
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    return (((zzww.hashCode(zzaHl) + 527) * 31 + zzww.hashCode(zzaHm)) * 31 + zzww.zza(zzaHn)) * 31 + zzvL();
  }
  
  public final void zza(zzwr paramzzwr)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((zzaHl != null) && (zzaHl.length > 0))
    {
      i = 0;
      while (i < zzaHl.length)
      {
        localObject = zzaHl[i];
        if (localObject != null) {
          paramzzwr.zzb(1, (String)localObject);
        }
        i += 1;
      }
    }
    if ((zzaHm != null) && (zzaHm.length > 0))
    {
      i = 0;
      while (i < zzaHm.length)
      {
        paramzzwr.zzy(2, zzaHm[i]);
        i += 1;
      }
    }
    if ((zzaHn != null) && (zzaHn.length > 0))
    {
      i = j;
      while (i < zzaHn.length)
      {
        localObject = zzaHn[i];
        if (localObject != null) {
          paramzzwr.zza(3, (byte[])localObject);
        }
        i += 1;
      }
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int i1 = 0;
    int i2 = super.zzc();
    int i;
    int k;
    Object localObject;
    int n;
    int m;
    if ((zzaHl != null) && (zzaHl.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < zzaHl.length; k = m)
      {
        localObject = zzaHl[i];
        n = j;
        m = k;
        if (localObject != null)
        {
          m = k + 1;
          n = j + zzwr.zzdM((String)localObject);
        }
        i += 1;
        j = n;
      }
    }
    for (int j = i2 + j + k * 1;; j = i2)
    {
      i = j;
      if (zzaHm != null)
      {
        i = j;
        if (zzaHm.length > 0)
        {
          i = 0;
          k = 0;
          while (i < zzaHm.length)
          {
            k += zzwr.zziw(zzaHm[i]);
            i += 1;
          }
          i = j + k + zzaHm.length * 1;
        }
      }
      j = i;
      if (zzaHn != null)
      {
        j = i;
        if (zzaHn.length > 0)
        {
          k = 0;
          m = 0;
          j = i1;
          while (j < zzaHn.length)
          {
            localObject = zzaHn[j];
            i1 = k;
            n = m;
            if (localObject != null)
            {
              n = m + 1;
              i1 = k + zzwr.zzw((byte[])localObject);
            }
            j += 1;
            k = i1;
            m = n;
          }
          j = i + k + m * 1;
        }
      }
      return j;
    }
  }
  
  public final zzwo zzvt()
  {
    zzaHl = zzxb.zzaHT;
    zzaHm = zzxb.zzaHO;
    zzaHn = zzxb.zzaHU;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
  
  public final zzwo zzy(zzwq paramzzwq)
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
        if (zzaHl == null) {}
        for (i = 0;; i = zzaHl.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaHl, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramzzwq.readString();
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = paramzzwq.readString();
        zzaHl = ((String[])localObject);
        break;
      case 16: 
        j = zzxb.zzc(paramzzwq, 16);
        if (zzaHm == null) {}
        for (i = 0;; i = zzaHm.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaHm, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramzzwq.zzvx();
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = paramzzwq.zzvx();
        zzaHm = ((int[])localObject);
        break;
      case 18: 
        int k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzaHm == null) {}
        for (i = 0;; i = zzaHm.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaHm, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length)
          {
            localObject[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzaHm = ((int[])localObject);
        paramzzwq.zziq(k);
        break;
      case 26: 
        j = zzxb.zzc(paramzzwq, 26);
        if (zzaHn == null) {}
        for (i = 0;; i = zzaHn.length)
        {
          localObject = new byte[j + i][];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaHn, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = paramzzwq.readBytes();
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = paramzzwq.readBytes();
        zzaHn = ((byte[][])localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzwo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
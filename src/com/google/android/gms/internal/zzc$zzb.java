package com.google.android.gms.internal;

public final class zzc$zzb
  extends zzws<zzb>
{
  private static volatile zzb[] zzfp;
  public int name;
  public int[] zzfq;
  public int zzfr;
  public boolean zzfs;
  public boolean zzft;
  
  public zzc$zzb()
  {
    zze();
  }
  
  public static zzb[] zzd()
  {
    if (zzfp == null) {}
    synchronized (zzww.zzaHL)
    {
      if (zzfp == null) {
        zzfp = new zzb[0];
      }
      return zzfp;
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
            } while (!zzww.equals(zzfq, zzfq));
            bool1 = bool2;
          } while (zzfr != zzfr);
          bool1 = bool2;
        } while (name != name);
        bool1 = bool2;
      } while (zzfs != zzfs);
      bool1 = bool2;
    } while (zzft != zzft);
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    int j = 1231;
    int k = zzww.hashCode(zzfq);
    int m = zzfr;
    int n = name;
    int i;
    if (zzfs)
    {
      i = 1231;
      if (!zzft) {
        break label85;
      }
    }
    for (;;)
    {
      return ((i + (((k + 527) * 31 + m) * 31 + n) * 31) * 31 + j) * 31 + zzvL();
      i = 1237;
      break;
      label85:
      j = 1237;
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if (zzft) {
      paramzzwr.zzb(1, zzft);
    }
    paramzzwr.zzy(2, zzfr);
    if ((zzfq != null) && (zzfq.length > 0))
    {
      int i = 0;
      while (i < zzfq.length)
      {
        paramzzwr.zzy(3, zzfq[i]);
        i += 1;
      }
    }
    if (name != 0) {
      paramzzwr.zzy(4, name);
    }
    if (zzfs) {
      paramzzwr.zzb(6, zzfs);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int j = 0;
    int k = super.zzc();
    int i = k;
    if (zzft) {
      i = k + zzwr.zzc(1, zzft);
    }
    k = zzwr.zzA(2, zzfr) + i;
    if ((zzfq != null) && (zzfq.length > 0))
    {
      i = 0;
      while (i < zzfq.length)
      {
        j += zzwr.zziw(zzfq[i]);
        i += 1;
      }
    }
    for (j = k + j + zzfq.length * 1;; j = k)
    {
      i = j;
      if (name != 0) {
        i = j + zzwr.zzA(4, name);
      }
      j = i;
      if (zzfs) {
        j = i + zzwr.zzc(6, zzfs);
      }
      return j;
    }
  }
  
  public final zzb zzc(zzwq paramzzwq)
  {
    for (;;)
    {
      int i = paramzzwq.zzvu();
      int j;
      int[] arrayOfInt;
      switch (i)
      {
      default: 
        if (zza(paramzzwq, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        zzft = paramzzwq.zzvy();
        break;
      case 16: 
        zzfr = paramzzwq.zzvx();
        break;
      case 24: 
        j = zzxb.zzc(paramzzwq, 24);
        if (zzfq == null) {}
        for (i = 0;; i = zzfq.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfq, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length - 1)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            paramzzwq.zzvu();
            j += 1;
          }
        }
        arrayOfInt[j] = paramzzwq.zzvx();
        zzfq = arrayOfInt;
        break;
      case 26: 
        int k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzfq == null) {}
        for (i = 0;; i = zzfq.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfq, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzfq = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 32: 
        name = paramzzwq.zzvx();
        break;
      case 48: 
        zzfs = paramzzwq.zzvy();
      }
    }
  }
  
  public final zzb zze()
  {
    zzfq = zzxb.zzaHO;
    zzfr = 0;
    name = 0;
    zzfs = false;
    zzft = false;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
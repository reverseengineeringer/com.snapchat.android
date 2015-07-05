package com.google.android.gms.internal;

public final class zzxf$zza
  extends zzws<zza>
{
  public String[] zzaIP;
  public String[] zzaIQ;
  public int[] zzaIR;
  
  public zzxf$zza()
  {
    zzwo();
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
        } while (!zzww.equals(zzaIP, zzaIP));
        bool1 = bool2;
      } while (!zzww.equals(zzaIQ, zzaIQ));
      bool1 = bool2;
    } while (!zzww.equals(zzaIR, zzaIR));
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    return (((zzww.hashCode(zzaIP) + 527) * 31 + zzww.hashCode(zzaIQ)) * 31 + zzww.hashCode(zzaIR)) * 31 + zzvL();
  }
  
  public final zza zzK(zzwq paramzzwq)
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
        if (zzaIP == null) {}
        for (i = 0;; i = zzaIP.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaIP, 0, localObject, 0, i);
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
        zzaIP = ((String[])localObject);
        break;
      case 18: 
        j = zzxb.zzc(paramzzwq, 18);
        if (zzaIQ == null) {}
        for (i = 0;; i = zzaIQ.length)
        {
          localObject = new String[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaIQ, 0, localObject, 0, i);
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
        zzaIQ = ((String[])localObject);
        break;
      case 24: 
        j = zzxb.zzc(paramzzwq, 24);
        if (zzaIR == null) {}
        for (i = 0;; i = zzaIR.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaIR, 0, localObject, 0, i);
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
        zzaIR = ((int[])localObject);
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
        if (zzaIR == null) {}
        for (i = 0;; i = zzaIR.length)
        {
          localObject = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaIR, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length)
          {
            localObject[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzaIR = ((int[])localObject);
        paramzzwq.zziq(k);
      }
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    int j = 0;
    int i;
    String str;
    if ((zzaIP != null) && (zzaIP.length > 0))
    {
      i = 0;
      while (i < zzaIP.length)
      {
        str = zzaIP[i];
        if (str != null) {
          paramzzwr.zzb(1, str);
        }
        i += 1;
      }
    }
    if ((zzaIQ != null) && (zzaIQ.length > 0))
    {
      i = 0;
      while (i < zzaIQ.length)
      {
        str = zzaIQ[i];
        if (str != null) {
          paramzzwr.zzb(2, str);
        }
        i += 1;
      }
    }
    if ((zzaIR != null) && (zzaIR.length > 0))
    {
      i = j;
      while (i < zzaIR.length)
      {
        paramzzwr.zzy(3, zzaIR[i]);
        i += 1;
      }
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int i2 = 0;
    int i1 = super.zzc();
    int j;
    int k;
    String str;
    int n;
    int m;
    if ((zzaIP != null) && (zzaIP.length > 0))
    {
      i = 0;
      j = 0;
      for (k = 0; i < zzaIP.length; k = m)
      {
        str = zzaIP[i];
        n = j;
        m = k;
        if (str != null)
        {
          m = k + 1;
          n = j + zzwr.zzdM(str);
        }
        i += 1;
        j = n;
      }
    }
    for (int i = i1 + j + k * 1;; i = i1)
    {
      j = i;
      if (zzaIQ != null)
      {
        j = i;
        if (zzaIQ.length > 0)
        {
          j = 0;
          k = 0;
          for (m = 0; j < zzaIQ.length; m = n)
          {
            str = zzaIQ[j];
            i1 = k;
            n = m;
            if (str != null)
            {
              n = m + 1;
              i1 = k + zzwr.zzdM(str);
            }
            j += 1;
            k = i1;
          }
          j = i + k + m * 1;
        }
      }
      i = j;
      if (zzaIR != null)
      {
        i = j;
        if (zzaIR.length > 0)
        {
          k = 0;
          i = i2;
          while (i < zzaIR.length)
          {
            k += zzwr.zziw(zzaIR[i]);
            i += 1;
          }
          i = j + k + zzaIR.length * 1;
        }
      }
      return i;
    }
  }
  
  public final zza zzwo()
  {
    zzaIP = zzxb.zzaHT;
    zzaIQ = zzxb.zzaHT;
    zzaIR = zzxb.zzaHO;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxf.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
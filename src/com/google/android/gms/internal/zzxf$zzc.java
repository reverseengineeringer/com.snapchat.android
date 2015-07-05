package com.google.android.gms.internal;

import java.util.Arrays;

public final class zzxf$zzc
  extends zzws<zzc>
{
  public byte[] zzaIU;
  public byte[][] zzaIV;
  public boolean zzaIW;
  
  public zzxf$zzc()
  {
    zzwq();
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
          } while (!(paramObject instanceof zzc));
          paramObject = (zzc)paramObject;
          bool1 = bool2;
        } while (!Arrays.equals(zzaIU, zzaIU));
        bool1 = bool2;
      } while (!zzww.zza(zzaIV, zzaIV));
      bool1 = bool2;
    } while (zzaIW != zzaIW);
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    int j = Arrays.hashCode(zzaIU);
    int k = zzww.zza(zzaIV);
    if (zzaIW) {}
    for (int i = 1231;; i = 1237) {
      return (i + ((j + 527) * 31 + k) * 31) * 31 + zzvL();
    }
  }
  
  public final zzc zzM(zzwq paramzzwq)
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
        zzaIU = paramzzwq.readBytes();
        break;
      case 18: 
        int j = zzxb.zzc(paramzzwq, 18);
        if (zzaIV == null) {}
        byte[][] arrayOfByte;
        for (i = 0;; i = zzaIV.length)
        {
          arrayOfByte = new byte[j + i][];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzaIV, 0, arrayOfByte, 0, i);
            j = i;
          }
          while (j < arrayOfByte.length - 1)
          {
            arrayOfByte[j] = paramzzwq.readBytes();
            paramzzwq.zzvu();
            j += 1;
          }
        }
        arrayOfByte[j] = paramzzwq.readBytes();
        zzaIV = arrayOfByte;
        break;
      case 24: 
        zzaIW = paramzzwq.zzvy();
      }
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    if (!Arrays.equals(zzaIU, zzxb.zzaHV)) {
      paramzzwr.zza(1, zzaIU);
    }
    if ((zzaIV != null) && (zzaIV.length > 0))
    {
      int i = 0;
      while (i < zzaIV.length)
      {
        byte[] arrayOfByte = zzaIV[i];
        if (arrayOfByte != null) {
          paramzzwr.zza(2, arrayOfByte);
        }
        i += 1;
      }
    }
    if (zzaIW) {
      paramzzwr.zzb(3, zzaIW);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int n = 0;
    int j = super.zzc();
    int i = j;
    if (!Arrays.equals(zzaIU, zzxb.zzaHV)) {
      i = j + zzwr.zzb(1, zzaIU);
    }
    j = i;
    if (zzaIV != null)
    {
      j = i;
      if (zzaIV.length > 0)
      {
        int k = 0;
        int m = 0;
        j = n;
        while (j < zzaIV.length)
        {
          byte[] arrayOfByte = zzaIV[j];
          int i1 = k;
          n = m;
          if (arrayOfByte != null)
          {
            n = m + 1;
            i1 = k + zzwr.zzw(arrayOfByte);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (zzaIW) {
      i = j + zzwr.zzc(3, zzaIW);
    }
    return i;
  }
  
  public final zzc zzwq()
  {
    zzaIU = zzxb.zzaHV;
    zzaIV = zzxb.zzaHU;
    zzaIW = false;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxf.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
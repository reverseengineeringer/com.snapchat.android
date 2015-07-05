package com.google.android.gms.internal;

public final class zzc$zzh
  extends zzws<zzh>
{
  public static final zzwt<zzd.zza, zzh> zzgf = zzwt.zza(11, zzh.class, 810);
  private static final zzh[] zzgg = new zzh[0];
  public int[] zzgh;
  public int[] zzgi;
  public int[] zzgj;
  public int zzgk;
  public int[] zzgl;
  public int zzgm;
  public int zzgn;
  
  public zzc$zzh()
  {
    zzn();
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
                do
                {
                  do
                  {
                    return bool1;
                    bool1 = bool2;
                  } while (!(paramObject instanceof zzh));
                  paramObject = (zzh)paramObject;
                  bool1 = bool2;
                } while (!zzww.equals(zzgh, zzgh));
                bool1 = bool2;
              } while (!zzww.equals(zzgi, zzgi));
              bool1 = bool2;
            } while (!zzww.equals(zzgj, zzgj));
            bool1 = bool2;
          } while (zzgk != zzgk);
          bool1 = bool2;
        } while (!zzww.equals(zzgl, zzgl));
        bool1 = bool2;
      } while (zzgm != zzgm);
      bool1 = bool2;
    } while (zzgn != zzgn);
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    return (((((((zzww.hashCode(zzgh) + 527) * 31 + zzww.hashCode(zzgi)) * 31 + zzww.hashCode(zzgj)) * 31 + zzgk) * 31 + zzww.hashCode(zzgl)) * 31 + zzgm) * 31 + zzgn) * 31 + zzvL();
  }
  
  public final void zza(zzwr paramzzwr)
  {
    int j = 0;
    int i;
    if ((zzgh != null) && (zzgh.length > 0))
    {
      i = 0;
      while (i < zzgh.length)
      {
        paramzzwr.zzy(1, zzgh[i]);
        i += 1;
      }
    }
    if ((zzgi != null) && (zzgi.length > 0))
    {
      i = 0;
      while (i < zzgi.length)
      {
        paramzzwr.zzy(2, zzgi[i]);
        i += 1;
      }
    }
    if ((zzgj != null) && (zzgj.length > 0))
    {
      i = 0;
      while (i < zzgj.length)
      {
        paramzzwr.zzy(3, zzgj[i]);
        i += 1;
      }
    }
    if (zzgk != 0) {
      paramzzwr.zzy(4, zzgk);
    }
    if ((zzgl != null) && (zzgl.length > 0))
    {
      i = j;
      while (i < zzgl.length)
      {
        paramzzwr.zzy(5, zzgl[i]);
        i += 1;
      }
    }
    if (zzgm != 0) {
      paramzzwr.zzy(6, zzgm);
    }
    if (zzgn != 0) {
      paramzzwr.zzy(7, zzgn);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int m = 0;
    int k = super.zzc();
    int i;
    if ((zzgh != null) && (zzgh.length > 0))
    {
      i = 0;
      j = 0;
      while (i < zzgh.length)
      {
        j += zzwr.zziw(zzgh[i]);
        i += 1;
      }
    }
    for (int j = k + j + zzgh.length * 1;; j = k)
    {
      i = j;
      if (zzgi != null)
      {
        i = j;
        if (zzgi.length > 0)
        {
          i = 0;
          k = 0;
          while (i < zzgi.length)
          {
            k += zzwr.zziw(zzgi[i]);
            i += 1;
          }
          i = j + k + zzgi.length * 1;
        }
      }
      j = i;
      if (zzgj != null)
      {
        j = i;
        if (zzgj.length > 0)
        {
          j = 0;
          k = 0;
          while (j < zzgj.length)
          {
            k += zzwr.zziw(zzgj[j]);
            j += 1;
          }
          j = i + k + zzgj.length * 1;
        }
      }
      i = j;
      if (zzgk != 0) {
        i = j + zzwr.zzA(4, zzgk);
      }
      j = i;
      if (zzgl != null)
      {
        j = i;
        if (zzgl.length > 0)
        {
          k = 0;
          j = m;
          while (j < zzgl.length)
          {
            k += zzwr.zziw(zzgl[j]);
            j += 1;
          }
          j = i + k + zzgl.length * 1;
        }
      }
      i = j;
      if (zzgm != 0) {
        i = j + zzwr.zzA(6, zzgm);
      }
      j = i;
      if (zzgn != 0) {
        j = i + zzwr.zzA(7, zzgn);
      }
      return j;
    }
  }
  
  public final zzh zzi(zzwq paramzzwq)
  {
    for (;;)
    {
      int i = paramzzwq.zzvu();
      int j;
      int[] arrayOfInt;
      int k;
      switch (i)
      {
      default: 
        if (zza(paramzzwq, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        j = zzxb.zzc(paramzzwq, 8);
        if (zzgh == null) {}
        for (i = 0;; i = zzgh.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgh, 0, arrayOfInt, 0, i);
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
        zzgh = arrayOfInt;
        break;
      case 10: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzgh == null) {}
        for (i = 0;; i = zzgh.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgh, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzgh = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 16: 
        j = zzxb.zzc(paramzzwq, 16);
        if (zzgi == null) {}
        for (i = 0;; i = zzgi.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgi, 0, arrayOfInt, 0, i);
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
        zzgi = arrayOfInt;
        break;
      case 18: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzgi == null) {}
        for (i = 0;; i = zzgi.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgi, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzgi = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 24: 
        j = zzxb.zzc(paramzzwq, 24);
        if (zzgj == null) {}
        for (i = 0;; i = zzgj.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgj, 0, arrayOfInt, 0, i);
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
        zzgj = arrayOfInt;
        break;
      case 26: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzgj == null) {}
        for (i = 0;; i = zzgj.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgj, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzgj = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 32: 
        zzgk = paramzzwq.zzvx();
        break;
      case 40: 
        j = zzxb.zzc(paramzzwq, 40);
        if (zzgl == null) {}
        for (i = 0;; i = zzgl.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgl, 0, arrayOfInt, 0, i);
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
        zzgl = arrayOfInt;
        break;
      case 42: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzgl == null) {}
        for (i = 0;; i = zzgl.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgl, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzgl = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 48: 
        zzgm = paramzzwq.zzvx();
        break;
      case 56: 
        zzgn = paramzzwq.zzvx();
      }
    }
  }
  
  public final zzh zzn()
  {
    zzgh = zzxb.zzaHO;
    zzgi = zzxb.zzaHO;
    zzgj = zzxb.zzaHO;
    zzgk = 0;
    zzgl = zzxb.zzaHO;
    zzgm = 0;
    zzgn = 0;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

public final class zzc$zzg
  extends zzws<zzg>
{
  private static volatile zzg[] zzfU;
  public int[] zzfV;
  public int[] zzfW;
  public int[] zzfX;
  public int[] zzfY;
  public int[] zzfZ;
  public int[] zzga;
  public int[] zzgb;
  public int[] zzgc;
  public int[] zzgd;
  public int[] zzge;
  
  public zzc$zzg()
  {
    zzm();
  }
  
  public static zzg[] zzl()
  {
    if (zzfU == null) {}
    synchronized (zzww.zzaHL)
    {
      if (zzfU == null) {
        zzfU = new zzg[0];
      }
      return zzfU;
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
                        } while (!(paramObject instanceof zzg));
                        paramObject = (zzg)paramObject;
                        bool1 = bool2;
                      } while (!zzww.equals(zzfV, zzfV));
                      bool1 = bool2;
                    } while (!zzww.equals(zzfW, zzfW));
                    bool1 = bool2;
                  } while (!zzww.equals(zzfX, zzfX));
                  bool1 = bool2;
                } while (!zzww.equals(zzfY, zzfY));
                bool1 = bool2;
              } while (!zzww.equals(zzfZ, zzfZ));
              bool1 = bool2;
            } while (!zzww.equals(zzga, zzga));
            bool1 = bool2;
          } while (!zzww.equals(zzgb, zzgb));
          bool1 = bool2;
        } while (!zzww.equals(zzgc, zzgc));
        bool1 = bool2;
      } while (!zzww.equals(zzgd, zzgd));
      bool1 = bool2;
    } while (!zzww.equals(zzge, zzge));
    return zza((zzws)paramObject);
  }
  
  public final int hashCode()
  {
    return ((((((((((zzww.hashCode(zzfV) + 527) * 31 + zzww.hashCode(zzfW)) * 31 + zzww.hashCode(zzfX)) * 31 + zzww.hashCode(zzfY)) * 31 + zzww.hashCode(zzfZ)) * 31 + zzww.hashCode(zzga)) * 31 + zzww.hashCode(zzgb)) * 31 + zzww.hashCode(zzgc)) * 31 + zzww.hashCode(zzgd)) * 31 + zzww.hashCode(zzge)) * 31 + zzvL();
  }
  
  public final void zza(zzwr paramzzwr)
  {
    int j = 0;
    int i;
    if ((zzfV != null) && (zzfV.length > 0))
    {
      i = 0;
      while (i < zzfV.length)
      {
        paramzzwr.zzy(1, zzfV[i]);
        i += 1;
      }
    }
    if ((zzfW != null) && (zzfW.length > 0))
    {
      i = 0;
      while (i < zzfW.length)
      {
        paramzzwr.zzy(2, zzfW[i]);
        i += 1;
      }
    }
    if ((zzfX != null) && (zzfX.length > 0))
    {
      i = 0;
      while (i < zzfX.length)
      {
        paramzzwr.zzy(3, zzfX[i]);
        i += 1;
      }
    }
    if ((zzfY != null) && (zzfY.length > 0))
    {
      i = 0;
      while (i < zzfY.length)
      {
        paramzzwr.zzy(4, zzfY[i]);
        i += 1;
      }
    }
    if ((zzfZ != null) && (zzfZ.length > 0))
    {
      i = 0;
      while (i < zzfZ.length)
      {
        paramzzwr.zzy(5, zzfZ[i]);
        i += 1;
      }
    }
    if ((zzga != null) && (zzga.length > 0))
    {
      i = 0;
      while (i < zzga.length)
      {
        paramzzwr.zzy(6, zzga[i]);
        i += 1;
      }
    }
    if ((zzgb != null) && (zzgb.length > 0))
    {
      i = 0;
      while (i < zzgb.length)
      {
        paramzzwr.zzy(7, zzgb[i]);
        i += 1;
      }
    }
    if ((zzgc != null) && (zzgc.length > 0))
    {
      i = 0;
      while (i < zzgc.length)
      {
        paramzzwr.zzy(8, zzgc[i]);
        i += 1;
      }
    }
    if ((zzgd != null) && (zzgd.length > 0))
    {
      i = 0;
      while (i < zzgd.length)
      {
        paramzzwr.zzy(9, zzgd[i]);
        i += 1;
      }
    }
    if ((zzge != null) && (zzge.length > 0))
    {
      i = j;
      while (i < zzge.length)
      {
        paramzzwr.zzy(10, zzge[i]);
        i += 1;
      }
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int m = 0;
    int k = super.zzc();
    int i;
    if ((zzfV != null) && (zzfV.length > 0))
    {
      i = 0;
      j = 0;
      while (i < zzfV.length)
      {
        j += zzwr.zziw(zzfV[i]);
        i += 1;
      }
    }
    for (int j = k + j + zzfV.length * 1;; j = k)
    {
      i = j;
      if (zzfW != null)
      {
        i = j;
        if (zzfW.length > 0)
        {
          i = 0;
          k = 0;
          while (i < zzfW.length)
          {
            k += zzwr.zziw(zzfW[i]);
            i += 1;
          }
          i = j + k + zzfW.length * 1;
        }
      }
      j = i;
      if (zzfX != null)
      {
        j = i;
        if (zzfX.length > 0)
        {
          j = 0;
          k = 0;
          while (j < zzfX.length)
          {
            k += zzwr.zziw(zzfX[j]);
            j += 1;
          }
          j = i + k + zzfX.length * 1;
        }
      }
      i = j;
      if (zzfY != null)
      {
        i = j;
        if (zzfY.length > 0)
        {
          i = 0;
          k = 0;
          while (i < zzfY.length)
          {
            k += zzwr.zziw(zzfY[i]);
            i += 1;
          }
          i = j + k + zzfY.length * 1;
        }
      }
      j = i;
      if (zzfZ != null)
      {
        j = i;
        if (zzfZ.length > 0)
        {
          j = 0;
          k = 0;
          while (j < zzfZ.length)
          {
            k += zzwr.zziw(zzfZ[j]);
            j += 1;
          }
          j = i + k + zzfZ.length * 1;
        }
      }
      i = j;
      if (zzga != null)
      {
        i = j;
        if (zzga.length > 0)
        {
          i = 0;
          k = 0;
          while (i < zzga.length)
          {
            k += zzwr.zziw(zzga[i]);
            i += 1;
          }
          i = j + k + zzga.length * 1;
        }
      }
      j = i;
      if (zzgb != null)
      {
        j = i;
        if (zzgb.length > 0)
        {
          j = 0;
          k = 0;
          while (j < zzgb.length)
          {
            k += zzwr.zziw(zzgb[j]);
            j += 1;
          }
          j = i + k + zzgb.length * 1;
        }
      }
      i = j;
      if (zzgc != null)
      {
        i = j;
        if (zzgc.length > 0)
        {
          i = 0;
          k = 0;
          while (i < zzgc.length)
          {
            k += zzwr.zziw(zzgc[i]);
            i += 1;
          }
          i = j + k + zzgc.length * 1;
        }
      }
      j = i;
      if (zzgd != null)
      {
        j = i;
        if (zzgd.length > 0)
        {
          j = 0;
          k = 0;
          while (j < zzgd.length)
          {
            k += zzwr.zziw(zzgd[j]);
            j += 1;
          }
          j = i + k + zzgd.length * 1;
        }
      }
      i = j;
      if (zzge != null)
      {
        i = j;
        if (zzge.length > 0)
        {
          k = 0;
          i = m;
          while (i < zzge.length)
          {
            k += zzwr.zziw(zzge[i]);
            i += 1;
          }
          i = j + k + zzge.length * 1;
        }
      }
      return i;
    }
  }
  
  public final zzg zzh(zzwq paramzzwq)
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
        if (zzfV == null) {}
        for (i = 0;; i = zzfV.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfV, 0, arrayOfInt, 0, i);
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
        zzfV = arrayOfInt;
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
        if (zzfV == null) {}
        for (i = 0;; i = zzfV.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfV, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzfV = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 16: 
        j = zzxb.zzc(paramzzwq, 16);
        if (zzfW == null) {}
        for (i = 0;; i = zzfW.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfW, 0, arrayOfInt, 0, i);
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
        zzfW = arrayOfInt;
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
        if (zzfW == null) {}
        for (i = 0;; i = zzfW.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfW, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzfW = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 24: 
        j = zzxb.zzc(paramzzwq, 24);
        if (zzfX == null) {}
        for (i = 0;; i = zzfX.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfX, 0, arrayOfInt, 0, i);
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
        zzfX = arrayOfInt;
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
        if (zzfX == null) {}
        for (i = 0;; i = zzfX.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfX, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzfX = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 32: 
        j = zzxb.zzc(paramzzwq, 32);
        if (zzfY == null) {}
        for (i = 0;; i = zzfY.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfY, 0, arrayOfInt, 0, i);
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
        zzfY = arrayOfInt;
        break;
      case 34: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzfY == null) {}
        for (i = 0;; i = zzfY.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfY, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzfY = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 40: 
        j = zzxb.zzc(paramzzwq, 40);
        if (zzfZ == null) {}
        for (i = 0;; i = zzfZ.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfZ, 0, arrayOfInt, 0, i);
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
        zzfZ = arrayOfInt;
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
        if (zzfZ == null) {}
        for (i = 0;; i = zzfZ.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzfZ, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzfZ = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 48: 
        j = zzxb.zzc(paramzzwq, 48);
        if (zzga == null) {}
        for (i = 0;; i = zzga.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzga, 0, arrayOfInt, 0, i);
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
        zzga = arrayOfInt;
        break;
      case 50: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzga == null) {}
        for (i = 0;; i = zzga.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzga, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzga = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 56: 
        j = zzxb.zzc(paramzzwq, 56);
        if (zzgb == null) {}
        for (i = 0;; i = zzgb.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgb, 0, arrayOfInt, 0, i);
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
        zzgb = arrayOfInt;
        break;
      case 58: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzgb == null) {}
        for (i = 0;; i = zzgb.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgb, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzgb = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 64: 
        j = zzxb.zzc(paramzzwq, 64);
        if (zzgc == null) {}
        for (i = 0;; i = zzgc.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgc, 0, arrayOfInt, 0, i);
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
        zzgc = arrayOfInt;
        break;
      case 66: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzgc == null) {}
        for (i = 0;; i = zzgc.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgc, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzgc = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 72: 
        j = zzxb.zzc(paramzzwq, 72);
        if (zzgd == null) {}
        for (i = 0;; i = zzgd.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgd, 0, arrayOfInt, 0, i);
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
        zzgd = arrayOfInt;
        break;
      case 74: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzgd == null) {}
        for (i = 0;; i = zzgd.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgd, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzgd = arrayOfInt;
        paramzzwq.zziq(k);
        break;
      case 80: 
        j = zzxb.zzc(paramzzwq, 80);
        if (zzge == null) {}
        for (i = 0;; i = zzge.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzge, 0, arrayOfInt, 0, i);
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
        zzge = arrayOfInt;
        break;
      case 82: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0)
        {
          paramzzwq.zzvx();
          j += 1;
        }
        paramzzwq.zzir(i);
        if (zzge == null) {}
        for (i = 0;; i = zzge.length)
        {
          arrayOfInt = new int[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzge, 0, arrayOfInt, 0, i);
            j = i;
          }
          while (j < arrayOfInt.length)
          {
            arrayOfInt[j] = paramzzwq.zzvx();
            j += 1;
          }
        }
        zzge = arrayOfInt;
        paramzzwq.zziq(k);
      }
    }
  }
  
  public final zzg zzm()
  {
    zzfV = zzxb.zzaHO;
    zzfW = zzxb.zzaHO;
    zzfX = zzxb.zzaHO;
    zzfY = zzxb.zzaHO;
    zzfZ = zzxb.zzaHO;
    zzga = zzxb.zzaHO;
    zzgb = zzxb.zzaHO;
    zzgc = zzxb.zzaHO;
    zzgd = zzxb.zzaHO;
    zzge = zzxb.zzaHO;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
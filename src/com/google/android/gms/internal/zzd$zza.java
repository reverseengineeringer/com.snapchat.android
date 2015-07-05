package com.google.android.gms.internal;

public final class zzd$zza
  extends zzws<zza>
{
  private static volatile zza[] zzgu;
  public int type;
  public String zzgA;
  public long zzgB;
  public boolean zzgC;
  public zza[] zzgD;
  public int[] zzgE;
  public boolean zzgF;
  public String zzgv;
  public zza[] zzgw;
  public zza[] zzgx;
  public zza[] zzgy;
  public String zzgz;
  
  public zzd$zza()
  {
    zzs();
  }
  
  public static zza[] zzr()
  {
    if (zzgu == null) {}
    synchronized (zzww.zzaHL)
    {
      if (zzgu == null) {
        zzgu = new zza[0];
      }
      return zzgu;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    label54:
    label118:
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
                  } while (!(paramObject instanceof zza));
                  paramObject = (zza)paramObject;
                  bool1 = bool2;
                } while (type != type);
                if (zzgv != null) {
                  break;
                }
                bool1 = bool2;
              } while (zzgv != null);
              bool1 = bool2;
            } while (!zzww.equals(zzgw, zzgw));
            bool1 = bool2;
          } while (!zzww.equals(zzgx, zzgx));
          bool1 = bool2;
        } while (!zzww.equals(zzgy, zzgy));
        if (zzgz != null) {
          break label228;
        }
        bool1 = bool2;
      } while (zzgz != null);
      if (zzgA != null) {
        break label244;
      }
      bool1 = bool2;
    } while (zzgA != null);
    label228:
    label244:
    while (zzgA.equals(zzgA))
    {
      bool1 = bool2;
      if (zzgB != zzgB) {
        break;
      }
      bool1 = bool2;
      if (zzgC != zzgC) {
        break;
      }
      bool1 = bool2;
      if (!zzww.equals(zzgD, zzgD)) {
        break;
      }
      bool1 = bool2;
      if (!zzww.equals(zzgE, zzgE)) {
        break;
      }
      bool1 = bool2;
      if (zzgF != zzgF) {
        break;
      }
      return zza((zzws)paramObject);
      if (zzgv.equals(zzgv)) {
        break label54;
      }
      return false;
      if (zzgz.equals(zzgz)) {
        break label118;
      }
      return false;
    }
    return false;
  }
  
  public final int hashCode()
  {
    int n = 1231;
    int k = 0;
    int i1 = type;
    int i;
    int i2;
    int i3;
    int i4;
    int j;
    label58:
    label65:
    int i5;
    int m;
    label92:
    int i6;
    int i7;
    if (zzgv == null)
    {
      i = 0;
      i2 = zzww.hashCode(zzgw);
      i3 = zzww.hashCode(zzgx);
      i4 = zzww.hashCode(zzgy);
      if (zzgz != null) {
        break label206;
      }
      j = 0;
      if (zzgA != null) {
        break label217;
      }
      i5 = (int)(zzgB ^ zzgB >>> 32);
      if (!zzgC) {
        break label228;
      }
      m = 1231;
      i6 = zzww.hashCode(zzgD);
      i7 = zzww.hashCode(zzgE);
      if (!zzgF) {
        break label236;
      }
    }
    for (;;)
    {
      return ((((m + (((j + ((((i + (i1 + 527) * 31) * 31 + i2) * 31 + i3) * 31 + i4) * 31) * 31 + k) * 31 + i5) * 31) * 31 + i6) * 31 + i7) * 31 + n) * 31 + zzvL();
      i = zzgv.hashCode();
      break;
      label206:
      j = zzgz.hashCode();
      break label58;
      label217:
      k = zzgA.hashCode();
      break label65;
      label228:
      m = 1237;
      break label92;
      label236:
      n = 1237;
    }
  }
  
  public final void zza(zzwr paramzzwr)
  {
    int j = 0;
    paramzzwr.zzy(1, type);
    if (!zzgv.equals("")) {
      paramzzwr.zzb(2, zzgv);
    }
    int i;
    zza localzza;
    if ((zzgw != null) && (zzgw.length > 0))
    {
      i = 0;
      while (i < zzgw.length)
      {
        localzza = zzgw[i];
        if (localzza != null) {
          paramzzwr.zza(3, localzza);
        }
        i += 1;
      }
    }
    if ((zzgx != null) && (zzgx.length > 0))
    {
      i = 0;
      while (i < zzgx.length)
      {
        localzza = zzgx[i];
        if (localzza != null) {
          paramzzwr.zza(4, localzza);
        }
        i += 1;
      }
    }
    if ((zzgy != null) && (zzgy.length > 0))
    {
      i = 0;
      while (i < zzgy.length)
      {
        localzza = zzgy[i];
        if (localzza != null) {
          paramzzwr.zza(5, localzza);
        }
        i += 1;
      }
    }
    if (!zzgz.equals("")) {
      paramzzwr.zzb(6, zzgz);
    }
    if (!zzgA.equals("")) {
      paramzzwr.zzb(7, zzgA);
    }
    if (zzgB != 0L) {
      paramzzwr.zzb(8, zzgB);
    }
    if (zzgF) {
      paramzzwr.zzb(9, zzgF);
    }
    if ((zzgE != null) && (zzgE.length > 0))
    {
      i = 0;
      while (i < zzgE.length)
      {
        paramzzwr.zzy(10, zzgE[i]);
        i += 1;
      }
    }
    if ((zzgD != null) && (zzgD.length > 0))
    {
      i = j;
      while (i < zzgD.length)
      {
        localzza = zzgD[i];
        if (localzza != null) {
          paramzzwr.zza(11, localzza);
        }
        i += 1;
      }
    }
    if (zzgC) {
      paramzzwr.zzb(12, zzgC);
    }
    super.zza(paramzzwr);
  }
  
  protected final int zzc()
  {
    int m = 0;
    int j = super.zzc() + zzwr.zzA(1, type);
    int i = j;
    if (!zzgv.equals("")) {
      i = j + zzwr.zzj(2, zzgv);
    }
    j = i;
    zza localzza;
    int k;
    if (zzgw != null)
    {
      j = i;
      if (zzgw.length > 0)
      {
        j = 0;
        while (j < zzgw.length)
        {
          localzza = zzgw[j];
          k = i;
          if (localzza != null) {
            k = i + zzwr.zzc(3, localzza);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (zzgx != null)
    {
      i = j;
      if (zzgx.length > 0)
      {
        i = j;
        j = 0;
        while (j < zzgx.length)
        {
          localzza = zzgx[j];
          k = i;
          if (localzza != null) {
            k = i + zzwr.zzc(4, localzza);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (zzgy != null)
    {
      j = i;
      if (zzgy.length > 0)
      {
        j = 0;
        while (j < zzgy.length)
        {
          localzza = zzgy[j];
          k = i;
          if (localzza != null) {
            k = i + zzwr.zzc(5, localzza);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (!zzgz.equals("")) {
      i = j + zzwr.zzj(6, zzgz);
    }
    j = i;
    if (!zzgA.equals("")) {
      j = i + zzwr.zzj(7, zzgA);
    }
    i = j;
    if (zzgB != 0L) {
      i = j + zzwr.zzd(8, zzgB);
    }
    j = i;
    if (zzgF) {
      j = i + zzwr.zzc(9, zzgF);
    }
    i = j;
    if (zzgE != null)
    {
      i = j;
      if (zzgE.length > 0)
      {
        i = 0;
        k = 0;
        while (i < zzgE.length)
        {
          k += zzwr.zziw(zzgE[i]);
          i += 1;
        }
        i = j + k + zzgE.length * 1;
      }
    }
    j = i;
    if (zzgD != null)
    {
      j = i;
      if (zzgD.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= zzgD.length) {
            break;
          }
          localzza = zzgD[k];
          j = i;
          if (localzza != null) {
            j = i + zzwr.zzc(11, localzza);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (zzgC) {
      i = j + zzwr.zzc(12, zzgC);
    }
    return i;
  }
  
  public final zza zzl(zzwq paramzzwq)
  {
    for (;;)
    {
      int i = paramzzwq.zzvu();
      int j;
      Object localObject;
      int k;
      switch (i)
      {
      default: 
        if (zza(paramzzwq, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        i = paramzzwq.zzvx();
        switch (i)
        {
        default: 
          break;
        case 1: 
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 7: 
        case 8: 
          type = i;
        }
        break;
      case 18: 
        zzgv = paramzzwq.readString();
        break;
      case 26: 
        j = zzxb.zzc(paramzzwq, 26);
        if (zzgw == null) {}
        for (i = 0;; i = zzgw.length)
        {
          localObject = new zza[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgw, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new zza();
            paramzzwq.zza(localObject[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = new zza();
        paramzzwq.zza(localObject[j]);
        zzgw = ((zza[])localObject);
        break;
      case 34: 
        j = zzxb.zzc(paramzzwq, 34);
        if (zzgx == null) {}
        for (i = 0;; i = zzgx.length)
        {
          localObject = new zza[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgx, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new zza();
            paramzzwq.zza(localObject[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = new zza();
        paramzzwq.zza(localObject[j]);
        zzgx = ((zza[])localObject);
        break;
      case 42: 
        j = zzxb.zzc(paramzzwq, 42);
        if (zzgy == null) {}
        for (i = 0;; i = zzgy.length)
        {
          localObject = new zza[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgy, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new zza();
            paramzzwq.zza(localObject[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = new zza();
        paramzzwq.zza(localObject[j]);
        zzgy = ((zza[])localObject);
        break;
      case 50: 
        zzgz = paramzzwq.readString();
        break;
      case 58: 
        zzgA = paramzzwq.readString();
        break;
      case 64: 
        zzgB = paramzzwq.zzvw();
        break;
      case 72: 
        zzgF = paramzzwq.zzvy();
        break;
      case 80: 
        int m = zzxb.zzc(paramzzwq, 80);
        localObject = new int[m];
        j = 0;
        i = 0;
        if (j < m)
        {
          if (j != 0) {
            paramzzwq.zzvu();
          }
          int n = paramzzwq.zzvx();
          switch (n)
          {
          }
          for (;;)
          {
            j += 1;
            break;
            k = i + 1;
            localObject[i] = n;
            i = k;
          }
        }
        if (i != 0)
        {
          if (zzgE == null) {}
          for (j = 0;; j = zzgE.length)
          {
            if ((j != 0) || (i != m)) {
              break label809;
            }
            zzgE = ((int[])localObject);
            break;
          }
          int[] arrayOfInt = new int[j + i];
          if (j != 0) {
            System.arraycopy(zzgE, 0, arrayOfInt, 0, j);
          }
          System.arraycopy(localObject, 0, arrayOfInt, j, i);
          zzgE = arrayOfInt;
        }
        break;
      case 82: 
        k = paramzzwq.zzip(paramzzwq.zzvB());
        i = paramzzwq.getPosition();
        j = 0;
        while (paramzzwq.zzvG() > 0) {
          switch (paramzzwq.zzvx())
          {
          default: 
            break;
          case 1: 
          case 2: 
          case 3: 
          case 4: 
          case 5: 
          case 6: 
          case 7: 
          case 8: 
          case 9: 
          case 10: 
          case 11: 
          case 12: 
          case 13: 
          case 14: 
          case 15: 
          case 16: 
          case 17: 
            j += 1;
          }
        }
        if (j != 0)
        {
          paramzzwq.zzir(i);
          if (zzgE == null) {}
          for (i = 0;; i = zzgE.length)
          {
            localObject = new int[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzgE, 0, localObject, 0, i);
              j = i;
            }
            while (paramzzwq.zzvG() > 0)
            {
              i = paramzzwq.zzvx();
              switch (i)
              {
              default: 
                break;
              case 1: 
              case 2: 
              case 3: 
              case 4: 
              case 5: 
              case 6: 
              case 7: 
              case 8: 
              case 9: 
              case 10: 
              case 11: 
              case 12: 
              case 13: 
              case 14: 
              case 15: 
              case 16: 
              case 17: 
                localObject[j] = i;
                j += 1;
              }
            }
          }
          zzgE = ((int[])localObject);
        }
        paramzzwq.zziq(k);
        break;
      case 90: 
        j = zzxb.zzc(paramzzwq, 90);
        if (zzgD == null) {}
        for (i = 0;; i = zzgD.length)
        {
          localObject = new zza[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(zzgD, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new zza();
            paramzzwq.zza(localObject[j]);
            paramzzwq.zzvu();
            j += 1;
          }
        }
        localObject[j] = new zza();
        paramzzwq.zza(localObject[j]);
        zzgD = ((zza[])localObject);
        break;
      case 96: 
        label809:
        zzgC = paramzzwq.zzvy();
      }
    }
  }
  
  public final zza zzs()
  {
    type = 1;
    zzgv = "";
    zzgw = zzr();
    zzgx = zzr();
    zzgy = zzr();
    zzgz = "";
    zzgA = "";
    zzgB = 0L;
    zzgC = false;
    zzgD = zzr();
    zzgE = zzxb.zzaHO;
    zzgF = false;
    zzaHB = null;
    zzaHM = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzd.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
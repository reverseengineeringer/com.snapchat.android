package com.google.android.gms.internal;

import java.util.Arrays;

public abstract interface zzxf
{
  public static final class zza
    extends zzws<zza>
  {
    public String[] zzaIP;
    public String[] zzaIQ;
    public int[] zzaIR;
    
    public zza()
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
  
  public static final class zzb
    extends zzws<zzb>
  {
    public String version;
    public int zzaIS;
    public String zzaIT;
    
    public zzb()
    {
      zzwp();
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
            } while (!(paramObject instanceof zzb));
            paramObject = (zzb)paramObject;
            bool1 = bool2;
          } while (zzaIS != zzaIS);
          if (zzaIT != null) {
            break;
          }
          bool1 = bool2;
        } while (zzaIT != null);
        if (version != null) {
          break label92;
        }
        bool1 = bool2;
      } while (version != null);
      label92:
      while (version.equals(version))
      {
        return zza((zzws)paramObject);
        if (zzaIT.equals(zzaIT)) {
          break;
        }
        return false;
      }
      return false;
    }
    
    public final int hashCode()
    {
      int j = 0;
      int k = zzaIS;
      int i;
      if (zzaIT == null)
      {
        i = 0;
        if (version != null) {
          break label58;
        }
      }
      for (;;)
      {
        return ((i + (k + 527) * 31) * 31 + j) * 31 + zzvL();
        i = zzaIT.hashCode();
        break;
        label58:
        j = version.hashCode();
      }
    }
    
    public final zzb zzL(zzwq paramzzwq)
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
        case 8: 
          i = paramzzwq.zzvx();
          switch (i)
          {
          default: 
            break;
          case 0: 
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
          case 18: 
          case 19: 
          case 20: 
          case 21: 
          case 22: 
          case 23: 
          case 24: 
          case 25: 
            zzaIS = i;
          }
          break;
        case 18: 
          zzaIT = paramzzwq.readString();
          break;
        case 26: 
          version = paramzzwq.readString();
        }
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      if (zzaIS != 0) {
        paramzzwr.zzy(1, zzaIS);
      }
      if (!zzaIT.equals("")) {
        paramzzwr.zzb(2, zzaIT);
      }
      if (!version.equals("")) {
        paramzzwr.zzb(3, version);
      }
      super.zza(paramzzwr);
    }
    
    protected final int zzc()
    {
      int j = super.zzc();
      int i = j;
      if (zzaIS != 0) {
        i = j + zzwr.zzA(1, zzaIS);
      }
      j = i;
      if (!zzaIT.equals("")) {
        j = i + zzwr.zzj(2, zzaIT);
      }
      i = j;
      if (!version.equals("")) {
        i = j + zzwr.zzj(3, version);
      }
      return i;
    }
    
    public final zzb zzwp()
    {
      zzaIS = 0;
      zzaIT = "";
      version = "";
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
  
  public static final class zzc
    extends zzws<zzc>
  {
    public byte[] zzaIU;
    public byte[][] zzaIV;
    public boolean zzaIW;
    
    public zzc()
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
  
  public static final class zzd
    extends zzws<zzd>
  {
    public String tag;
    public long zzaIX;
    public int zzaIY;
    public int zzaIZ;
    public boolean zzaJa;
    public zzxf.zze[] zzaJb;
    public zzxf.zzb zzaJc;
    public byte[] zzaJd;
    public byte[] zzaJe;
    public byte[] zzaJf;
    public zzxf.zza zzaJg;
    public String zzaJh;
    public long zzaJi;
    public zzxf.zzc zzaJj;
    
    public zzd()
    {
      zzwr();
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (paramObject == this) {
        bool1 = true;
      }
      label126:
      label190:
      label206:
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
                                } while (zzaIX != zzaIX);
                                if (tag != null) {
                                  break;
                                }
                                bool1 = bool2;
                              } while (tag != null);
                              bool1 = bool2;
                            } while (zzaIY != zzaIY);
                            bool1 = bool2;
                          } while (zzaIZ != zzaIZ);
                          bool1 = bool2;
                        } while (zzaJa != zzaJa);
                        bool1 = bool2;
                      } while (!zzww.equals(zzaJb, zzaJb));
                      if (zzaJc != null) {
                        break label258;
                      }
                      bool1 = bool2;
                    } while (zzaJc != null);
                    bool1 = bool2;
                  } while (!Arrays.equals(zzaJd, zzaJd));
                  bool1 = bool2;
                } while (!Arrays.equals(zzaJe, zzaJe));
                bool1 = bool2;
              } while (!Arrays.equals(zzaJf, zzaJf));
              if (zzaJg != null) {
                break label274;
              }
              bool1 = bool2;
            } while (zzaJg != null);
            if (zzaJh != null) {
              break label290;
            }
            bool1 = bool2;
          } while (zzaJh != null);
          bool1 = bool2;
        } while (zzaJi != zzaJi);
        if (zzaJj != null) {
          break label306;
        }
        bool1 = bool2;
      } while (zzaJj != null);
      label258:
      label274:
      label290:
      label306:
      while (zzaJj.equals(zzaJj))
      {
        return zza((zzws)paramObject);
        if (tag.equals(tag)) {
          break;
        }
        return false;
        if (zzaJc.equals(zzaJc)) {
          break label126;
        }
        return false;
        if (zzaJg.equals(zzaJg)) {
          break label190;
        }
        return false;
        if (zzaJh.equals(zzaJh)) {
          break label206;
        }
        return false;
      }
      return false;
    }
    
    public final int hashCode()
    {
      int i1 = 0;
      int i2 = (int)(zzaIX ^ zzaIX >>> 32);
      int i;
      int i3;
      int i4;
      int j;
      label50:
      int i5;
      int k;
      label68:
      int i6;
      int i7;
      int i8;
      int m;
      label105:
      int n;
      label115:
      int i9;
      if (tag == null)
      {
        i = 0;
        i3 = zzaIY;
        i4 = zzaIZ;
        if (!zzaJa) {
          break label238;
        }
        j = 1231;
        i5 = zzww.hashCode(zzaJb);
        if (zzaJc != null) {
          break label245;
        }
        k = 0;
        i6 = Arrays.hashCode(zzaJd);
        i7 = Arrays.hashCode(zzaJe);
        i8 = Arrays.hashCode(zzaJf);
        if (zzaJg != null) {
          break label256;
        }
        m = 0;
        if (zzaJh != null) {
          break label268;
        }
        n = 0;
        i9 = (int)(zzaJi ^ zzaJi >>> 32);
        if (zzaJj != null) {
          break label280;
        }
      }
      for (;;)
      {
        return (((n + (m + ((((k + ((j + (((i + (i2 + 527) * 31) * 31 + i3) * 31 + i4) * 31) * 31 + i5) * 31) * 31 + i6) * 31 + i7) * 31 + i8) * 31) * 31) * 31 + i9) * 31 + i1) * 31 + zzvL();
        i = tag.hashCode();
        break;
        label238:
        j = 1237;
        break label50;
        label245:
        k = zzaJc.hashCode();
        break label68;
        label256:
        m = zzaJg.hashCode();
        break label105;
        label268:
        n = zzaJh.hashCode();
        break label115;
        label280:
        i1 = zzaJj.hashCode();
      }
    }
    
    public final zzd zzN(zzwq paramzzwq)
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
        case 8: 
          zzaIX = paramzzwq.zzvw();
          break;
        case 18: 
          tag = paramzzwq.readString();
          break;
        case 26: 
          int j = zzxb.zzc(paramzzwq, 26);
          if (zzaJb == null) {}
          zzxf.zze[] arrayOfzze;
          for (i = 0;; i = zzaJb.length)
          {
            arrayOfzze = new zzxf.zze[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzaJb, 0, arrayOfzze, 0, i);
              j = i;
            }
            while (j < arrayOfzze.length - 1)
            {
              arrayOfzze[j] = new zzxf.zze();
              paramzzwq.zza(arrayOfzze[j]);
              paramzzwq.zzvu();
              j += 1;
            }
          }
          arrayOfzze[j] = new zzxf.zze();
          paramzzwq.zza(arrayOfzze[j]);
          zzaJb = arrayOfzze;
          break;
        case 50: 
          zzaJd = paramzzwq.readBytes();
          break;
        case 58: 
          if (zzaJg == null) {
            zzaJg = new zzxf.zza();
          }
          paramzzwq.zza(zzaJg);
          break;
        case 66: 
          zzaJe = paramzzwq.readBytes();
          break;
        case 74: 
          if (zzaJc == null) {
            zzaJc = new zzxf.zzb();
          }
          paramzzwq.zza(zzaJc);
          break;
        case 80: 
          zzaJa = paramzzwq.zzvy();
          break;
        case 88: 
          zzaIY = paramzzwq.zzvx();
          break;
        case 96: 
          zzaIZ = paramzzwq.zzvx();
          break;
        case 106: 
          zzaJf = paramzzwq.readBytes();
          break;
        case 114: 
          zzaJh = paramzzwq.readString();
          break;
        case 120: 
          zzaJi = paramzzwq.zzvA();
          break;
        case 130: 
          if (zzaJj == null) {
            zzaJj = new zzxf.zzc();
          }
          paramzzwq.zza(zzaJj);
        }
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      if (zzaIX != 0L) {
        paramzzwr.zzb(1, zzaIX);
      }
      if (!tag.equals("")) {
        paramzzwr.zzb(2, tag);
      }
      if ((zzaJb != null) && (zzaJb.length > 0))
      {
        int i = 0;
        while (i < zzaJb.length)
        {
          zzxf.zze localzze = zzaJb[i];
          if (localzze != null) {
            paramzzwr.zza(3, localzze);
          }
          i += 1;
        }
      }
      if (!Arrays.equals(zzaJd, zzxb.zzaHV)) {
        paramzzwr.zza(6, zzaJd);
      }
      if (zzaJg != null) {
        paramzzwr.zza(7, zzaJg);
      }
      if (!Arrays.equals(zzaJe, zzxb.zzaHV)) {
        paramzzwr.zza(8, zzaJe);
      }
      if (zzaJc != null) {
        paramzzwr.zza(9, zzaJc);
      }
      if (zzaJa) {
        paramzzwr.zzb(10, zzaJa);
      }
      if (zzaIY != 0) {
        paramzzwr.zzy(11, zzaIY);
      }
      if (zzaIZ != 0) {
        paramzzwr.zzy(12, zzaIZ);
      }
      if (!Arrays.equals(zzaJf, zzxb.zzaHV)) {
        paramzzwr.zza(13, zzaJf);
      }
      if (!zzaJh.equals("")) {
        paramzzwr.zzb(14, zzaJh);
      }
      if (zzaJi != 180000L) {
        paramzzwr.zzc(15, zzaJi);
      }
      if (zzaJj != null) {
        paramzzwr.zza(16, zzaJj);
      }
      super.zza(paramzzwr);
    }
    
    protected final int zzc()
    {
      int i = super.zzc();
      int j = i;
      if (zzaIX != 0L) {
        j = i + zzwr.zzd(1, zzaIX);
      }
      i = j;
      if (!tag.equals("")) {
        i = j + zzwr.zzj(2, tag);
      }
      j = i;
      if (zzaJb != null)
      {
        j = i;
        if (zzaJb.length > 0)
        {
          j = 0;
          while (j < zzaJb.length)
          {
            zzxf.zze localzze = zzaJb[j];
            int k = i;
            if (localzze != null) {
              k = i + zzwr.zzc(3, localzze);
            }
            j += 1;
            i = k;
          }
          j = i;
        }
      }
      i = j;
      if (!Arrays.equals(zzaJd, zzxb.zzaHV)) {
        i = j + zzwr.zzb(6, zzaJd);
      }
      j = i;
      if (zzaJg != null) {
        j = i + zzwr.zzc(7, zzaJg);
      }
      i = j;
      if (!Arrays.equals(zzaJe, zzxb.zzaHV)) {
        i = j + zzwr.zzb(8, zzaJe);
      }
      j = i;
      if (zzaJc != null) {
        j = i + zzwr.zzc(9, zzaJc);
      }
      i = j;
      if (zzaJa) {
        i = j + zzwr.zzc(10, zzaJa);
      }
      j = i;
      if (zzaIY != 0) {
        j = i + zzwr.zzA(11, zzaIY);
      }
      i = j;
      if (zzaIZ != 0) {
        i = j + zzwr.zzA(12, zzaIZ);
      }
      j = i;
      if (!Arrays.equals(zzaJf, zzxb.zzaHV)) {
        j = i + zzwr.zzb(13, zzaJf);
      }
      i = j;
      if (!zzaJh.equals("")) {
        i = j + zzwr.zzj(14, zzaJh);
      }
      j = i;
      if (zzaJi != 180000L) {
        j = i + zzwr.zze(15, zzaJi);
      }
      i = j;
      if (zzaJj != null) {
        i = j + zzwr.zzc(16, zzaJj);
      }
      return i;
    }
    
    public final zzd zzwr()
    {
      zzaIX = 0L;
      tag = "";
      zzaIY = 0;
      zzaIZ = 0;
      zzaJa = false;
      zzaJb = zzxf.zze.zzws();
      zzaJc = null;
      zzaJd = zzxb.zzaHV;
      zzaJe = zzxb.zzaHV;
      zzaJf = zzxb.zzaHV;
      zzaJg = null;
      zzaJh = "";
      zzaJi = 180000L;
      zzaJj = null;
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
  
  public static final class zze
    extends zzws<zze>
  {
    private static volatile zze[] zzaJk;
    public String value;
    public String zzfv;
    
    public zze()
    {
      zzwt();
    }
    
    public static zze[] zzws()
    {
      if (zzaJk == null) {}
      synchronized (zzww.zzaHL)
      {
        if (zzaJk == null) {
          zzaJk = new zze[0];
        }
        return zzaJk;
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
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof zze));
          paramObject = (zze)paramObject;
          if (zzfv != null) {
            break;
          }
          bool1 = bool2;
        } while (zzfv != null);
        if (value != null) {
          break label79;
        }
        bool1 = bool2;
      } while (value != null);
      label79:
      while (value.equals(value))
      {
        return zza((zzws)paramObject);
        if (zzfv.equals(zzfv)) {
          break;
        }
        return false;
      }
      return false;
    }
    
    public final int hashCode()
    {
      int j = 0;
      int i;
      if (zzfv == null)
      {
        i = 0;
        if (value != null) {
          break label48;
        }
      }
      for (;;)
      {
        return ((i + 527) * 31 + j) * 31 + zzvL();
        i = zzfv.hashCode();
        break;
        label48:
        j = value.hashCode();
      }
    }
    
    public final zze zzO(zzwq paramzzwq)
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
          zzfv = paramzzwq.readString();
          break;
        case 18: 
          value = paramzzwq.readString();
        }
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      if (!zzfv.equals("")) {
        paramzzwr.zzb(1, zzfv);
      }
      if (!value.equals("")) {
        paramzzwr.zzb(2, value);
      }
      super.zza(paramzzwr);
    }
    
    protected final int zzc()
    {
      int j = super.zzc();
      int i = j;
      if (!zzfv.equals("")) {
        i = j + zzwr.zzj(1, zzfv);
      }
      j = i;
      if (!value.equals("")) {
        j = i + zzwr.zzj(2, value);
      }
      return j;
    }
    
    public final zze zzwt()
    {
      zzfv = "";
      value = "";
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
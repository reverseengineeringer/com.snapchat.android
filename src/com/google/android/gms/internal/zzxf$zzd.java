package com.google.android.gms.internal;

import java.util.Arrays;

public final class zzxf$zzd
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
  
  public zzxf$zzd()
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxf.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
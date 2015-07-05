package com.google.android.gms.internal;

public abstract interface zzc
{
  public static final class zza
    extends zzws<zza>
  {
    public int level;
    public int zzfn;
    public int zzfo;
    
    public zza()
    {
      zzb();
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
          } while (level != level);
          bool1 = bool2;
        } while (zzfn != zzfn);
        bool1 = bool2;
      } while (zzfo != zzfo);
      return zza((zzws)paramObject);
    }
    
    public final int hashCode()
    {
      return (((level + 527) * 31 + zzfn) * 31 + zzfo) * 31 + zzvL();
    }
    
    public final zza zza(zzwq paramzzwq)
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
          case 1: 
          case 2: 
          case 3: 
            level = i;
          }
          break;
        case 16: 
          zzfn = paramzzwq.zzvx();
          break;
        case 24: 
          zzfo = paramzzwq.zzvx();
        }
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      if (level != 1) {
        paramzzwr.zzy(1, level);
      }
      if (zzfn != 0) {
        paramzzwr.zzy(2, zzfn);
      }
      if (zzfo != 0) {
        paramzzwr.zzy(3, zzfo);
      }
      super.zza(paramzzwr);
    }
    
    public final zza zzb()
    {
      level = 1;
      zzfn = 0;
      zzfo = 0;
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
    
    protected final int zzc()
    {
      int j = super.zzc();
      int i = j;
      if (level != 1) {
        i = j + zzwr.zzA(1, level);
      }
      j = i;
      if (zzfn != 0) {
        j = i + zzwr.zzA(2, zzfn);
      }
      i = j;
      if (zzfo != 0) {
        i = j + zzwr.zzA(3, zzfo);
      }
      return i;
    }
  }
  
  public static final class zzb
    extends zzws<zzb>
  {
    private static volatile zzb[] zzfp;
    public int name;
    public int[] zzfq;
    public int zzfr;
    public boolean zzfs;
    public boolean zzft;
    
    public zzb()
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
  
  public static final class zzc
    extends zzws<zzc>
  {
    private static volatile zzc[] zzfu;
    public String zzfv;
    public long zzfw;
    public long zzfx;
    public boolean zzfy;
    public long zzfz;
    
    public zzc()
    {
      zzg();
    }
    
    public static zzc[] zzf()
    {
      if (zzfu == null) {}
      synchronized (zzww.zzaHL)
      {
        if (zzfu == null) {
          zzfu = new zzc[0];
        }
        return zzfu;
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
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof zzc));
        paramObject = (zzc)paramObject;
        if (zzfv != null) {
          break;
        }
        bool1 = bool2;
      } while (zzfv != null);
      while (zzfv.equals(zzfv))
      {
        bool1 = bool2;
        if (zzfw != zzfw) {
          break;
        }
        bool1 = bool2;
        if (zzfx != zzfx) {
          break;
        }
        bool1 = bool2;
        if (zzfy != zzfy) {
          break;
        }
        bool1 = bool2;
        if (zzfz != zzfz) {
          break;
        }
        return zza((zzws)paramObject);
      }
      return false;
    }
    
    public final int hashCode()
    {
      int i;
      int k;
      int m;
      if (zzfv == null)
      {
        i = 0;
        k = (int)(zzfw ^ zzfw >>> 32);
        m = (int)(zzfx ^ zzfx >>> 32);
        if (!zzfy) {
          break label107;
        }
      }
      label107:
      for (int j = 1231;; j = 1237)
      {
        return ((j + (((i + 527) * 31 + k) * 31 + m) * 31) * 31 + (int)(zzfz ^ zzfz >>> 32)) * 31 + zzvL();
        i = zzfv.hashCode();
        break;
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      if (!zzfv.equals("")) {
        paramzzwr.zzb(1, zzfv);
      }
      if (zzfw != 0L) {
        paramzzwr.zzb(2, zzfw);
      }
      if (zzfx != 2147483647L) {
        paramzzwr.zzb(3, zzfx);
      }
      if (zzfy) {
        paramzzwr.zzb(4, zzfy);
      }
      if (zzfz != 0L) {
        paramzzwr.zzb(5, zzfz);
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
      if (zzfw != 0L) {
        j = i + zzwr.zzd(2, zzfw);
      }
      i = j;
      if (zzfx != 2147483647L) {
        i = j + zzwr.zzd(3, zzfx);
      }
      j = i;
      if (zzfy) {
        j = i + zzwr.zzc(4, zzfy);
      }
      i = j;
      if (zzfz != 0L) {
        i = j + zzwr.zzd(5, zzfz);
      }
      return i;
    }
    
    public final zzc zzd(zzwq paramzzwq)
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
        case 16: 
          zzfw = paramzzwq.zzvw();
          break;
        case 24: 
          zzfx = paramzzwq.zzvw();
          break;
        case 32: 
          zzfy = paramzzwq.zzvy();
          break;
        case 40: 
          zzfz = paramzzwq.zzvw();
        }
      }
    }
    
    public final zzc zzg()
    {
      zzfv = "";
      zzfw = 0L;
      zzfx = 2147483647L;
      zzfy = false;
      zzfz = 0L;
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
  
  public static final class zzd
    extends zzws<zzd>
  {
    public zzd.zza[] zzfA;
    public zzd.zza[] zzfB;
    public zzc.zzc[] zzfC;
    
    public zzd()
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
  
  public static final class zze
    extends zzws<zze>
  {
    private static volatile zze[] zzfD;
    public int key;
    public int value;
    
    public zze()
    {
      zzj();
    }
    
    public static zze[] zzi()
    {
      if (zzfD == null) {}
      synchronized (zzww.zzaHL)
      {
        if (zzfD == null) {
          zzfD = new zze[0];
        }
        return zzfD;
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
          bool1 = bool2;
        } while (key != key);
        bool1 = bool2;
      } while (value != value);
      return zza((zzws)paramObject);
    }
    
    public final int hashCode()
    {
      return ((key + 527) * 31 + value) * 31 + zzvL();
    }
    
    public final void zza(zzwr paramzzwr)
    {
      paramzzwr.zzy(1, key);
      paramzzwr.zzy(2, value);
      super.zza(paramzzwr);
    }
    
    protected final int zzc()
    {
      return super.zzc() + zzwr.zzA(1, key) + zzwr.zzA(2, value);
    }
    
    public final zze zzf(zzwq paramzzwq)
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
          key = paramzzwq.zzvx();
          break;
        case 16: 
          value = paramzzwq.zzvx();
        }
      }
    }
    
    public final zze zzj()
    {
      key = 0;
      value = 0;
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
  
  public static final class zzf
    extends zzws<zzf>
  {
    public String version;
    public String[] zzfE;
    public String[] zzfF;
    public zzd.zza[] zzfG;
    public zzc.zze[] zzfH;
    public zzc.zzb[] zzfI;
    public zzc.zzb[] zzfJ;
    public zzc.zzb[] zzfK;
    public zzc.zzg[] zzfL;
    public String zzfM;
    public String zzfN;
    public String zzfO;
    public zzc.zza zzfP;
    public float zzfQ;
    public boolean zzfR;
    public String[] zzfS;
    public int zzfT;
    
    public zzf()
    {
      zzk();
    }
    
    public static zzf zza(byte[] paramArrayOfByte)
    {
      return (zzf)zzwy.zza(new zzf(), paramArrayOfByte);
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (paramObject == this) {
        bool1 = true;
      }
      label169:
      label185:
      label201:
      label217:
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
                                } while (!(paramObject instanceof zzf));
                                paramObject = (zzf)paramObject;
                                bool1 = bool2;
                              } while (!zzww.equals(zzfE, zzfE));
                              bool1 = bool2;
                            } while (!zzww.equals(zzfF, zzfF));
                            bool1 = bool2;
                          } while (!zzww.equals(zzfG, zzfG));
                          bool1 = bool2;
                        } while (!zzww.equals(zzfH, zzfH));
                        bool1 = bool2;
                      } while (!zzww.equals(zzfI, zzfI));
                      bool1 = bool2;
                    } while (!zzww.equals(zzfJ, zzfJ));
                    bool1 = bool2;
                  } while (!zzww.equals(zzfK, zzfK));
                  bool1 = bool2;
                } while (!zzww.equals(zzfL, zzfL));
                if (zzfM != null) {
                  break;
                }
                bool1 = bool2;
              } while (zzfM != null);
              if (zzfN != null) {
                break label316;
              }
              bool1 = bool2;
            } while (zzfN != null);
            if (zzfO != null) {
              break label332;
            }
            bool1 = bool2;
          } while (zzfO != null);
          if (version != null) {
            break label348;
          }
          bool1 = bool2;
        } while (version != null);
        if (zzfP != null) {
          break label364;
        }
        bool1 = bool2;
      } while (zzfP != null);
      label316:
      label332:
      label348:
      label364:
      while (zzfP.equals(zzfP))
      {
        bool1 = bool2;
        if (Float.floatToIntBits(zzfQ) != Float.floatToIntBits(zzfQ)) {
          break;
        }
        bool1 = bool2;
        if (zzfR != zzfR) {
          break;
        }
        bool1 = bool2;
        if (!zzww.equals(zzfS, zzfS)) {
          break;
        }
        bool1 = bool2;
        if (zzfT != zzfT) {
          break;
        }
        return zza((zzws)paramObject);
        if (zzfM.equals(zzfM)) {
          break label169;
        }
        return false;
        if (zzfN.equals(zzfN)) {
          break label185;
        }
        return false;
        if (zzfO.equals(zzfO)) {
          break label201;
        }
        return false;
        if (version.equals(version)) {
          break label217;
        }
        return false;
      }
      return false;
    }
    
    public final int hashCode()
    {
      int n = 0;
      int i2 = zzww.hashCode(zzfE);
      int i3 = zzww.hashCode(zzfF);
      int i4 = zzww.hashCode(zzfG);
      int i5 = zzww.hashCode(zzfH);
      int i6 = zzww.hashCode(zzfI);
      int i7 = zzww.hashCode(zzfJ);
      int i8 = zzww.hashCode(zzfK);
      int i9 = zzww.hashCode(zzfL);
      int i;
      int j;
      label93:
      int k;
      label102:
      int m;
      label112:
      label119:
      int i10;
      if (zzfM == null)
      {
        i = 0;
        if (zzfN != null) {
          break label266;
        }
        j = 0;
        if (zzfO != null) {
          break label277;
        }
        k = 0;
        if (version != null) {
          break label288;
        }
        m = 0;
        if (zzfP != null) {
          break label300;
        }
        i10 = Float.floatToIntBits(zzfQ);
        if (!zzfR) {
          break label312;
        }
      }
      label266:
      label277:
      label288:
      label300:
      label312:
      for (int i1 = 1231;; i1 = 1237)
      {
        return (((i1 + (((m + (k + (j + (i + ((((((((i2 + 527) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31) * 31) * 31) * 31) * 31 + n) * 31 + i10) * 31) * 31 + zzww.hashCode(zzfS)) * 31 + zzfT) * 31 + zzvL();
        i = zzfM.hashCode();
        break;
        j = zzfN.hashCode();
        break label93;
        k = zzfO.hashCode();
        break label102;
        m = version.hashCode();
        break label112;
        n = zzfP.hashCode();
        break label119;
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      int j = 0;
      int i;
      Object localObject;
      if ((zzfF != null) && (zzfF.length > 0))
      {
        i = 0;
        while (i < zzfF.length)
        {
          localObject = zzfF[i];
          if (localObject != null) {
            paramzzwr.zzb(1, (String)localObject);
          }
          i += 1;
        }
      }
      if ((zzfG != null) && (zzfG.length > 0))
      {
        i = 0;
        while (i < zzfG.length)
        {
          localObject = zzfG[i];
          if (localObject != null) {
            paramzzwr.zza(2, (zzwy)localObject);
          }
          i += 1;
        }
      }
      if ((zzfH != null) && (zzfH.length > 0))
      {
        i = 0;
        while (i < zzfH.length)
        {
          localObject = zzfH[i];
          if (localObject != null) {
            paramzzwr.zza(3, (zzwy)localObject);
          }
          i += 1;
        }
      }
      if ((zzfI != null) && (zzfI.length > 0))
      {
        i = 0;
        while (i < zzfI.length)
        {
          localObject = zzfI[i];
          if (localObject != null) {
            paramzzwr.zza(4, (zzwy)localObject);
          }
          i += 1;
        }
      }
      if ((zzfJ != null) && (zzfJ.length > 0))
      {
        i = 0;
        while (i < zzfJ.length)
        {
          localObject = zzfJ[i];
          if (localObject != null) {
            paramzzwr.zza(5, (zzwy)localObject);
          }
          i += 1;
        }
      }
      if ((zzfK != null) && (zzfK.length > 0))
      {
        i = 0;
        while (i < zzfK.length)
        {
          localObject = zzfK[i];
          if (localObject != null) {
            paramzzwr.zza(6, (zzwy)localObject);
          }
          i += 1;
        }
      }
      if ((zzfL != null) && (zzfL.length > 0))
      {
        i = 0;
        while (i < zzfL.length)
        {
          localObject = zzfL[i];
          if (localObject != null) {
            paramzzwr.zza(7, (zzwy)localObject);
          }
          i += 1;
        }
      }
      if (!zzfM.equals("")) {
        paramzzwr.zzb(9, zzfM);
      }
      if (!zzfN.equals("")) {
        paramzzwr.zzb(10, zzfN);
      }
      if (!zzfO.equals("0")) {
        paramzzwr.zzb(12, zzfO);
      }
      if (!version.equals("")) {
        paramzzwr.zzb(13, version);
      }
      if (zzfP != null) {
        paramzzwr.zza(14, zzfP);
      }
      if (Float.floatToIntBits(zzfQ) != Float.floatToIntBits(0.0F)) {
        paramzzwr.zzb(15, zzfQ);
      }
      if ((zzfS != null) && (zzfS.length > 0))
      {
        i = 0;
        while (i < zzfS.length)
        {
          localObject = zzfS[i];
          if (localObject != null) {
            paramzzwr.zzb(16, (String)localObject);
          }
          i += 1;
        }
      }
      if (zzfT != 0) {
        paramzzwr.zzy(17, zzfT);
      }
      if (zzfR) {
        paramzzwr.zzb(18, zzfR);
      }
      if ((zzfE != null) && (zzfE.length > 0))
      {
        i = j;
        while (i < zzfE.length)
        {
          localObject = zzfE[i];
          if (localObject != null) {
            paramzzwr.zzb(19, (String)localObject);
          }
          i += 1;
        }
      }
      super.zza(paramzzwr);
    }
    
    protected final int zzc()
    {
      int i2 = 0;
      int i1 = super.zzc();
      int i;
      int k;
      Object localObject;
      int n;
      int m;
      if ((zzfF != null) && (zzfF.length > 0))
      {
        i = 0;
        j = 0;
        for (k = 0; i < zzfF.length; k = m)
        {
          localObject = zzfF[i];
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
      for (int j = i1 + j + k * 1;; j = i1)
      {
        i = j;
        if (zzfG != null)
        {
          i = j;
          if (zzfG.length > 0)
          {
            i = j;
            j = 0;
            while (j < zzfG.length)
            {
              localObject = zzfG[j];
              k = i;
              if (localObject != null) {
                k = i + zzwr.zzc(2, (zzwy)localObject);
              }
              j += 1;
              i = k;
            }
          }
        }
        j = i;
        if (zzfH != null)
        {
          j = i;
          if (zzfH.length > 0)
          {
            j = 0;
            while (j < zzfH.length)
            {
              localObject = zzfH[j];
              k = i;
              if (localObject != null) {
                k = i + zzwr.zzc(3, (zzwy)localObject);
              }
              j += 1;
              i = k;
            }
            j = i;
          }
        }
        i = j;
        if (zzfI != null)
        {
          i = j;
          if (zzfI.length > 0)
          {
            i = j;
            j = 0;
            while (j < zzfI.length)
            {
              localObject = zzfI[j];
              k = i;
              if (localObject != null) {
                k = i + zzwr.zzc(4, (zzwy)localObject);
              }
              j += 1;
              i = k;
            }
          }
        }
        j = i;
        if (zzfJ != null)
        {
          j = i;
          if (zzfJ.length > 0)
          {
            j = 0;
            while (j < zzfJ.length)
            {
              localObject = zzfJ[j];
              k = i;
              if (localObject != null) {
                k = i + zzwr.zzc(5, (zzwy)localObject);
              }
              j += 1;
              i = k;
            }
            j = i;
          }
        }
        i = j;
        if (zzfK != null)
        {
          i = j;
          if (zzfK.length > 0)
          {
            i = j;
            j = 0;
            while (j < zzfK.length)
            {
              localObject = zzfK[j];
              k = i;
              if (localObject != null) {
                k = i + zzwr.zzc(6, (zzwy)localObject);
              }
              j += 1;
              i = k;
            }
          }
        }
        j = i;
        if (zzfL != null)
        {
          j = i;
          if (zzfL.length > 0)
          {
            j = 0;
            while (j < zzfL.length)
            {
              localObject = zzfL[j];
              k = i;
              if (localObject != null) {
                k = i + zzwr.zzc(7, (zzwy)localObject);
              }
              j += 1;
              i = k;
            }
            j = i;
          }
        }
        i = j;
        if (!zzfM.equals("")) {
          i = j + zzwr.zzj(9, zzfM);
        }
        j = i;
        if (!zzfN.equals("")) {
          j = i + zzwr.zzj(10, zzfN);
        }
        i = j;
        if (!zzfO.equals("0")) {
          i = j + zzwr.zzj(12, zzfO);
        }
        j = i;
        if (!version.equals("")) {
          j = i + zzwr.zzj(13, version);
        }
        k = j;
        if (zzfP != null) {
          k = j + zzwr.zzc(14, zzfP);
        }
        i = k;
        if (Float.floatToIntBits(zzfQ) != Float.floatToIntBits(0.0F)) {
          i = k + zzwr.zzc(15, zzfQ);
        }
        j = i;
        if (zzfS != null)
        {
          j = i;
          if (zzfS.length > 0)
          {
            j = 0;
            k = 0;
            for (m = 0; j < zzfS.length; m = n)
            {
              localObject = zzfS[j];
              i1 = k;
              n = m;
              if (localObject != null)
              {
                n = m + 1;
                i1 = k + zzwr.zzdM((String)localObject);
              }
              j += 1;
              k = i1;
            }
            j = i + k + m * 2;
          }
        }
        k = j;
        if (zzfT != 0) {
          k = j + zzwr.zzA(17, zzfT);
        }
        i = k;
        if (zzfR) {
          i = k + zzwr.zzc(18, zzfR);
        }
        j = i;
        if (zzfE != null)
        {
          j = i;
          if (zzfE.length > 0)
          {
            k = 0;
            m = 0;
            j = i2;
            while (j < zzfE.length)
            {
              localObject = zzfE[j];
              i1 = k;
              n = m;
              if (localObject != null)
              {
                n = m + 1;
                i1 = k + zzwr.zzdM((String)localObject);
              }
              j += 1;
              k = i1;
              m = n;
            }
            j = i + k + m * 2;
          }
        }
        return j;
      }
    }
    
    public final zzf zzg(zzwq paramzzwq)
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
          if (zzfF == null) {}
          for (i = 0;; i = zzfF.length)
          {
            localObject = new String[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfF, 0, localObject, 0, i);
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
          zzfF = ((String[])localObject);
          break;
        case 18: 
          j = zzxb.zzc(paramzzwq, 18);
          if (zzfG == null) {}
          for (i = 0;; i = zzfG.length)
          {
            localObject = new zzd.zza[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfG, 0, localObject, 0, i);
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
          zzfG = ((zzd.zza[])localObject);
          break;
        case 26: 
          j = zzxb.zzc(paramzzwq, 26);
          if (zzfH == null) {}
          for (i = 0;; i = zzfH.length)
          {
            localObject = new zzc.zze[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfH, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = new zzc.zze();
              paramzzwq.zza(localObject[j]);
              paramzzwq.zzvu();
              j += 1;
            }
          }
          localObject[j] = new zzc.zze();
          paramzzwq.zza(localObject[j]);
          zzfH = ((zzc.zze[])localObject);
          break;
        case 34: 
          j = zzxb.zzc(paramzzwq, 34);
          if (zzfI == null) {}
          for (i = 0;; i = zzfI.length)
          {
            localObject = new zzc.zzb[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfI, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = new zzc.zzb();
              paramzzwq.zza(localObject[j]);
              paramzzwq.zzvu();
              j += 1;
            }
          }
          localObject[j] = new zzc.zzb();
          paramzzwq.zza(localObject[j]);
          zzfI = ((zzc.zzb[])localObject);
          break;
        case 42: 
          j = zzxb.zzc(paramzzwq, 42);
          if (zzfJ == null) {}
          for (i = 0;; i = zzfJ.length)
          {
            localObject = new zzc.zzb[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfJ, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = new zzc.zzb();
              paramzzwq.zza(localObject[j]);
              paramzzwq.zzvu();
              j += 1;
            }
          }
          localObject[j] = new zzc.zzb();
          paramzzwq.zza(localObject[j]);
          zzfJ = ((zzc.zzb[])localObject);
          break;
        case 50: 
          j = zzxb.zzc(paramzzwq, 50);
          if (zzfK == null) {}
          for (i = 0;; i = zzfK.length)
          {
            localObject = new zzc.zzb[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfK, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = new zzc.zzb();
              paramzzwq.zza(localObject[j]);
              paramzzwq.zzvu();
              j += 1;
            }
          }
          localObject[j] = new zzc.zzb();
          paramzzwq.zza(localObject[j]);
          zzfK = ((zzc.zzb[])localObject);
          break;
        case 58: 
          j = zzxb.zzc(paramzzwq, 58);
          if (zzfL == null) {}
          for (i = 0;; i = zzfL.length)
          {
            localObject = new zzc.zzg[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfL, 0, localObject, 0, i);
              j = i;
            }
            while (j < localObject.length - 1)
            {
              localObject[j] = new zzc.zzg();
              paramzzwq.zza(localObject[j]);
              paramzzwq.zzvu();
              j += 1;
            }
          }
          localObject[j] = new zzc.zzg();
          paramzzwq.zza(localObject[j]);
          zzfL = ((zzc.zzg[])localObject);
          break;
        case 74: 
          zzfM = paramzzwq.readString();
          break;
        case 82: 
          zzfN = paramzzwq.readString();
          break;
        case 98: 
          zzfO = paramzzwq.readString();
          break;
        case 106: 
          version = paramzzwq.readString();
          break;
        case 114: 
          if (zzfP == null) {
            zzfP = new zzc.zza();
          }
          paramzzwq.zza(zzfP);
          break;
        case 125: 
          zzfQ = paramzzwq.readFloat();
          break;
        case 130: 
          j = zzxb.zzc(paramzzwq, 130);
          if (zzfS == null) {}
          for (i = 0;; i = zzfS.length)
          {
            localObject = new String[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfS, 0, localObject, 0, i);
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
          zzfS = ((String[])localObject);
          break;
        case 136: 
          zzfT = paramzzwq.zzvx();
          break;
        case 144: 
          zzfR = paramzzwq.zzvy();
          break;
        case 154: 
          j = zzxb.zzc(paramzzwq, 154);
          if (zzfE == null) {}
          for (i = 0;; i = zzfE.length)
          {
            localObject = new String[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzfE, 0, localObject, 0, i);
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
          zzfE = ((String[])localObject);
        }
      }
    }
    
    public final zzf zzk()
    {
      zzfE = zzxb.zzaHT;
      zzfF = zzxb.zzaHT;
      zzfG = zzd.zza.zzr();
      zzfH = zzc.zze.zzi();
      zzfI = zzc.zzb.zzd();
      zzfJ = zzc.zzb.zzd();
      zzfK = zzc.zzb.zzd();
      zzfL = zzc.zzg.zzl();
      zzfM = "";
      zzfN = "";
      zzfO = "0";
      version = "";
      zzfP = null;
      zzfQ = 0.0F;
      zzfR = false;
      zzfS = zzxb.zzaHT;
      zzfT = 0;
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
  
  public static final class zzg
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
    
    public zzg()
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
  
  public static final class zzh
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
    
    public zzh()
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
  
  public static final class zzi
    extends zzws<zzi>
  {
    private static volatile zzi[] zzgo;
    public String name;
    public zzd.zza zzgp;
    public zzc.zzd zzgq;
    
    public zzi()
    {
      zzp();
    }
    
    public static zzi[] zzo()
    {
      if (zzgo == null) {}
      synchronized (zzww.zzaHL)
      {
        if (zzgo == null) {
          zzgo = new zzi[0];
        }
        return zzgo;
      }
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1;
      if (paramObject == this) {
        bool1 = true;
      }
      label57:
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
            } while (!(paramObject instanceof zzi));
            paramObject = (zzi)paramObject;
            if (name != null) {
              break;
            }
            bool1 = bool2;
          } while (name != null);
          if (zzgp != null) {
            break label95;
          }
          bool1 = bool2;
        } while (zzgp != null);
        if (zzgq != null) {
          break label111;
        }
        bool1 = bool2;
      } while (zzgq != null);
      label95:
      label111:
      while (zzgq.equals(zzgq))
      {
        return zza((zzws)paramObject);
        if (name.equals(name)) {
          break;
        }
        return false;
        if (zzgp.equals(zzgp)) {
          break label57;
        }
        return false;
      }
      return false;
    }
    
    public final int hashCode()
    {
      int k = 0;
      int i;
      int j;
      if (name == null)
      {
        i = 0;
        if (zzgp != null) {
          break label62;
        }
        j = 0;
        label20:
        if (zzgq != null) {
          break label73;
        }
      }
      for (;;)
      {
        return ((j + (i + 527) * 31) * 31 + k) * 31 + zzvL();
        i = name.hashCode();
        break;
        label62:
        j = zzgp.hashCode();
        break label20;
        label73:
        k = zzgq.hashCode();
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      if (!name.equals("")) {
        paramzzwr.zzb(1, name);
      }
      if (zzgp != null) {
        paramzzwr.zza(2, zzgp);
      }
      if (zzgq != null) {
        paramzzwr.zza(3, zzgq);
      }
      super.zza(paramzzwr);
    }
    
    protected final int zzc()
    {
      int j = super.zzc();
      int i = j;
      if (!name.equals("")) {
        i = j + zzwr.zzj(1, name);
      }
      j = i;
      if (zzgp != null) {
        j = i + zzwr.zzc(2, zzgp);
      }
      i = j;
      if (zzgq != null) {
        i = j + zzwr.zzc(3, zzgq);
      }
      return i;
    }
    
    public final zzi zzj(zzwq paramzzwq)
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
          name = paramzzwq.readString();
          break;
        case 18: 
          if (zzgp == null) {
            zzgp = new zzd.zza();
          }
          paramzzwq.zza(zzgp);
          break;
        case 26: 
          if (zzgq == null) {
            zzgq = new zzc.zzd();
          }
          paramzzwq.zza(zzgq);
        }
      }
    }
    
    public final zzi zzp()
    {
      name = "";
      zzgp = null;
      zzgq = null;
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
  
  public static final class zzj
    extends zzws<zzj>
  {
    public zzc.zzi[] zzgr;
    public zzc.zzf zzgs;
    public String zzgt;
    
    public zzj()
    {
      zzq();
    }
    
    public static zzj zzb(byte[] paramArrayOfByte)
    {
      return (zzj)zzwy.zza(new zzj(), paramArrayOfByte);
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
            } while (!(paramObject instanceof zzj));
            paramObject = (zzj)paramObject;
            bool1 = bool2;
          } while (!zzww.equals(zzgr, zzgr));
          if (zzgs != null) {
            break;
          }
          bool1 = bool2;
        } while (zzgs != null);
        if (zzgt != null) {
          break label95;
        }
        bool1 = bool2;
      } while (zzgt != null);
      label95:
      while (zzgt.equals(zzgt))
      {
        return zza((zzws)paramObject);
        if (zzgs.equals(zzgs)) {
          break;
        }
        return false;
      }
      return false;
    }
    
    public final int hashCode()
    {
      int j = 0;
      int k = zzww.hashCode(zzgr);
      int i;
      if (zzgs == null)
      {
        i = 0;
        if (zzgt != null) {
          break label61;
        }
      }
      for (;;)
      {
        return ((i + (k + 527) * 31) * 31 + j) * 31 + zzvL();
        i = zzgs.hashCode();
        break;
        label61:
        j = zzgt.hashCode();
      }
    }
    
    public final void zza(zzwr paramzzwr)
    {
      if ((zzgr != null) && (zzgr.length > 0))
      {
        int i = 0;
        while (i < zzgr.length)
        {
          zzc.zzi localzzi = zzgr[i];
          if (localzzi != null) {
            paramzzwr.zza(1, localzzi);
          }
          i += 1;
        }
      }
      if (zzgs != null) {
        paramzzwr.zza(2, zzgs);
      }
      if (!zzgt.equals("")) {
        paramzzwr.zzb(3, zzgt);
      }
      super.zza(paramzzwr);
    }
    
    protected final int zzc()
    {
      int i = super.zzc();
      int j = i;
      if (zzgr != null)
      {
        j = i;
        if (zzgr.length > 0)
        {
          int k = 0;
          for (;;)
          {
            j = i;
            if (k >= zzgr.length) {
              break;
            }
            zzc.zzi localzzi = zzgr[k];
            j = i;
            if (localzzi != null) {
              j = i + zzwr.zzc(1, localzzi);
            }
            k += 1;
            i = j;
          }
        }
      }
      i = j;
      if (zzgs != null) {
        i = j + zzwr.zzc(2, zzgs);
      }
      j = i;
      if (!zzgt.equals("")) {
        j = i + zzwr.zzj(3, zzgt);
      }
      return j;
    }
    
    public final zzj zzk(zzwq paramzzwq)
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
          int j = zzxb.zzc(paramzzwq, 10);
          if (zzgr == null) {}
          zzc.zzi[] arrayOfzzi;
          for (i = 0;; i = zzgr.length)
          {
            arrayOfzzi = new zzc.zzi[j + i];
            j = i;
            if (i != 0)
            {
              System.arraycopy(zzgr, 0, arrayOfzzi, 0, i);
              j = i;
            }
            while (j < arrayOfzzi.length - 1)
            {
              arrayOfzzi[j] = new zzc.zzi();
              paramzzwq.zza(arrayOfzzi[j]);
              paramzzwq.zzvu();
              j += 1;
            }
          }
          arrayOfzzi[j] = new zzc.zzi();
          paramzzwq.zza(arrayOfzzi[j]);
          zzgr = arrayOfzzi;
          break;
        case 18: 
          if (zzgs == null) {
            zzgs = new zzc.zzf();
          }
          paramzzwq.zza(zzgs);
          break;
        case 26: 
          zzgt = paramzzwq.readString();
        }
      }
    }
    
    public final zzj zzq()
    {
      zzgr = zzc.zzi.zzo();
      zzgs = null;
      zzgt = "";
      zzaHB = null;
      zzaHM = -1;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
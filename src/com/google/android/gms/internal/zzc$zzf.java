package com.google.android.gms.internal;

public final class zzc$zzf
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
  
  public zzc$zzf()
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzc.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
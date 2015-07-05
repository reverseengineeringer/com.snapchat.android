package com.google.android.gms.internal;

import android.os.Build.VERSION;

@zzgi
public class zzab
{
  private static zzab zzmN;
  private static final Object zzmz = new Object();
  private final zzgj zzmO = new zzgj();
  private final zzei zzmP = new zzei();
  private final zzem zzmQ = new zzem();
  private final zzgc zzmR = new zzgc();
  private final zzho zzmS = new zzho();
  private final zzie zzmT = new zzie();
  private final zzhp zzmU = zzhp.zzz(Build.VERSION.SDK_INT);
  private final zzhg zzmV = new zzhg(zzmS);
  private final zzlv zzmW = new zzlx();
  private final zzcd zzmX = new zzcd();
  private final zzby zzmY = new zzby();
  private final zzbz zzmZ = new zzbz();
  private final zzfj zzna = new zzfj();
  private final zzdp zznb = new zzdp();
  
  static
  {
    zza(new zzab());
  }
  
  protected static void zza(zzab paramzzab)
  {
    synchronized (zzmz)
    {
      zzmN = paramzzab;
      return;
    }
  }
  
  private static zzab zzaH()
  {
    synchronized (zzmz)
    {
      zzab localzzab = zzmN;
      return localzzab;
    }
  }
  
  public static zzgj zzaI()
  {
    return zzaHzzmO;
  }
  
  public static zzei zzaJ()
  {
    return zzaHzzmP;
  }
  
  public static zzem zzaK()
  {
    return zzaHzzmQ;
  }
  
  public static zzgc zzaL()
  {
    return zzaHzzmR;
  }
  
  public static zzho zzaM()
  {
    return zzaHzzmS;
  }
  
  public static zzie zzaN()
  {
    return zzaHzzmT;
  }
  
  public static zzhp zzaO()
  {
    return zzaHzzmU;
  }
  
  public static zzhg zzaP()
  {
    return zzaHzzmV;
  }
  
  public static zzlv zzaQ()
  {
    return zzaHzzmW;
  }
  
  public static zzcd zzaR()
  {
    return zzaHzzmX;
  }
  
  public static zzby zzaS()
  {
    return zzaHzzmY;
  }
  
  public static zzbz zzaT()
  {
    return zzaHzzmZ;
  }
  
  public static zzfj zzaU()
  {
    return zzaHzzna;
  }
  
  public static zzdp zzaV()
  {
    return zzaHzznb;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
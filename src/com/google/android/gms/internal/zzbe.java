package com.google.android.gms.internal;

@zzgi
public class zzbe
{
  private static final Object zzmz = new Object();
  private static zzbe zzpg;
  private final zzhw zzph = new zzhw();
  private final zzaw zzpi = new zzaw();
  private final zzbf zzpj = new zzbf();
  private final zzbr zzpk = new zzbr();
  
  static
  {
    zza(new zzbe());
  }
  
  protected static void zza(zzbe paramzzbe)
  {
    synchronized (zzmz)
    {
      zzpg = paramzzbe;
      return;
    }
  }
  
  private static zzbe zzbC()
  {
    synchronized (zzmz)
    {
      zzbe localzzbe = zzpg;
      return localzzbe;
    }
  }
  
  public static zzhw zzbD()
  {
    return zzbCzzph;
  }
  
  public static zzaw zzbE()
  {
    return zzbCzzpi;
  }
  
  public static zzbf zzbF()
  {
    return zzbCzzpj;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
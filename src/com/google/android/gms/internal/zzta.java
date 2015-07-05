package com.google.android.gms.internal;

public final class zzta
{
  private final String zzFr;
  private final boolean zzatB;
  private final boolean zzatC;
  private final String zzatD;
  
  private zzta(zza paramzza)
  {
    zzatD = zza.zza(paramzza);
    zzatB = zza.zzb(paramzza);
    zzatC = zza.zzc(paramzza);
    zzFr = zza.zzd(paramzza);
  }
  
  public final String zzgL()
  {
    return zzFr;
  }
  
  public final String zzrx()
  {
    return zzatD;
  }
  
  public final boolean zzry()
  {
    return zzatB;
  }
  
  public final boolean zzrz()
  {
    return zzatC;
  }
  
  public static final class zza
  {
    private String zzFr;
    private boolean zzatB = true;
    private boolean zzatC = false;
    private final String zzatD;
    
    public zza(String paramString)
    {
      zzatD = paramString;
    }
    
    public final zza zzab(boolean paramBoolean)
    {
      zzatB = paramBoolean;
      return this;
    }
    
    public final zza zzac(boolean paramBoolean)
    {
      zzatC = paramBoolean;
      return this;
    }
    
    public final zza zzcA(String paramString)
    {
      zzFr = paramString;
      return this;
    }
    
    public final zzta zzrA()
    {
      return new zzta(this, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzta
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
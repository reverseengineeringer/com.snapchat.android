package com.google.android.gms.internal;

public abstract class zzki<T>
{
  private static zza zzNG = null;
  private static int zzNH = 0;
  private static final Object zzmz = new Object();
  private T zzNI = null;
  protected final String zzqd;
  protected final T zzqe;
  
  protected zzki(String paramString, T paramT)
  {
    zzqd = paramString;
    zzqe = paramT;
  }
  
  public static boolean isInitialized()
  {
    return zzNG != null;
  }
  
  public static zzki<Integer> zza(String paramString, Integer paramInteger)
  {
    new zzki(paramString, paramInteger)
    {
      protected final Integer zzaY(String paramAnonymousString)
      {
        return zzki.zzit().zzb(zzqd, (Integer)zzqe);
      }
    };
  }
  
  public static zzki<Long> zza(String paramString, Long paramLong)
  {
    new zzki(paramString, paramLong)
    {
      protected final Long zzaX(String paramAnonymousString)
      {
        return zzki.zzit().getLong(zzqd, (Long)zzqe);
      }
    };
  }
  
  public static zzki<Boolean> zzg(String paramString, boolean paramBoolean)
  {
    new zzki(paramString, Boolean.valueOf(paramBoolean))
    {
      protected final Boolean zzaW(String paramAnonymousString)
      {
        return zzki.zzit().zzb(zzqd, (Boolean)zzqe);
      }
    };
  }
  
  public static int zzis()
  {
    return zzNH;
  }
  
  public static zzki<String> zzp(String paramString1, String paramString2)
  {
    new zzki(paramString1, paramString2)
    {
      protected final String zzaZ(String paramAnonymousString)
      {
        return zzki.zzit().getString(zzqd, (String)zzqe);
      }
    };
  }
  
  public final T get()
  {
    if (zzNI != null) {
      return (T)zzNI;
    }
    return (T)zzaV(zzqd);
  }
  
  protected abstract T zzaV(String paramString);
  
  static abstract interface zza
  {
    public abstract Long getLong(String paramString, Long paramLong);
    
    public abstract String getString(String paramString1, String paramString2);
    
    public abstract Boolean zzb(String paramString, Boolean paramBoolean);
    
    public abstract Integer zzb(String paramString, Integer paramInteger);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
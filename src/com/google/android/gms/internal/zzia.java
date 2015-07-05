package com.google.android.gms.internal;

public abstract interface zzia<T>
{
  public abstract int getStatus();
  
  public abstract void reject();
  
  public abstract void zza(zzd<T> paramzzd, zza paramzza);
  
  public abstract void zzc(T paramT);
  
  public static abstract interface zza
  {
    public abstract void run();
  }
  
  public static class zzb
    implements zzia.zza
  {
    public void run() {}
  }
  
  public static class zzc<T>
    implements zzia.zzd<T>
  {
    public void zza(T paramT) {}
  }
  
  public static abstract interface zzd<T>
  {
    public abstract void zza(T paramT);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
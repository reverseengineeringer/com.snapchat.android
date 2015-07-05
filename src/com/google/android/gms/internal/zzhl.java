package com.google.android.gms.internal;

@zzgi
public abstract class zzhl
{
  private final Runnable zzmG = new Runnable()
  {
    public final void run()
    {
      zzhl.zza(zzhl.this, Thread.currentThread());
      zzdw();
    }
  };
  private volatile Thread zzzi;
  
  public final void cancel()
  {
    onStop();
    if (zzzi != null) {
      zzzi.interrupt();
    }
  }
  
  public abstract void onStop();
  
  public final void start()
  {
    zzhn.zzb(zzmG);
  }
  
  public abstract void zzdw();
  
  public final void zzeq()
  {
    zzhn.zza(1, zzmG);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
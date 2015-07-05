package com.google.android.gms.internal;

import android.os.Handler;
import java.lang.ref.WeakReference;

final class zzeq$zza
{
  private final Runnable zzmG;
  private volatile boolean zzuF = false;
  
  public zzeq$zza(final zzeq paramzzeq)
  {
    zzmG = new Runnable()
    {
      private final WeakReference<zzeq> zzuG = new WeakReference(paramzzeq);
      
      public void run()
      {
        zzeq localzzeq = (zzeq)zzuG.get();
        if ((!zzeq.zza.zza(zzeq.zza.this)) && (localzzeq != null))
        {
          localzzeq.zzdp();
          zzdq();
        }
      }
    };
  }
  
  public final void cancel()
  {
    zzuF = true;
    zzhw.zzzG.removeCallbacks(zzmG);
  }
  
  public final void zzdq()
  {
    zzhw.zzzG.postDelayed(zzmG, 250L);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzeq.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
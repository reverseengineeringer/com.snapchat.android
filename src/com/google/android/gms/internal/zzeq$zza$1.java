package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

class zzeq$zza$1
  implements Runnable
{
  private final WeakReference<zzeq> zzuG = new WeakReference(zzuH);
  
  zzeq$zza$1(zzeq.zza paramzza, zzeq paramzzeq) {}
  
  public void run()
  {
    zzeq localzzeq = (zzeq)zzuG.get();
    if ((!zzeq.zza.zza(zzuI)) && (localzzeq != null))
    {
      localzzeq.zzdp();
      zzuI.zzdq();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzeq.zza.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
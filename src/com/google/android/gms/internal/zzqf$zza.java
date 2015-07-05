package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;

class zzqf$zza
  implements Runnable
{
  private zzqf$zza(zzqf paramzzqf) {}
  
  public void run()
  {
    synchronized (zzqf.zzb(zzaoZ))
    {
      Intent localIntent = new Intent("com.google.android.location.places.METHOD_CALL");
      localIntent.setPackage("com.google.android.gms");
      localIntent.putStringArrayListExtra("PLACE_IDS", zzqf.zzc(zzaoZ));
      localIntent.putStringArrayListExtra("METHOD_NAMES", zzqf.zzd(zzaoZ));
      zzqf.zze(zzaoZ).sendBroadcast(localIntent);
      zzqf.zza(zzaoZ, null);
      zzqf.zzb(zzaoZ, null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqf.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
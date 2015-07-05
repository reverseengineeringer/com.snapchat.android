package com.google.android.gms.internal;

import android.app.Activity;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;

class zzsz$zza
  implements zzre.zza
{
  private final Tracker zzBL;
  
  zzsz$zza(Tracker paramTracker)
  {
    zzBL = paramTracker;
  }
  
  public void zza(zzrh paramzzrh)
  {
    zzBL.setScreenName(paramzzrh.zzre());
    HitBuilders.ScreenViewBuilder localScreenViewBuilder = new HitBuilders.ScreenViewBuilder();
    localScreenViewBuilder.set("&a", String.valueOf(paramzzrh.zzaF()));
    zzBL.send(localScreenViewBuilder.build());
  }
  
  public void zza(zzrh paramzzrh, Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzsz.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
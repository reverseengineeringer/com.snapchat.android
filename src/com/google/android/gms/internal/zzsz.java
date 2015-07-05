package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.tagmanager.Container;

class zzsz
{
  private final Context mContext;
  private final zzta zzmB;
  
  public zzsz(Context paramContext, Container paramContainer, zzta paramzzta)
  {
    mContext = paramContext;
    zzmB = zza(paramContainer, paramzzta);
    zzrw();
  }
  
  static zzta zza(Container paramContainer, zzta paramzzta)
  {
    if ((paramContainer == null) || (paramContainer.isDefault())) {
      return paramzzta;
    }
    paramzzta = new zzta.zza(paramzzta.zzrx());
    paramzzta.zzcA(paramContainer.getString("trackingId")).zzab(paramContainer.getBoolean("trackScreenViews")).zzac(paramContainer.getBoolean("collectAdIdentifiers"));
    return paramzzta.zzrA();
  }
  
  private void zzrw()
  {
    if ((zzmB.zzry()) && (!TextUtils.isEmpty(zzmB.zzgL())))
    {
      Tracker localTracker = zzcz(zzmB.zzgL());
      localTracker.enableAdvertisingIdCollection(zzmB.zzrz());
      zzb(new zza(localTracker));
    }
  }
  
  void zzb(zzre.zza paramzza)
  {
    zzx.zzl(paramzza);
    zzre localzzre = zzre.zzag(mContext);
    localzzre.zzZ(true);
    localzzre.zza(paramzza);
  }
  
  Tracker zzcz(String paramString)
  {
    return GoogleAnalytics.getInstance(mContext).newTracker(paramString);
  }
  
  public zzta zzrv()
  {
    return zzmB;
  }
  
  static class zza
    implements zzre.zza
  {
    private final Tracker zzBL;
    
    zza(Tracker paramTracker)
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzsz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
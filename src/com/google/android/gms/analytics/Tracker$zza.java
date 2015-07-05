package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlx;
import java.util.HashMap;
import java.util.Map;

class Tracker$zza
  implements GoogleAnalytics.zza
{
  private boolean zzFk;
  private int zzFl;
  private long zzFm = -1L;
  private boolean zzFn;
  private long zzFo;
  private zzlv zzmW = zzlx.zzkc();
  
  public Tracker$zza(Tracker paramTracker) {}
  
  private void zzgH()
  {
    if ((zzFm >= 0L) || (zzFk))
    {
      Tracker.zzc(zzFp).zza(Tracker.zzb(zzFp));
      return;
    }
    Tracker.zzc(zzFp).zzb(Tracker.zzb(zzFp));
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    zzFk = paramBoolean;
    zzgH();
  }
  
  public void setSessionTimeout(long paramLong)
  {
    zzFm = paramLong;
    zzgH();
  }
  
  public long zzgE()
  {
    return zzFm;
  }
  
  public boolean zzgF()
  {
    return zzFk;
  }
  
  public boolean zzgG()
  {
    boolean bool = zzFn;
    zzFn = false;
    return bool;
  }
  
  boolean zzgI()
  {
    return zzmW.elapsedRealtime() >= zzFo + Math.max(1000L, zzFm);
  }
  
  public void zzn(Activity paramActivity)
  {
    zzy.zzfV().zza(zzy.zza.zzEd);
    if ((zzFl == 0) && (zzgI())) {
      zzFn = true;
    }
    zzFl += 1;
    HashMap localHashMap;
    Tracker localTracker;
    if (zzFk)
    {
      localObject = paramActivity.getIntent();
      if (localObject != null) {
        zzFp.setCampaignParamsOnNextHit(((Intent)localObject).getData());
      }
      localHashMap = new HashMap();
      localHashMap.put("&t", "screenview");
      zzy.zzfV().zzF(true);
      localTracker = zzFp;
      if (Tracker.zzd(zzFp) == null) {
        break label182;
      }
    }
    label182:
    for (Object localObject = Tracker.zzd(zzFp).zzq(paramActivity);; localObject = paramActivity.getClass().getCanonicalName())
    {
      localTracker.set("&cd", (String)localObject);
      if (TextUtils.isEmpty((CharSequence)localHashMap.get("&dr")))
      {
        paramActivity = Tracker.zzp(paramActivity);
        if (!TextUtils.isEmpty(paramActivity)) {
          localHashMap.put("&dr", paramActivity);
        }
      }
      zzFp.send(localHashMap);
      zzy.zzfV().zzF(false);
      return;
    }
  }
  
  public void zzo(Activity paramActivity)
  {
    zzy.zzfV().zza(zzy.zza.zzEe);
    zzFl -= 1;
    zzFl = Math.max(0, zzFl);
    if (zzFl == 0) {
      zzFo = zzmW.elapsedRealtime();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
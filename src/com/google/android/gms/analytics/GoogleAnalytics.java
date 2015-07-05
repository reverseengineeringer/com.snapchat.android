package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.google.android.gms.internal.zzra;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class GoogleAnalytics
  extends TrackerHandler
{
  private static volatile GoogleAnalytics zzEl;
  private static List<Runnable> zzEm;
  private static boolean zzEv;
  private final Context mContext;
  private final zzra zzAM;
  private final zzk zzAN;
  private final zzf zzBS;
  private String zzBa;
  private String zzBb;
  private boolean zzBs;
  private final zzy zzEn;
  private final zzaj zzEo;
  private final zzai zzEp;
  private final zzg zzEq;
  private final zza zzEr;
  private Set<zza> zzEs;
  private boolean zzEt;
  private volatile boolean zzEu;
  
  protected GoogleAnalytics(Context paramContext)
  {
    this(paramContext, null, zzv.zzfE(), null);
  }
  
  protected GoogleAnalytics(Context paramContext, zzf paramzzf, zzaj paramzzaj, zzak paramzzak)
  {
    com.google.android.gms.common.internal.zzx.zzl(paramContext);
    paramContext = paramContext.getApplicationContext();
    com.google.android.gms.common.internal.zzx.zzl(paramContext);
    com.google.android.gms.common.internal.zzx.zzl(paramzzaj);
    zzEn = zzy.zzfV();
    mContext = paramContext;
    zzAM = zzra.zzaf(paramContext);
    com.google.android.gms.common.internal.zzx.zzl(zzAM);
    zzEo = paramzzaj;
    if (paramzzf != null) {}
    for (zzBS = paramzzf;; zzBS = new zzx(this, paramzzak))
    {
      zzAN = new zzk(zzAM);
      zzEq = new zzg(zzAM);
      zzEp = new zzai(zzAM);
      zzEr = new zza(zzAM, zzAN);
      zzEs = new HashSet();
      zzgk();
      return;
    }
  }
  
  public static GoogleAnalytics getInstance(Context paramContext)
  {
    com.google.android.gms.common.internal.zzx.zzl(paramContext);
    if (zzEl == null) {
      try
      {
        if (zzEl == null)
        {
          zzEl = new GoogleAnalytics(paramContext);
          if (zzEm != null)
          {
            paramContext = zzEm.iterator();
            while (paramContext.hasNext()) {
              ((Runnable)paramContext.next()).run();
            }
            zzEm = null;
          }
        }
      }
      finally {}
    }
    return zzEl;
  }
  
  private Tracker zza(Tracker paramTracker)
  {
    if (zzBa != null) {
      paramTracker.set("&an", zzBa);
    }
    if (zzBb != null) {
      paramTracker.set("&av", zzBb);
    }
    return paramTracker;
  }
  
  private int zzao(String paramString)
  {
    paramString = paramString.toLowerCase();
    if ("verbose".equals(paramString)) {
      return 0;
    }
    if ("info".equals(paramString)) {
      return 1;
    }
    if ("warning".equals(paramString)) {
      return 2;
    }
    if ("error".equals(paramString)) {
      return 3;
    }
    return -1;
  }
  
  static GoogleAnalytics zzgj()
  {
    try
    {
      GoogleAnalytics localGoogleAnalytics = zzEl;
      return localGoogleAnalytics;
    }
    finally {}
  }
  
  private void zzgk()
  {
    if (zzEv) {}
    Object localObject;
    do
    {
      int i;
      do
      {
        do
        {
          return;
          try
          {
            ApplicationInfo localApplicationInfo = mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 129);
            if (localApplicationInfo == null)
            {
              zzae.zzac("Couldn't get ApplicationInfo to load global config.");
              return;
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            for (;;)
            {
              zzae.zzab("PackageManager doesn't know about package: " + localNameNotFoundException);
              localObject = null;
            }
            localObject = metaData;
          }
        } while (localObject == null);
        i = ((Bundle)localObject).getInt("com.google.android.gms.analytics.globalConfigResource");
      } while (i <= 0);
      localObject = (zzaa)new zzz(mContext).zzD(i);
    } while (localObject == null);
    zza((zzaa)localObject);
  }
  
  @Deprecated
  public void dispatchLocalHits()
  {
    zzEo.dispatchLocalHits();
  }
  
  public void enableAutoActivityReports(Application paramApplication)
  {
    if ((Build.VERSION.SDK_INT >= 14) && (!zzEt))
    {
      paramApplication.registerActivityLifecycleCallbacks(new zzb());
      zzEt = true;
    }
  }
  
  public boolean getAppOptOut()
  {
    zzEn.zza(zzy.zza.zzDM);
    return zzEu;
  }
  
  public String getClientId()
  {
    return zzAN.getValue("&cid");
  }
  
  public Context getContext()
  {
    return mContext;
  }
  
  public Logger getLogger()
  {
    return zzae.getLogger();
  }
  
  public boolean isDryRunEnabled()
  {
    zzEn.zza(zzy.zza.zzDY);
    return zzBs;
  }
  
  public Tracker newTracker(int paramInt)
  {
    try
    {
      zzEn.zza(zzy.zza.zzDI);
      Tracker localTracker = new Tracker(this, null, null, null);
      if (paramInt > 0)
      {
        zzam localzzam = (zzam)new zzal(mContext).zzD(paramInt);
        if (localzzam != null) {
          localTracker.zza(localzzam);
        }
      }
      localTracker = zza(localTracker);
      return localTracker;
    }
    finally {}
  }
  
  public Tracker newTracker(String paramString)
  {
    try
    {
      zzEn.zza(zzy.zza.zzDI);
      paramString = zza(new Tracker(this, paramString, null, null));
      return paramString;
    }
    finally {}
  }
  
  public void reportActivityStart(Activity paramActivity)
  {
    if (!zzEt) {
      zzl(paramActivity);
    }
  }
  
  public void reportActivityStop(Activity paramActivity)
  {
    if (!zzEt) {
      zzm(paramActivity);
    }
  }
  
  public void setAppOptOut(boolean paramBoolean)
  {
    zzEn.zza(zzy.zza.zzDL);
    zzEu = paramBoolean;
    if (zzEu) {
      zzBS.zzfa();
    }
  }
  
  public void setDryRun(boolean paramBoolean)
  {
    zzEn.zza(zzy.zza.zzDX);
    zzBs = paramBoolean;
  }
  
  @Deprecated
  public void setLocalDispatchPeriod(int paramInt)
  {
    zzEo.setLocalDispatchPeriod(paramInt);
  }
  
  public void setLogger(Logger paramLogger)
  {
    zzEn.zza(zzy.zza.zzDZ);
    zzae.setLogger(paramLogger);
  }
  
  void zza(zza paramzza)
  {
    zzEs.add(paramzza);
    if ((mContext instanceof Application)) {
      enableAutoActivityReports((Application)mContext);
    }
  }
  
  void zza(zzaa paramzzaa)
  {
    zzae.zzab("Loading global config values.");
    if (paramzzaa.zzfZ())
    {
      zzBa = paramzzaa.zzga();
      zzae.zzab("app name loaded: " + zzBa);
    }
    if (paramzzaa.zzgb())
    {
      zzBb = paramzzaa.zzgc();
      zzae.zzab("app version loaded: " + zzBb);
    }
    if (paramzzaa.zzgd())
    {
      int i = zzao(paramzzaa.zzge());
      if (i >= 0)
      {
        zzae.zzab("log level loaded: " + i);
        getLogger().setLogLevel(i);
      }
    }
    if (paramzzaa.zzgf()) {
      zzEo.setLocalDispatchPeriod(paramzzaa.zzgg());
    }
    if (paramzzaa.zzgh()) {
      setDryRun(paramzzaa.zzgi());
    }
  }
  
  void zzb(zza paramzza)
  {
    zzEs.remove(paramzza);
  }
  
  void zzfj()
  {
    zzBS.zzfj();
  }
  
  zzd zzgl()
  {
    return zzEo.zzE(mContext);
  }
  
  zzf zzgm()
  {
    return zzBS;
  }
  
  public zzai zzgn()
  {
    return zzEp;
  }
  
  public zzg zzgo()
  {
    return zzEq;
  }
  
  public zzk zzgp()
  {
    return zzAN;
  }
  
  public zza zzgq()
  {
    return zzEr;
  }
  
  void zzl(Activity paramActivity)
  {
    Iterator localIterator = zzEs.iterator();
    while (localIterator.hasNext()) {
      ((zza)localIterator.next()).zzn(paramActivity);
    }
  }
  
  void zzm(Activity paramActivity)
  {
    Iterator localIterator = zzEs.iterator();
    while (localIterator.hasNext()) {
      ((zza)localIterator.next()).zzo(paramActivity);
    }
  }
  
  void zzx(Map<String, String> paramMap)
  {
    com.google.android.gms.common.internal.zzx.zzl(paramMap);
    try
    {
      zzan.zza(paramMap, "&ul", zzan.zza(Locale.getDefault()));
      zzan.zza(paramMap, "&sr", zzEp);
      paramMap.put("&_u", zzEn.zzfX());
      zzEn.zzfW();
      zzBS.zzx(paramMap);
      return;
    }
    finally {}
  }
  
  static abstract interface zza
  {
    public abstract void zzn(Activity paramActivity);
    
    public abstract void zzo(Activity paramActivity);
  }
  
  class zzb
    implements Application.ActivityLifecycleCallbacks
  {
    zzb() {}
    
    public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityDestroyed(Activity paramActivity) {}
    
    public void onActivityPaused(Activity paramActivity) {}
    
    public void onActivityResumed(Activity paramActivity) {}
    
    public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
    
    public void onActivityStarted(Activity paramActivity)
    {
      zzl(paramActivity);
    }
    
    public void onActivityStopped(Activity paramActivity)
    {
      zzm(paramActivity);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.GoogleAnalytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
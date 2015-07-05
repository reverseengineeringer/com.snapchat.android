package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlx;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class Tracker
{
  private final GoogleAnalytics zzBN;
  private final TrackerHandler zzFe;
  private final Map<String, String> zzFf = new HashMap();
  private final zzah zzFg;
  private final zza zzFh;
  private ExceptionReporter zzFi;
  private zzam zzFj;
  private final Map<String, String> zzsZ = new HashMap();
  
  Tracker(GoogleAnalytics paramGoogleAnalytics, String paramString, TrackerHandler paramTrackerHandler, zzah paramzzah)
  {
    zzx.zzl(paramGoogleAnalytics);
    zzBN = paramGoogleAnalytics;
    if (paramTrackerHandler == null)
    {
      zzFe = paramGoogleAnalytics;
      if (paramString != null) {
        zzsZ.put("&tid", paramString);
      }
      zzsZ.put("useSecure", "1");
      zzsZ.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
      if (paramzzah != null) {
        break label149;
      }
    }
    label149:
    for (zzFg = new zzad("tracking");; zzFg = paramzzah)
    {
      zzFh = new zza();
      enableAdvertisingIdCollection(false);
      return;
      zzFe = paramTrackerHandler;
      break;
    }
  }
  
  private boolean zzgD()
  {
    return zzFi != null;
  }
  
  static String zzp(Activity paramActivity)
  {
    zzx.zzl(paramActivity);
    paramActivity = paramActivity.getIntent();
    if (paramActivity == null) {}
    do
    {
      return null;
      paramActivity = paramActivity.getStringExtra("android.intent.extra.REFERRER_NAME");
    } while (TextUtils.isEmpty(paramActivity));
    return paramActivity;
  }
  
  public void enableAdvertisingIdCollection(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      zzsZ.put("&ate", null);
      zzsZ.put("&adid", null);
    }
    do
    {
      return;
      if (zzsZ.containsKey("&ate")) {
        zzsZ.remove("&ate");
      }
    } while (!zzsZ.containsKey("&adid"));
    zzsZ.remove("&adid");
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    zzFh.enableAutoActivityTracking(paramBoolean);
  }
  
  public void enableExceptionReporting(boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (zzgD() == paramBoolean) {
          return;
        }
        if (paramBoolean)
        {
          Context localContext = zzBN.getContext();
          zzFi = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), localContext);
          Thread.setDefaultUncaughtExceptionHandler(zzFi);
          zzae.zzab("Uncaught exceptions will be reported to Google Analytics.");
          return;
        }
      }
      finally {}
      Thread.setDefaultUncaughtExceptionHandler(zzFi.zzfD());
      zzae.zzab("Uncaught exceptions will not be reported to Google Analytics.");
    }
  }
  
  public String get(String paramString)
  {
    zzy.zzfV().zza(zzy.zza.zzDe);
    if (TextUtils.isEmpty(paramString)) {}
    Object localObject;
    do
    {
      return null;
      if (zzsZ.containsKey(paramString)) {
        return (String)zzsZ.get(paramString);
      }
      if (paramString.equals("&ul")) {
        return zzan.zza(Locale.getDefault());
      }
      localObject = zzBN.zzgp();
      if (((zzk)localObject).zzaj(paramString)) {
        return ((zzk)localObject).getValue(paramString);
      }
      localObject = zzBN.zzgn();
      if (((zzai)localObject).zzaj(paramString)) {
        return ((zzai)localObject).getValue(paramString);
      }
      localObject = zzBN.zzgo();
    } while (!((zzg)localObject).zzaj(paramString));
    return ((zzg)localObject).getValue(paramString);
  }
  
  public void send(Map<String, String> paramMap)
  {
    zzy.zzfV().zza(zzy.zza.zzDg);
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(zzsZ);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    paramMap = zzFf.keySet().iterator();
    while (paramMap.hasNext())
    {
      str = (String)paramMap.next();
      if (!localHashMap.containsKey(str)) {
        localHashMap.put(str, zzFf.get(str));
      }
    }
    zzFf.clear();
    if (TextUtils.isEmpty((CharSequence)localHashMap.get("&tid"))) {
      zzae.zzac(String.format("Missing tracking id (%s) parameter.", new Object[] { "&tid" }));
    }
    String str = (String)localHashMap.get("&t");
    paramMap = str;
    if (TextUtils.isEmpty(str))
    {
      zzae.zzac(String.format("Missing hit type (%s) parameter.", new Object[] { "&t" }));
      paramMap = "";
    }
    if (zzFh.zzgG()) {
      localHashMap.put("&sc", "start");
    }
    paramMap = paramMap.toLowerCase();
    if (("screenview".equals(paramMap)) || ("pageview".equals(paramMap)) || ("appview".equals(paramMap)) || (TextUtils.isEmpty(paramMap)))
    {
      int j = Integer.parseInt((String)zzsZ.get("&a")) + 1;
      int i = j;
      if (j >= Integer.MAX_VALUE) {
        i = 1;
      }
      zzsZ.put("&a", Integer.toString(i));
    }
    if ((!paramMap.equals("transaction")) && (!paramMap.equals("item")) && (!zzFg.zzgv()))
    {
      zzae.zzac("Too many hits sent too quickly, rate limiting invoked.");
      return;
    }
    zzFe.zzx(localHashMap);
  }
  
  public void set(String paramString1, String paramString2)
  {
    zzx.zzb(paramString1, "Key should be non-null");
    zzy.zzfV().zza(zzy.zza.zzDf);
    zzsZ.put(paramString1, paramString2);
  }
  
  public void setAnonymizeIp(boolean paramBoolean)
  {
    set("&aip", zzan.zzG(paramBoolean));
  }
  
  public void setAppId(String paramString)
  {
    set("&aid", paramString);
  }
  
  public void setAppInstallerId(String paramString)
  {
    set("&aiid", paramString);
  }
  
  public void setAppName(String paramString)
  {
    set("&an", paramString);
  }
  
  public void setAppVersion(String paramString)
  {
    set("&av", paramString);
  }
  
  public void setCampaignParamsOnNextHit(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.isOpaque())) {}
    do
    {
      do
      {
        return;
        paramUri = paramUri.getQueryParameter("referrer");
      } while (TextUtils.isEmpty(paramUri));
      paramUri = Uri.parse("http://hostname/?" + paramUri);
      String str = paramUri.getQueryParameter("utm_id");
      if (str != null) {
        zzFf.put("&ci", str);
      }
      str = paramUri.getQueryParameter("utm_campaign");
      if (str != null) {
        zzFf.put("&cn", str);
      }
      str = paramUri.getQueryParameter("utm_content");
      if (str != null) {
        zzFf.put("&cc", str);
      }
      str = paramUri.getQueryParameter("utm_medium");
      if (str != null) {
        zzFf.put("&cm", str);
      }
      str = paramUri.getQueryParameter("utm_source");
      if (str != null) {
        zzFf.put("&cs", str);
      }
      str = paramUri.getQueryParameter("utm_term");
      if (str != null) {
        zzFf.put("&ck", str);
      }
      str = paramUri.getQueryParameter("dclid");
      if (str != null) {
        zzFf.put("&dclid", str);
      }
      paramUri = paramUri.getQueryParameter("gclid");
    } while (paramUri == null);
    zzFf.put("&gclid", paramUri);
  }
  
  public void setClientId(String paramString)
  {
    set("&cid", paramString);
  }
  
  public void setEncoding(String paramString)
  {
    set("&de", paramString);
  }
  
  public void setHostname(String paramString)
  {
    set("&dh", paramString);
  }
  
  public void setLanguage(String paramString)
  {
    set("&ul", paramString);
  }
  
  public void setLocation(String paramString)
  {
    set("&dl", paramString);
  }
  
  public void setPage(String paramString)
  {
    set("&dp", paramString);
  }
  
  public void setReferrer(String paramString)
  {
    set("&dr", paramString);
  }
  
  public void setSampleRate(double paramDouble)
  {
    set("&sf", Double.toString(paramDouble));
  }
  
  public void setScreenColors(String paramString)
  {
    set("&sd", paramString);
  }
  
  public void setScreenName(String paramString)
  {
    set("&cd", paramString);
  }
  
  public void setScreenResolution(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) && (paramInt2 < 0))
    {
      zzae.zzac("Invalid width or height. The values should be non-negative.");
      return;
    }
    set("&sr", paramInt1 + "x" + paramInt2);
  }
  
  public void setSessionTimeout(long paramLong)
  {
    zzFh.setSessionTimeout(1000L * paramLong);
  }
  
  public void setTitle(String paramString)
  {
    set("&dt", paramString);
  }
  
  public void setUseSecure(boolean paramBoolean)
  {
    set("useSecure", zzan.zzG(paramBoolean));
  }
  
  public void setViewportSize(String paramString)
  {
    set("&vp", paramString);
  }
  
  void zza(zzam paramzzam)
  {
    zzae.zzab("Loading Tracker config values.");
    zzFj = paramzzam;
    if (zzFj.zzgK())
    {
      paramzzam = zzFj.zzgL();
      set("&tid", paramzzam);
      zzae.zzab("[Tracker] trackingId loaded: " + paramzzam);
    }
    if (zzFj.zzgM())
    {
      paramzzam = Double.toString(zzFj.zzgN());
      set("&sf", paramzzam);
      zzae.zzab("[Tracker] sample frequency loaded: " + paramzzam);
    }
    if (zzFj.zzgO())
    {
      setSessionTimeout(zzFj.getSessionTimeout());
      zzae.zzab("[Tracker] session timeout loaded: " + zzgE());
    }
    if (zzFj.zzgP())
    {
      enableAutoActivityTracking(zzFj.zzgQ());
      zzae.zzab("[Tracker] auto activity tracking loaded: " + zzgF());
    }
    if (zzFj.zzgR())
    {
      if (zzFj.zzgS())
      {
        set("&aip", "1");
        zzae.zzab("[Tracker] anonymize ip loaded: true");
      }
      zzae.zzab("[Tracker] anonymize ip loaded: false");
    }
    enableExceptionReporting(zzFj.zzgT());
  }
  
  long zzgE()
  {
    return zzFh.zzgE();
  }
  
  boolean zzgF()
  {
    return zzFh.zzgF();
  }
  
  class zza
    implements GoogleAnalytics.zza
  {
    private boolean zzFk;
    private int zzFl;
    private long zzFm = -1L;
    private boolean zzFn;
    private long zzFo;
    private zzlv zzmW = zzlx.zzkc();
    
    public zza() {}
    
    private void zzgH()
    {
      if ((zzFm >= 0L) || (zzFk))
      {
        Tracker.zzc(Tracker.this).zza(Tracker.zzb(Tracker.this));
        return;
      }
      Tracker.zzc(Tracker.this).zzb(Tracker.zzb(Tracker.this));
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
          setCampaignParamsOnNextHit(((Intent)localObject).getData());
        }
        localHashMap = new HashMap();
        localHashMap.put("&t", "screenview");
        zzy.zzfV().zzF(true);
        localTracker = Tracker.this;
        if (Tracker.zzd(Tracker.this) == null) {
          break label182;
        }
      }
      label182:
      for (Object localObject = Tracker.zzd(Tracker.this).zzq(paramActivity);; localObject = paramActivity.getClass().getCanonicalName())
      {
        localTracker.set("&cd", (String)localObject);
        if (TextUtils.isEmpty((CharSequence)localHashMap.get("&dr")))
        {
          paramActivity = Tracker.zzp(paramActivity);
          if (!TextUtils.isEmpty(paramActivity)) {
            localHashMap.put("&dr", paramActivity);
          }
        }
        send(localHashMap);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
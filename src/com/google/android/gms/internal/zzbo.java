package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import cb;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@zzgi
public final class zzbo
{
  public static final String DEVICE_ID_EMULATOR = zzbe.zzbD().zzX("emulator");
  private final Date zzd;
  private final Set<String> zzf;
  private final Location zzh;
  private final String zzpn;
  private final int zzpo;
  private final boolean zzpp;
  private final Bundle zzpq;
  private final Map<Class<? extends NetworkExtras>, NetworkExtras> zzpr;
  private final String zzps;
  private final String zzpt;
  private final SearchAdRequest zzpu;
  private final int zzpv;
  private final Set<String> zzpw;
  private final Bundle zzpx;
  private final Set<String> zzpy;
  
  public zzbo(zza paramzza)
  {
    this(paramzza, null);
  }
  
  public zzbo(zza paramzza, SearchAdRequest paramSearchAdRequest)
  {
    zzd = zza.zza(paramzza);
    zzpn = zza.zzb(paramzza);
    zzpo = zza.zzc(paramzza);
    zzf = Collections.unmodifiableSet(zza.zzd(paramzza));
    zzh = zza.zze(paramzza);
    zzpp = zza.zzf(paramzza);
    zzpq = zza.zzg(paramzza);
    zzpr = Collections.unmodifiableMap(zza.zzh(paramzza));
    zzps = zza.zzi(paramzza);
    zzpt = zza.zzj(paramzza);
    zzpu = paramSearchAdRequest;
    zzpv = zza.zzk(paramzza);
    zzpw = Collections.unmodifiableSet(zza.zzl(paramzza));
    zzpx = zza.zzm(paramzza);
    zzpy = Collections.unmodifiableSet(zza.zzn(paramzza));
  }
  
  public static void updateCorrelator()
  {
    zzbe.zzbF().zzbG();
  }
  
  public final Date getBirthday()
  {
    return zzd;
  }
  
  public final String getContentUrl()
  {
    return zzpn;
  }
  
  public final Bundle getCustomEventExtrasBundle(Class<? extends CustomEvent> paramClass)
  {
    Bundle localBundle = zzpq.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter");
    if (localBundle != null) {
      return localBundle.getBundle(paramClass.getClass().getName());
    }
    return null;
  }
  
  public final Bundle getCustomTargeting()
  {
    return zzpx;
  }
  
  public final int getGender()
  {
    return zzpo;
  }
  
  public final Set<String> getKeywords()
  {
    return zzf;
  }
  
  public final Location getLocation()
  {
    return zzh;
  }
  
  public final boolean getManualImpressionsEnabled()
  {
    return zzpp;
  }
  
  @Deprecated
  public final <T extends NetworkExtras> T getNetworkExtras(Class<T> paramClass)
  {
    return (NetworkExtras)zzpr.get(paramClass);
  }
  
  public final Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> paramClass)
  {
    return zzpq.getBundle(paramClass.getName());
  }
  
  public final String getPublisherProvidedId()
  {
    return zzps;
  }
  
  public final boolean isTestDevice(Context paramContext)
  {
    return zzpw.contains(zzbe.zzbD().zzz(paramContext));
  }
  
  public final String zzbH()
  {
    return zzpt;
  }
  
  public final SearchAdRequest zzbI()
  {
    return zzpu;
  }
  
  public final Map<Class<? extends NetworkExtras>, NetworkExtras> zzbJ()
  {
    return zzpr;
  }
  
  public final Bundle zzbK()
  {
    return zzpq;
  }
  
  public final int zzbL()
  {
    return zzpv;
  }
  
  public final Set<String> zzbM()
  {
    return zzpy;
  }
  
  public static final class zza
  {
    private Date zzd;
    private Location zzh;
    private final HashMap<Class<? extends NetworkExtras>, NetworkExtras> zzpA = new HashMap();
    private final HashSet<String> zzpB = new HashSet();
    private final HashSet<String> zzpC = new HashSet();
    private String zzpn;
    private int zzpo = -1;
    private boolean zzpp = false;
    private final Bundle zzpq = new Bundle();
    private String zzps;
    private String zzpt;
    private int zzpv = -1;
    private final Bundle zzpx = new Bundle();
    private final HashSet<String> zzpz = new HashSet();
    
    public final void zza(Location paramLocation)
    {
      zzh = paramLocation;
    }
    
    @Deprecated
    public final void zza(NetworkExtras paramNetworkExtras)
    {
      if ((paramNetworkExtras instanceof AdMobExtras))
      {
        zza(cb.class, ((AdMobExtras)paramNetworkExtras).getExtras());
        return;
      }
      zzpA.put(paramNetworkExtras.getClass(), paramNetworkExtras);
    }
    
    public final void zza(Class<? extends MediationAdapter> paramClass, Bundle paramBundle)
    {
      zzpq.putBundle(paramClass.getName(), paramBundle);
    }
    
    public final void zza(Date paramDate)
    {
      zzd = paramDate;
    }
    
    public final void zzb(Class<? extends CustomEvent> paramClass, Bundle paramBundle)
    {
      if (zzpq.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") == null) {
        zzpq.putBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter", new Bundle());
      }
      zzpq.getBundle("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter").putBundle(paramClass.getName(), paramBundle);
    }
    
    public final void zzc(String paramString1, String paramString2)
    {
      zzpx.putString(paramString1, paramString2);
    }
    
    public final void zzh(int paramInt)
    {
      zzpo = paramInt;
    }
    
    public final void zzj(boolean paramBoolean)
    {
      zzpp = paramBoolean;
    }
    
    public final void zzk(boolean paramBoolean)
    {
      if (paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        zzpv = i;
        return;
      }
    }
    
    public final void zzr(String paramString)
    {
      zzpz.add(paramString);
    }
    
    public final void zzs(String paramString)
    {
      zzpB.add(paramString);
    }
    
    public final void zzt(String paramString)
    {
      zzpB.remove(paramString);
    }
    
    public final void zzu(String paramString)
    {
      zzpn = paramString;
    }
    
    public final void zzv(String paramString)
    {
      zzps = paramString;
    }
    
    public final void zzw(String paramString)
    {
      zzpt = paramString;
    }
    
    public final void zzx(String paramString)
    {
      zzpC.add(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import cb;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.admob.AdMobExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

public final class zzbo$zza
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbo.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
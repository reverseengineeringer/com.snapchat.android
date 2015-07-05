package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@zzgi
public final class zzdk
{
  public final List<zzdj> zzsr;
  public final long zzss;
  public final List<String> zzst;
  public final List<String> zzsu;
  public final List<String> zzsv;
  public final String zzsw;
  public final long zzsx;
  public int zzsy;
  public int zzsz;
  
  public zzdk(String paramString)
  {
    paramString = new JSONObject(paramString);
    if (zzhx.zzA(2)) {
      zzhx.zzab("Mediation Response JSON: " + paramString.toString(2));
    }
    JSONArray localJSONArray = paramString.getJSONArray("ad_networks");
    ArrayList localArrayList = new ArrayList(localJSONArray.length());
    int j = -1;
    int i = 0;
    while (i < localJSONArray.length())
    {
      zzdj localzzdj = new zzdj(localJSONArray.getJSONObject(i));
      localArrayList.add(localzzdj);
      int k = j;
      if (j < 0)
      {
        k = j;
        if (zza(localzzdj)) {
          k = i;
        }
      }
      i += 1;
      j = k;
    }
    zzsy = j;
    zzsz = localJSONArray.length();
    zzsr = Collections.unmodifiableList(localArrayList);
    zzsw = paramString.getString("qdata");
    paramString = paramString.optJSONObject("settings");
    if (paramString != null)
    {
      zzss = paramString.optLong("ad_network_timeout_millis", -1L);
      zzst = zzab.zzaV().zza(paramString, "click_urls");
      zzsu = zzab.zzaV().zza(paramString, "imp_urls");
      zzsv = zzab.zzaV().zza(paramString, "nofill_urls");
      long l = paramString.optLong("refresh", -1L);
      if (l > 0L) {}
      for (l *= 1000L;; l = -1L)
      {
        zzsx = l;
        return;
      }
    }
    zzss = -1L;
    zzst = null;
    zzsu = null;
    zzsv = null;
    zzsx = -1L;
  }
  
  private boolean zza(zzdj paramzzdj)
  {
    paramzzdj = zzsm.iterator();
    while (paramzzdj.hasNext()) {
      if (((String)paramzzdj.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
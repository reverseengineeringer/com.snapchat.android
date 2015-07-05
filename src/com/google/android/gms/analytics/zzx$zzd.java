package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

class zzx$zzd
  implements Runnable
{
  private final Map<String, String> zzCQ;
  
  zzx$zzd(Map<String, String> paramMap)
  {
    zzCQ = new HashMap((Map)localObject);
    Object localObject = (String)((Map)localObject).get("&ht");
    paramMap = (Map<String, String>)localObject;
    if (localObject != null) {}
    try
    {
      Long.valueOf((String)localObject);
      paramMap = (Map<String, String>)localObject;
    }
    catch (NumberFormatException paramMap)
    {
      for (;;)
      {
        long l;
        paramMap = null;
      }
    }
    if (paramMap == null)
    {
      l = System.currentTimeMillis();
      zzCQ.put("&ht", Long.toString(l));
    }
  }
  
  private void zzA(Map<String, String> paramMap)
  {
    zzg localzzg = zzx.zza(zzCP).zzgo();
    zzan.zza(paramMap, "&an", localzzg);
    zzan.zza(paramMap, "&av", localzzg);
    zzan.zza(paramMap, "&aid", localzzg);
    zzan.zza(paramMap, "&aiid", localzzg);
    paramMap.put("&v", "1");
  }
  
  private boolean zzB(Map<String, String> paramMap)
  {
    if (paramMap.get("&sf") == null) {
      return false;
    }
    double d = zzan.zza((String)paramMap.get("&sf"), 100.0D);
    if (d >= 100.0D) {
      return false;
    }
    if (zzx.zzan((String)paramMap.get("&cid")) % 10000 >= d * 100.0D)
    {
      if (paramMap.get("&t") == null) {}
      for (paramMap = "unknown";; paramMap = (String)paramMap.get("&t"))
      {
        zzae.zzab(String.format("%s hit sampled out", new Object[] { paramMap }));
        return true;
      }
    }
    return false;
  }
  
  private String zzy(Map<String, String> paramMap)
  {
    if (paramMap.containsKey("useSecure"))
    {
      if (zzan.zze((String)paramMap.get("useSecure"), true)) {
        return "https:";
      }
      return "http:";
    }
    return "https:";
  }
  
  private void zzz(Map<String, String> paramMap)
  {
    zzx.zza(zzCP).getContext();
    zza localzza = zzx.zza(zzCP).zzgq();
    zzan.zza(paramMap, "&adid", localzza);
    zzan.zza(paramMap, "&ate", localzza);
  }
  
  public void run()
  {
    zzz(zzCQ);
    if (TextUtils.isEmpty((CharSequence)zzCQ.get("&cid")))
    {
      localObject = zzx.zza(zzCP).zzgp();
      zzCQ.put("&cid", ((zzk)localObject).getValue("&cid"));
    }
    if ((zzx.zza(zzCP).getAppOptOut()) || (zzB(zzCQ))) {
      return;
    }
    if (!TextUtils.isEmpty(zzx.zzb(zzCP)))
    {
      zzy.zzfV().zzF(true);
      localObject = new HitBuilders.HitBuilder().setCampaignParamsFromUrl(zzx.zzb(zzCP));
      zzx.zza(zzCP, null);
      localObject = ((HitBuilders.HitBuilder)localObject).build();
      zzy.zzfV().zzF(false);
      zzCQ.putAll((Map)localObject);
    }
    zzA(zzCQ);
    Object localObject = zzac.zzC(zzCQ);
    zzx.zzd(zzCP).zzb((Map)localObject, Long.valueOf((String)zzCQ.get("&ht")).longValue(), zzy(zzCQ), zzx.zzc(zzCP));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzx.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
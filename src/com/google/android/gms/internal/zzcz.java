package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;

@zzgi
public class zzcz
  implements zzcv
{
  static final Map<String, Integer> zzrM;
  private final zzu zzrK;
  private final zzeb zzrL;
  
  static
  {
    HashMap localHashMap = new HashMap();
    zzrM = localHashMap;
    localHashMap.put("resize", Integer.valueOf(1));
    zzrM.put("playVideo", Integer.valueOf(2));
    zzrM.put("storePicture", Integer.valueOf(3));
    zzrM.put("createCalendarEvent", Integer.valueOf(4));
    zzrM.put("setOrientationProperties", Integer.valueOf(5));
    zzrM.put("closeResizedAd", Integer.valueOf(6));
  }
  
  public zzcz(zzu paramzzu, zzeb paramzzeb)
  {
    zzrK = paramzzu;
    zzrL = paramzzeb;
  }
  
  public void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    int i = ((Integer)zzrM.get(str)).intValue();
    if ((i != 5) && (zzrK != null) && (!zzrK.zzaB()))
    {
      zzrK.zzd(null);
      return;
    }
    switch (i)
    {
    case 2: 
    default: 
      zzhx.zzaa("Unknown MRAID command called.");
      return;
    case 1: 
      zzrL.zzg(paramMap);
      return;
    case 4: 
      new zzea(paramzzic, paramMap).execute();
      return;
    case 3: 
      new zzed(paramzzic, paramMap).execute();
      return;
    case 5: 
      new zzec(paramzzic, paramMap).execute();
      return;
    }
    zzrL.zzm(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
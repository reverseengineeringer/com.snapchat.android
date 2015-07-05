package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class zzs
  extends zzaj
{
  private static final String ID = zza.zzL.toString();
  private static final String zzaxp = zzb.zzbl.toString();
  private static final String zzayb = zzb.zzcV.toString();
  private final zza zzayc;
  
  public zzs(zza paramzza)
  {
    super(ID, new String[] { zzayb });
    zzayc = paramzza;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    String str = zzde.zzg((zzd.zza)paramMap.get(zzayb));
    HashMap localHashMap = new HashMap();
    paramMap = (zzd.zza)paramMap.get(zzaxp);
    if (paramMap != null)
    {
      paramMap = zzde.zzl(paramMap);
      if (!(paramMap instanceof Map))
      {
        zzbf.zzac("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
        return zzde.zzuf();
      }
      paramMap = ((Map)paramMap).entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localHashMap.put(localEntry.getKey().toString(), localEntry.getValue());
      }
    }
    try
    {
      paramMap = zzde.zzx(zzayc.zzc(str, localHashMap));
      return paramMap;
    }
    catch (Exception paramMap)
    {
      zzbf.zzac("Custom macro/tag " + str + " threw exception " + paramMap.getMessage());
    }
    return zzde.zzuf();
  }
  
  public boolean zzsD()
  {
    return false;
  }
  
  public static abstract interface zza
  {
    public abstract Object zzc(String paramString, Map<String, Object> paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzc.zzc;
import com.google.android.gms.internal.zzc.zzd;
import com.google.android.gms.internal.zzc.zzi;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzai
{
  private static void zza(DataLayer paramDataLayer, zzc.zzd paramzzd)
  {
    paramzzd = zzfB;
    int j = paramzzd.length;
    int i = 0;
    while (i < j)
    {
      paramDataLayer.zzcU(zzde.zzg(paramzzd[i]));
      i += 1;
    }
  }
  
  public static void zza(DataLayer paramDataLayer, zzc.zzi paramzzi)
  {
    if (zzgq == null)
    {
      zzbf.zzac("supplemental missing experimentSupplemental");
      return;
    }
    zza(paramDataLayer, zzgq);
    zzb(paramDataLayer, zzgq);
    zzc(paramDataLayer, zzgq);
  }
  
  private static void zzb(DataLayer paramDataLayer, zzc.zzd paramzzd)
  {
    paramzzd = zzfA;
    int j = paramzzd.length;
    int i = 0;
    while (i < j)
    {
      Map localMap = zzc(paramzzd[i]);
      if (localMap != null) {
        paramDataLayer.push(localMap);
      }
      i += 1;
    }
  }
  
  private static Map<String, Object> zzc(zzd.zza paramzza)
  {
    paramzza = zzde.zzl(paramzza);
    if (!(paramzza instanceof Map))
    {
      zzbf.zzac("value: " + paramzza + " is not a map value, ignored.");
      return null;
    }
    return (Map)paramzza;
  }
  
  private static void zzc(DataLayer paramDataLayer, zzc.zzd paramzzd)
  {
    zzc.zzc[] arrayOfzzc = zzfC;
    int j = arrayOfzzc.length;
    int i = 0;
    while (i < j)
    {
      zzc.zzc localzzc = arrayOfzzc[i];
      if (zzfv == null)
      {
        zzbf.zzac("GaExperimentRandom: No key");
        i += 1;
      }
      else
      {
        Object localObject = paramDataLayer.get(zzfv);
        if (!(localObject instanceof Number))
        {
          paramzzd = null;
          label64:
          long l1 = zzfw;
          long l2 = zzfx;
          if ((!zzfy) || (paramzzd == null) || (paramzzd.longValue() < l1) || (paramzzd.longValue() > l2))
          {
            if (l1 > l2) {
              break label237;
            }
            localObject = Long.valueOf(Math.round(Math.random() * (l2 - l1) + l1));
          }
          paramDataLayer.zzcU(zzfv);
          paramzzd = paramDataLayer.zzc(zzfv, localObject);
          if (zzfz > 0L)
          {
            if (paramzzd.containsKey("gtm")) {
              break label245;
            }
            paramzzd.put("gtm", DataLayer.mapOf(new Object[] { "lifetime", Long.valueOf(zzfz) }));
          }
        }
        for (;;)
        {
          paramDataLayer.push(paramzzd);
          break;
          paramzzd = Long.valueOf(((Number)localObject).longValue());
          break label64;
          label237:
          zzbf.zzac("GaExperimentRandom: random range invalid");
          break;
          label245:
          localObject = paramzzd.get("gtm");
          if ((localObject instanceof Map)) {
            ((Map)localObject).put("lifetime", Long.valueOf(zzfz));
          } else {
            zzbf.zzac("GaExperimentRandom: gtm not a map");
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
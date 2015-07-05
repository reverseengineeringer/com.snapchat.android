package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

@zzgi
public final class zzda
  implements zzcv
{
  private final zzu zzrK;
  private final zzeb zzrL;
  private final zzcw zzrN;
  
  public zzda(zzcw paramzzcw, zzu paramzzu, zzeb paramzzeb)
  {
    zzrN = paramzzcw;
    zzrK = paramzzu;
    zzrL = paramzzeb;
  }
  
  private static boolean zzc(Map<String, String> paramMap)
  {
    return "1".equals(paramMap.get("custom_close"));
  }
  
  private static int zzd(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("o");
    if (paramMap != null)
    {
      if ("p".equalsIgnoreCase(paramMap)) {
        return zzab.zzaO().zzey();
      }
      if ("l".equalsIgnoreCase(paramMap)) {
        return zzab.zzaO().zzex();
      }
      if ("c".equalsIgnoreCase(paramMap)) {
        return zzab.zzaO().zzez();
      }
    }
    return -1;
  }
  
  private void zzl(boolean paramBoolean)
  {
    if (zzrL != null) {
      zzrL.zzm(paramBoolean);
    }
  }
  
  public final void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    if (str == null) {
      zzhx.zzac("Action missing from an open GMSG.");
    }
    zzid localzzid;
    do
    {
      return;
      if ((zzrK != null) && (!zzrK.zzaB()))
      {
        zzrK.zzd((String)paramMap.get("u"));
        return;
      }
      localzzid = paramzzic.zzeG();
      if ("expand".equalsIgnoreCase(str))
      {
        if (paramzzic.zzeK())
        {
          zzhx.zzac("Cannot expand WebView that is already expanded.");
          return;
        }
        zzl(false);
        localzzid.zza(zzc(paramMap), zzd(paramMap));
        return;
      }
      if ("webapp".equalsIgnoreCase(str))
      {
        paramzzic = (String)paramMap.get("u");
        zzl(false);
        if (paramzzic != null)
        {
          localzzid.zza(zzc(paramMap), zzd(paramMap), paramzzic);
          return;
        }
        localzzid.zza(zzc(paramMap), zzd(paramMap), (String)paramMap.get("html"), (String)paramMap.get("baseurl"));
        return;
      }
      if (!"in_app_purchase".equalsIgnoreCase(str)) {
        break;
      }
      paramzzic = (String)paramMap.get("product_id");
      paramMap = (String)paramMap.get("report_urls");
    } while (zzrN == null);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = paramMap.split(" ");
      zzrN.zza(paramzzic, new ArrayList(Arrays.asList(paramMap)));
      return;
    }
    zzrN.zza(paramzzic, new ArrayList());
    return;
    zzl(true);
    paramzzic.zzeI();
    str = (String)paramMap.get("u");
    if (!TextUtils.isEmpty(str)) {}
    for (paramzzic = zzab.zzaM().zzb(paramzzic, str);; paramzzic = str)
    {
      localzzid.zza(new zzek((String)paramMap.get("i"), paramzzic, (String)paramMap.get("m"), (String)paramMap.get("p"), (String)paramMap.get("c"), (String)paramMap.get("f"), (String)paramMap.get("e")));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzda
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
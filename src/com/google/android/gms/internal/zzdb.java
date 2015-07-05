package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Map;

@zzgi
public final class zzdb
  implements zzcv
{
  private static int zza(DisplayMetrics paramDisplayMetrics, Map<String, String> paramMap, String paramString, int paramInt)
  {
    paramMap = (String)paramMap.get(paramString);
    int i = paramInt;
    if (paramMap != null) {}
    try
    {
      i = zzbe.zzbD().zza(paramDisplayMetrics, Integer.parseInt(paramMap));
      return i;
    }
    catch (NumberFormatException paramDisplayMetrics)
    {
      zzhx.zzac("Could not parse " + paramString + " in a video GMSG: " + paramMap);
    }
    return paramInt;
  }
  
  public final void zza(zzic paramzzic, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("action");
    if (str == null)
    {
      zzhx.zzac("Action missing from video GMSG.");
      return;
    }
    Object localObject = paramzzic.zzeF();
    if (localObject == null)
    {
      zzhx.zzac("Could not get ad overlay for a video GMSG.");
      return;
    }
    boolean bool1 = "new".equalsIgnoreCase(str);
    boolean bool2 = "position".equalsIgnoreCase(str);
    int i;
    int j;
    if ((bool1) || (bool2))
    {
      paramzzic = paramzzic.getContext().getResources().getDisplayMetrics();
      i = zza(paramzzic, paramMap, "x", 0);
      j = zza(paramzzic, paramMap, "y", 0);
      int k = zza(paramzzic, paramMap, "w", -1);
      int m = zza(paramzzic, paramMap, "h", -1);
      if ((bool1) && (((zzel)localObject).zzdb() == null))
      {
        ((zzel)localObject).zzf(i, j, k, m);
        return;
      }
      ((zzel)localObject).zze(i, j, k, m);
      return;
    }
    localObject = ((zzel)localObject).zzdb();
    if (localObject == null)
    {
      zzeq.zza(paramzzic, "no_video_view", null);
      return;
    }
    if ("click".equalsIgnoreCase(str))
    {
      paramzzic = paramzzic.getContext().getResources().getDisplayMetrics();
      i = zza(paramzzic, paramMap, "x", 0);
      j = zza(paramzzic, paramMap, "y", 0);
      long l = SystemClock.uptimeMillis();
      paramzzic = MotionEvent.obtain(l, l, 0, i, j, 0);
      ((zzeq)localObject).zzb(paramzzic);
      paramzzic.recycle();
      return;
    }
    if ("controls".equalsIgnoreCase(str))
    {
      paramzzic = (String)paramMap.get("enabled");
      if (paramzzic == null)
      {
        zzhx.zzac("Enabled parameter missing from controls video GMSG.");
        return;
      }
      ((zzeq)localObject).zzu(Boolean.parseBoolean(paramzzic));
      return;
    }
    if ("currentTime".equalsIgnoreCase(str))
    {
      paramzzic = (String)paramMap.get("time");
      if (paramzzic == null)
      {
        zzhx.zzac("Time parameter missing from currentTime video GMSG.");
        return;
      }
      try
      {
        ((zzeq)localObject).seekTo((int)(Float.parseFloat(paramzzic) * 1000.0F));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        zzhx.zzac("Could not parse time parameter from currentTime video GMSG: " + paramzzic);
        return;
      }
    }
    if ("hide".equalsIgnoreCase(str))
    {
      ((zzeq)localObject).setVisibility(4);
      return;
    }
    if ("load".equalsIgnoreCase(str))
    {
      ((zzeq)localObject).zzdo();
      return;
    }
    if ("pause".equalsIgnoreCase(str))
    {
      ((zzeq)localObject).pause();
      return;
    }
    if ("play".equalsIgnoreCase(str))
    {
      ((zzeq)localObject).play();
      return;
    }
    if ("show".equalsIgnoreCase(str))
    {
      ((zzeq)localObject).setVisibility(0);
      return;
    }
    if ("src".equalsIgnoreCase(str))
    {
      ((zzeq)localObject).zzK((String)paramMap.get("src"));
      return;
    }
    zzhx.zzac("Unknown video action: " + str);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
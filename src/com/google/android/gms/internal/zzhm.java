package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

@zzgi
public final class zzhm
{
  public static void zza(Context paramContext, int paramInt)
  {
    paramContext = zzq(paramContext).edit();
    paramContext.putInt("webview_cache_version", paramInt);
    paramContext.commit();
  }
  
  public static void zza(Context paramContext, boolean paramBoolean)
  {
    paramContext = zzq(paramContext).edit();
    paramContext.putBoolean("use_https", paramBoolean);
    paramContext.commit();
  }
  
  private static SharedPreferences zzq(Context paramContext)
  {
    return paramContext.getSharedPreferences("admob", 0);
  }
  
  public static boolean zzr(Context paramContext)
  {
    return zzq(paramContext).getBoolean("use_https", true);
  }
  
  public static int zzs(Context paramContext)
  {
    return zzq(paramContext).getInt("webview_cache_version", 0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
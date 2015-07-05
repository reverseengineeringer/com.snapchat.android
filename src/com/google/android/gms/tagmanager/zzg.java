package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzg
  extends zzaj
{
  private static final String ID = zza.zzx.toString();
  private final Context mContext;
  
  public zzg(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    try
    {
      paramMap = mContext.getPackageManager();
      paramMap = zzde.zzx(paramMap.getApplicationLabel(paramMap.getApplicationInfo(mContext.getPackageName(), 0)).toString());
      return paramMap;
    }
    catch (PackageManager.NameNotFoundException paramMap)
    {
      zzbf.zzb("App name is not found.", paramMap);
    }
    return zzde.zzuf();
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
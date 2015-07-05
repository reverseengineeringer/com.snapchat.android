package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzh
  extends zzaj
{
  private static final String ID = zza.zzy.toString();
  private final Context mContext;
  
  public zzh(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    try
    {
      paramMap = zzde.zzx(Integer.valueOf(mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).versionCode));
      return paramMap;
    }
    catch (PackageManager.NameNotFoundException paramMap)
    {
      zzbf.zzZ("Package name " + mContext.getPackageName() + " not found. " + paramMap.getMessage());
    }
    return zzde.zzuf();
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
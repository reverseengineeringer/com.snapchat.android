package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzf
  extends zzaj
{
  private static final String ID = zza.zzw.toString();
  private final Context mContext;
  
  public zzf(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    return zzde.zzx(mContext.getPackageName());
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
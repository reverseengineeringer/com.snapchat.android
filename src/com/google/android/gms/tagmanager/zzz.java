package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzz
  extends zzaj
{
  private static final String ID = zza.zzZ.toString();
  private final Context mContext;
  
  public zzz(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    paramMap = zzal(mContext);
    if (paramMap == null) {
      return zzde.zzuf();
    }
    return zzde.zzx(paramMap);
  }
  
  protected String zzal(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
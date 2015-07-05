package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzd.zza;
import java.util.Map;

class zzcf
  extends zzaj
{
  private static final String ID = zza.zzS.toString();
  private final Context mContext;
  
  public zzcf(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public zzd.zza zzH(Map<String, zzd.zza> paramMap)
  {
    paramMap = new DisplayMetrics();
    ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(paramMap);
    int i = widthPixels;
    int j = heightPixels;
    return zzde.zzx(i + "x" + j);
  }
  
  public boolean zzsD()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzcf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
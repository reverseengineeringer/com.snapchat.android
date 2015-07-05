package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build.VERSION;
import java.util.LinkedHashMap;
import java.util.Map;

public class zzcb
{
  private Context mContext = null;
  private String zznf = null;
  private boolean zzqO = ((Boolean)zzca.zzqy.get()).booleanValue();
  private int zzqP = ((Integer)zzca.zzqz.get()).intValue();
  private int zzqQ = 30;
  private int zzqR = 3;
  private int zzqS = 100;
  private String zzqT = (String)zzca.zzqA.get();
  private Map<String, String> zzqU = new LinkedHashMap();
  
  public zzcb()
  {
    zzqU.put("s", "gmob_sdk");
    zzqU.put("v", "3");
    zzqU.put("os", Build.VERSION.RELEASE);
    zzqU.put("sdk", Build.VERSION.SDK);
    zzqU.put("device", zzab.zzaM().zzev());
  }
  
  Context getContext()
  {
    return mContext;
  }
  
  String zzaX()
  {
    return zznf;
  }
  
  public zzcb zzb(Context paramContext, String paramString)
  {
    mContext = paramContext;
    zznf = paramString;
    zzqU.put("ua", zzab.zzaM().zze(paramContext, paramString));
    try
    {
      zzqU.put("app", paramContext.getApplicationContext().getPackageName());
      return this;
    }
    catch (NullPointerException paramContext)
    {
      zzhx.zzac("Cannot get the application name. Set to null.");
      zzqU.put("app", null);
    }
    return this;
  }
  
  boolean zzcd()
  {
    return zzqO;
  }
  
  String zzce()
  {
    return zzqT;
  }
  
  int zzcf()
  {
    return zzqQ;
  }
  
  int zzcg()
  {
    return zzqR;
  }
  
  int zzch()
  {
    return zzqS;
  }
  
  int zzci()
  {
    return zzqP;
  }
  
  Map<String, String> zzcj()
  {
    return zzqU;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
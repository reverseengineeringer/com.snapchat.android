package com.google.android.gms.analytics;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;

class zzam
  implements zzm
{
  String zzFr;
  double zzFs = -1.0D;
  int zzFt = -1;
  int zzFu = -1;
  int zzFv = -1;
  int zzFw = -1;
  Map<String, String> zzFx = new HashMap();
  
  public int getSessionTimeout()
  {
    return zzFt;
  }
  
  public String zzas(String paramString)
  {
    String str = (String)zzFx.get(paramString);
    if (str != null) {
      return str;
    }
    return paramString;
  }
  
  public boolean zzgK()
  {
    return zzFr != null;
  }
  
  public String zzgL()
  {
    return zzFr;
  }
  
  public boolean zzgM()
  {
    return zzFs >= 0.0D;
  }
  
  public double zzgN()
  {
    return zzFs;
  }
  
  public boolean zzgO()
  {
    return zzFt >= 0;
  }
  
  public boolean zzgP()
  {
    return zzFu != -1;
  }
  
  public boolean zzgQ()
  {
    return zzFu == 1;
  }
  
  public boolean zzgR()
  {
    return zzFv != -1;
  }
  
  public boolean zzgS()
  {
    return zzFv == 1;
  }
  
  public boolean zzgT()
  {
    return zzFw == 1;
  }
  
  public String zzq(Activity paramActivity)
  {
    return zzas(paramActivity.getClass().getCanonicalName());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
package com.google.android.gms.tagmanager;

import com.google.android.gms.analytics.Logger;

class zzdb$zza
  implements Logger
{
  private static int zzhj(int paramInt)
  {
    switch (paramInt)
    {
    case 6: 
    default: 
      return 3;
    case 5: 
      return 2;
    case 3: 
    case 4: 
      return 1;
    }
    return 0;
  }
  
  public void error(Exception paramException)
  {
    zzbf.zzb("", paramException);
  }
  
  public void error(String paramString)
  {
    zzbf.zzZ(paramString);
  }
  
  public int getLogLevel()
  {
    return zzhj(zzbf.getLogLevel());
  }
  
  public void info(String paramString)
  {
    zzbf.zzaa(paramString);
  }
  
  public void setLogLevel(int paramInt)
  {
    zzbf.zzac("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
  }
  
  public void verbose(String paramString)
  {
    zzbf.zzab(paramString);
  }
  
  public void warn(String paramString)
  {
    zzbf.zzac(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzdb.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
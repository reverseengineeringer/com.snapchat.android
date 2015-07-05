package com.google.android.gms.analytics;

public class zzae
{
  private static volatile Logger zzEN;
  
  static
  {
    setLogger(new zzp());
  }
  
  static Logger getLogger()
  {
    return zzEN;
  }
  
  static void setLogger(Logger paramLogger)
  {
    zzEN = paramLogger;
  }
  
  public static void zzZ(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.error(paramString);
    }
  }
  
  public static void zzaa(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.info(paramString);
    }
  }
  
  public static void zzab(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.verbose(paramString);
    }
  }
  
  public static void zzac(String paramString)
  {
    Logger localLogger = getLogger();
    if (localLogger != null) {
      localLogger.warn(paramString);
    }
  }
  
  public static boolean zzgw()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (getLogger() != null)
    {
      bool1 = bool2;
      if (getLogger().getLogLevel() == 0) {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
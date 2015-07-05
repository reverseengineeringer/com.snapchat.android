package com.google.android.gms.analytics;

class zzp
  implements Logger
{
  private int zzBJ = 2;
  
  private String zzal(String paramString)
  {
    return Thread.currentThread().toString() + ": " + paramString;
  }
  
  public void error(Exception paramException) {}
  
  public void error(String paramString)
  {
    if (zzBJ <= 3) {
      zzal(paramString);
    }
  }
  
  public int getLogLevel()
  {
    return zzBJ;
  }
  
  public void info(String paramString)
  {
    if (zzBJ <= 1) {
      zzal(paramString);
    }
  }
  
  public void setLogLevel(int paramInt)
  {
    zzBJ = paramInt;
  }
  
  public void verbose(String paramString)
  {
    if (zzBJ <= 0) {
      zzal(paramString);
    }
  }
  
  public void warn(String paramString)
  {
    if (zzBJ <= 2) {
      zzal(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
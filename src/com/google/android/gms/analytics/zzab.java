package com.google.android.gms.analytics;

import android.text.TextUtils;

public class zzab
{
  private final String zzEA;
  private String zzEB;
  private String zzEC = "https:";
  private String zzEx;
  private final long zzEy;
  private final long zzEz;
  
  public zzab(String paramString1, long paramLong1, long paramLong2, String paramString2)
  {
    zzEx = paramString1;
    zzEy = paramLong1;
    zzEz = paramLong2;
    zzEA = paramString2;
  }
  
  public void zzap(String paramString)
  {
    zzEx = paramString;
  }
  
  public void zzaq(String paramString)
  {
    if ((paramString == null) || (TextUtils.isEmpty(paramString.trim()))) {}
    do
    {
      return;
      zzEB = paramString;
    } while (!paramString.toLowerCase().startsWith("http:"));
    zzEC = "http:";
  }
  
  public String zzgr()
  {
    return zzEx;
  }
  
  public long zzgs()
  {
    return zzEy;
  }
  
  public long zzgt()
  {
    return zzEz;
  }
  
  public String zzgu()
  {
    return zzEC;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
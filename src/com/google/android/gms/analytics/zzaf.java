package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class zzaf
{
  private final Map<String, Integer> zzEO = new HashMap();
  private final Map<String, String> zzEP = new HashMap();
  private final boolean zzEQ;
  private final String zzER;
  
  public zzaf(String paramString, boolean paramBoolean)
  {
    zzEQ = paramBoolean;
    zzER = paramString;
  }
  
  public void zze(String paramString, int paramInt)
  {
    if (!zzEQ) {
      return;
    }
    Integer localInteger2 = (Integer)zzEO.get(paramString);
    Integer localInteger1 = localInteger2;
    if (localInteger2 == null) {
      localInteger1 = Integer.valueOf(0);
    }
    zzEO.put(paramString, Integer.valueOf(localInteger1.intValue() + paramInt));
  }
  
  public String zzgx()
  {
    if (!zzEQ) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(zzER);
    Iterator localIterator = zzEO.keySet().iterator();
    String str;
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append(zzEO.get(str));
    }
    localIterator = zzEP.keySet().iterator();
    while (localIterator.hasNext())
    {
      str = (String)localIterator.next();
      localStringBuilder.append("&").append(str).append("=").append((String)zzEP.get(str));
    }
    return localStringBuilder.toString();
  }
  
  public void zzk(String paramString1, String paramString2)
  {
    if ((!zzEQ) || (TextUtils.isEmpty(paramString1))) {
      return;
    }
    zzEP.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzaf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
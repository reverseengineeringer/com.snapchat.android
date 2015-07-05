package com.google.android.gms.analytics;

import com.google.android.gms.internal.zzik;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class zzw$zzd
{
  private final Map<String, String> zzCF;
  private final long zzCG;
  private final String zzCH;
  private final List<zzik> zzCI;
  
  public zzw$zzd(Map<String, String> paramMap, long paramLong, String paramString, List<zzik> paramList)
  {
    zzCF = paramMap;
    zzCG = paramLong;
    zzCH = paramString;
    zzCI = paramList;
  }
  
  public String getPath()
  {
    return zzCH;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PATH: ");
    localStringBuilder.append(zzCH);
    if (zzCF != null)
    {
      localStringBuilder.append("  PARAMS: ");
      Iterator localIterator = zzCF.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append((String)localEntry.getKey());
        localStringBuilder.append("=");
        localStringBuilder.append((String)localEntry.getValue());
        localStringBuilder.append(",  ");
      }
    }
    return localStringBuilder.toString();
  }
  
  public Map<String, String> zzfS()
  {
    return zzCF;
  }
  
  public long zzfT()
  {
    return zzCG;
  }
  
  public List<zzik> zzfU()
  {
    return zzCI;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzw.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
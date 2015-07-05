package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;

public class zzcf
{
  private static int zzrd;
  private final Object zznh = new Object();
  final String zzrc;
  private final LinkedList<zzce> zzre;
  private zzce zzrf;
  
  public zzcf(String arg1)
  {
    zzrc = ???;
    zzrd = ((Integer)zzca.zzqz.get()).intValue();
    synchronized (zznh)
    {
      zzre = new LinkedList();
      return;
    }
  }
  
  private zzce zza(long paramLong)
  {
    return new zzce(paramLong, null, null);
  }
  
  private static Map<String, String> zza(String paramString, StringBuilder paramStringBuilder)
  {
    LinkedHashMap localLinkedHashMap = null;
    if (paramStringBuilder.length() > 0)
    {
      localLinkedHashMap = new LinkedHashMap();
      if (paramString != null) {
        localLinkedHashMap.put("action", paramString);
      }
      paramStringBuilder.setLength(paramStringBuilder.length() - 1);
      localLinkedHashMap.put("it", paramStringBuilder.toString());
    }
    return localLinkedHashMap;
  }
  
  public static Map<String, String> zza(zzcf... paramVarArgs)
  {
    Object localObject1 = null;
    StringBuilder localStringBuilder = new StringBuilder(zzrd * 10 * 20);
    int i = 0;
    if (i < paramVarArgs.length)
    {
      Map localMap = paramVarArgs[i].zzcs();
      Object localObject2 = localObject1;
      if (localMap != null)
      {
        if (i != 0) {
          break label92;
        }
        localObject2 = (String)localMap.get("action");
        localStringBuilder.append((String)localMap.get("it")).append(",");
      }
      for (;;)
      {
        i += 1;
        localObject1 = localObject2;
        break;
        label92:
        if (((!localMap.containsKey("action")) && (localObject1 != null)) || ((localMap.containsKey("action")) && (!((String)localMap.get("action")).equals(localObject1)))) {
          throw new IllegalArgumentException("Can not merge report items for the tickers with different action names.");
        }
        localStringBuilder.append((String)localMap.get("it")).append(",");
        localObject2 = localObject1;
      }
    }
    return zza((String)localObject1, localStringBuilder);
  }
  
  private boolean zza(zzce paramzzce, long paramLong, String... paramVarArgs)
  {
    synchronized (zznh)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        zzce localzzce = new zzce(paramLong, paramVarArgs[i], paramzzce);
        zzre.add(localzzce);
        i += 1;
      }
      return true;
    }
  }
  
  public boolean zza(zzce paramzzce, String... paramVarArgs)
  {
    if ((!zzab.zzaR().zzcd()) || (paramzzce == null)) {
      return false;
    }
    return zza(paramzzce, zzab.zzaQ().elapsedRealtime(), paramVarArgs);
  }
  
  public zzce zzcq()
  {
    if (!zzab.zzaR().zzcd()) {
      return null;
    }
    return zza(zzab.zzaQ().elapsedRealtime());
  }
  
  public void zzcr()
  {
    zzrf = zzcq();
  }
  
  Map<String, String> zzcs()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    synchronized (zznh)
    {
      Iterator localIterator = zzre.iterator();
      while (localIterator.hasNext())
      {
        zzce localzzce = (zzce)localIterator.next();
        Long localLong = localzzce.zzcn();
        String str = localzzce.zzco();
        localzzce = localzzce.zzcp();
        if ((localzzce != null) && (localLong.longValue() > 0L))
        {
          long l1 = localLong.longValue();
          long l2 = localzzce.zzcn().longValue();
          localStringBuilder1.append(str).append('.').append(l1 - l2).append(',');
        }
      }
    }
    zzre.clear();
    return zza(zzrc, localStringBuilder2);
  }
  
  public String zzct()
  {
    return zzrc;
  }
  
  public zzce zzcu()
  {
    return zzrf;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
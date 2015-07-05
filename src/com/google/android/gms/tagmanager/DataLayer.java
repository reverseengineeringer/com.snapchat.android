package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataLayer
{
  public static final String EVENT_KEY = "event";
  public static final Object OBJECT_NOT_PRESENT = new Object();
  static final String[] zzayd = "gtm.lifetime".toString().split("\\.");
  private static final Pattern zzaye = Pattern.compile("(\\d+)\\s*([smhd]?)");
  private final ConcurrentHashMap<zzb, Integer> zzayf;
  private final Map<String, Object> zzayg;
  private final ReentrantLock zzayh;
  private final LinkedList<Map<String, Object>> zzayi;
  private final zzc zzayj;
  private final CountDownLatch zzayk;
  
  DataLayer()
  {
    this(new zzc()
    {
      public void zza(DataLayer.zzc.zza paramAnonymouszza)
      {
        paramAnonymouszza.zzq(new ArrayList());
      }
      
      public void zza(List<DataLayer.zza> paramAnonymousList, long paramAnonymousLong) {}
      
      public void zzcW(String paramAnonymousString) {}
    });
  }
  
  DataLayer(zzc paramzzc)
  {
    zzayj = paramzzc;
    zzayf = new ConcurrentHashMap();
    zzayg = new HashMap();
    zzayh = new ReentrantLock();
    zzayi = new LinkedList();
    zzayk = new CountDownLatch(1);
    zzsU();
  }
  
  public static List<Object> listOf(Object... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramVarArgs.length)
    {
      localArrayList.add(paramVarArgs[i]);
      i += 1;
    }
    return localArrayList;
  }
  
  public static Map<String, Object> mapOf(Object... paramVarArgs)
  {
    if (paramVarArgs.length % 2 != 0) {
      throw new IllegalArgumentException("expected even number of key-value pairs");
    }
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < paramVarArgs.length)
    {
      if (!(paramVarArgs[i] instanceof String)) {
        throw new IllegalArgumentException("key is not a string: " + paramVarArgs[i]);
      }
      localHashMap.put((String)paramVarArgs[i], paramVarArgs[(i + 1)]);
      i += 2;
    }
    return localHashMap;
  }
  
  private void zzK(Map<String, Object> paramMap)
  {
    zzayh.lock();
    try
    {
      zzayi.offer(paramMap);
      if (zzayh.getHoldCount() == 1) {
        zzsV();
      }
      zzL(paramMap);
      return;
    }
    finally
    {
      zzayh.unlock();
    }
  }
  
  private void zzL(Map<String, Object> paramMap)
  {
    Long localLong = zzM(paramMap);
    if (localLong == null) {
      return;
    }
    paramMap = zzO(paramMap);
    paramMap.remove("gtm.lifetime");
    zzayj.zza(paramMap, localLong.longValue());
  }
  
  private Long zzM(Map<String, Object> paramMap)
  {
    paramMap = zzN(paramMap);
    if (paramMap == null) {
      return null;
    }
    return zzcV(paramMap.toString());
  }
  
  private Object zzN(Map<String, Object> paramMap)
  {
    String[] arrayOfString = zzayd;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      Object localObject = paramMap;
      if (i < j)
      {
        localObject = arrayOfString[i];
        if (!(paramMap instanceof Map)) {
          localObject = null;
        }
      }
      else
      {
        return localObject;
      }
      paramMap = ((Map)paramMap).get(localObject);
      i += 1;
    }
  }
  
  private List<zza> zzO(Map<String, Object> paramMap)
  {
    ArrayList localArrayList = new ArrayList();
    zza(paramMap, "", localArrayList);
    return localArrayList;
  }
  
  private void zzP(Map<String, Object> paramMap)
  {
    synchronized (zzayg)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        zza(zzc(str, paramMap.get(str)), zzayg);
      }
    }
    zzQ(paramMap);
  }
  
  private void zzQ(Map<String, Object> paramMap)
  {
    Iterator localIterator = zzayf.keySet().iterator();
    while (localIterator.hasNext()) {
      ((zzb)localIterator.next()).zzI(paramMap);
    }
  }
  
  private void zza(Map<String, Object> paramMap, String paramString, Collection<zza> paramCollection)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder().append(paramString);
      if (paramString.length() == 0) {}
      for (paramMap = "";; paramMap = ".")
      {
        paramMap = paramMap + (String)localEntry.getKey();
        if (!(localEntry.getValue() instanceof Map)) {
          break label120;
        }
        zza((Map)localEntry.getValue(), paramMap, paramCollection);
        break;
      }
      label120:
      if (!paramMap.equals("gtm.lifetime")) {
        paramCollection.add(new zza(paramMap, localEntry.getValue()));
      }
    }
  }
  
  static Long zzcV(String paramString)
  {
    Object localObject = zzaye.matcher(paramString);
    if (!((Matcher)localObject).matches())
    {
      zzbf.zzaa("unknown _lifetime: " + paramString);
      return null;
    }
    long l;
    try
    {
      l = Long.parseLong(((Matcher)localObject).group(1));
      if (l <= 0L)
      {
        zzbf.zzaa("non-positive _lifetime: " + paramString);
        return null;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        zzbf.zzac("illegal number in _lifetime value: " + paramString);
        l = 0L;
      }
      localObject = ((Matcher)localObject).group(2);
      if (((String)localObject).length() == 0) {
        return Long.valueOf(l);
      }
      switch (((String)localObject).charAt(0))
      {
      default: 
        zzbf.zzac("unknown units in _lifetime: " + paramString);
        return null;
      }
    }
    return Long.valueOf(l * 1000L);
    return Long.valueOf(l * 1000L * 60L);
    return Long.valueOf(l * 1000L * 60L * 60L);
    return Long.valueOf(l * 1000L * 60L * 60L * 24L);
  }
  
  private void zzsU()
  {
    zzayj.zza(new DataLayer.zzc.zza()
    {
      public void zzq(List<DataLayer.zza> paramAnonymousList)
      {
        paramAnonymousList = paramAnonymousList.iterator();
        while (paramAnonymousList.hasNext())
        {
          DataLayer.zza localzza = (DataLayer.zza)paramAnonymousList.next();
          DataLayer.zza(DataLayer.this, zzc(zzqd, zzzt));
        }
        DataLayer.zza(DataLayer.this).countDown();
      }
    });
  }
  
  private void zzsV()
  {
    int i = 0;
    for (;;)
    {
      Map localMap = (Map)zzayi.poll();
      if (localMap != null)
      {
        zzP(localMap);
        i += 1;
        if (i > 500)
        {
          zzayi.clear();
          throw new RuntimeException("Seems like an infinite loop of pushing to the data layer");
        }
      }
      else
      {
        return;
      }
    }
  }
  
  public Object get(String paramString)
  {
    for (;;)
    {
      int i;
      synchronized (zzayg)
      {
        Map localMap1 = zzayg;
        String[] arrayOfString = paramString.split("\\.");
        int j = arrayOfString.length;
        paramString = localMap1;
        i = 0;
        if (i < j)
        {
          localMap1 = arrayOfString[i];
          if (!(paramString instanceof Map)) {
            return null;
          }
          paramString = ((Map)paramString).get(localMap1);
          if (paramString == null) {
            return null;
          }
        }
        else
        {
          return paramString;
        }
      }
      i += 1;
    }
  }
  
  public void push(String paramString, Object paramObject)
  {
    push(zzc(paramString, paramObject));
  }
  
  public void push(Map<String, Object> paramMap)
  {
    try
    {
      zzayk.await();
      zzK(paramMap);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        zzbf.zzac("DataLayer.push: unexpected InterruptedException");
      }
    }
  }
  
  public void pushEvent(String paramString, Map<String, Object> paramMap)
  {
    paramMap = new HashMap(paramMap);
    paramMap.put("event", paramString);
    push(paramMap);
  }
  
  public String toString()
  {
    synchronized (zzayg)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      Iterator localIterator = zzayg.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append(String.format("{\n\tKey: %s\n\tValue: %s\n}\n", new Object[] { localEntry.getKey(), localEntry.getValue() }));
      }
    }
    String str = ((StringBuilder)localObject).toString();
    return str;
  }
  
  void zza(zzb paramzzb)
  {
    zzayf.put(paramzzb, Integer.valueOf(0));
  }
  
  void zza(Map<String, Object> paramMap1, Map<String, Object> paramMap2)
  {
    Iterator localIterator = paramMap1.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramMap1.get(str);
      if ((localObject instanceof List))
      {
        if (!(paramMap2.get(str) instanceof List)) {
          paramMap2.put(str, new ArrayList());
        }
        zzb((List)localObject, (List)paramMap2.get(str));
      }
      else if ((localObject instanceof Map))
      {
        if (!(paramMap2.get(str) instanceof Map)) {
          paramMap2.put(str, new HashMap());
        }
        zza((Map)localObject, (Map)paramMap2.get(str));
      }
      else
      {
        paramMap2.put(str, localObject);
      }
    }
  }
  
  void zzb(List<Object> paramList1, List<Object> paramList2)
  {
    while (paramList2.size() < paramList1.size()) {
      paramList2.add(null);
    }
    int i = 0;
    if (i < paramList1.size())
    {
      Object localObject = paramList1.get(i);
      if ((localObject instanceof List))
      {
        if (!(paramList2.get(i) instanceof List)) {
          paramList2.set(i, new ArrayList());
        }
        zzb((List)localObject, (List)paramList2.get(i));
      }
      for (;;)
      {
        i += 1;
        break;
        if ((localObject instanceof Map))
        {
          if (!(paramList2.get(i) instanceof Map)) {
            paramList2.set(i, new HashMap());
          }
          zza((Map)localObject, (Map)paramList2.get(i));
        }
        else if (localObject != OBJECT_NOT_PRESENT)
        {
          paramList2.set(i, localObject);
        }
      }
    }
  }
  
  Map<String, Object> zzc(String paramString, Object paramObject)
  {
    HashMap localHashMap1 = new HashMap();
    String[] arrayOfString = paramString.toString().split("\\.");
    int i = 0;
    HashMap localHashMap2;
    for (paramString = localHashMap1; i < arrayOfString.length - 1; paramString = localHashMap2)
    {
      localHashMap2 = new HashMap();
      paramString.put(arrayOfString[i], localHashMap2);
      i += 1;
    }
    paramString.put(arrayOfString[(arrayOfString.length - 1)], paramObject);
    return localHashMap1;
  }
  
  void zzcU(String paramString)
  {
    push(paramString, null);
    zzayj.zzcW(paramString);
  }
  
  static final class zza
  {
    public final String zzqd;
    public final Object zzzt;
    
    zza(String paramString, Object paramObject)
    {
      zzqd = paramString;
      zzzt = paramObject;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof zza)) {}
      do
      {
        return false;
        paramObject = (zza)paramObject;
      } while ((!zzqd.equals(zzqd)) || (!zzzt.equals(zzzt)));
      return true;
    }
    
    public final int hashCode()
    {
      return Arrays.hashCode(new Integer[] { Integer.valueOf(zzqd.hashCode()), Integer.valueOf(zzzt.hashCode()) });
    }
    
    public final String toString()
    {
      return "Key: " + zzqd + " value: " + zzzt.toString();
    }
  }
  
  static abstract interface zzb
  {
    public abstract void zzI(Map<String, Object> paramMap);
  }
  
  static abstract interface zzc
  {
    public abstract void zza(zza paramzza);
    
    public abstract void zza(List<DataLayer.zza> paramList, long paramLong);
    
    public abstract void zzcW(String paramString);
    
    public static abstract interface zza
    {
      public abstract void zzq(List<DataLayer.zza> paramList);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.DataLayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */
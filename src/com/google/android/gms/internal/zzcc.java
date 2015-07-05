package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class zzcc
{
  private final Context mContext;
  private final String zznf;
  private int zzqP;
  private int zzqQ;
  private int zzqR;
  private int zzqS;
  private String zzqT;
  private BlockingQueue<zzcf> zzqV;
  private ExecutorService zzqW;
  private LinkedHashMap<String, String> zzqX = new LinkedHashMap();
  
  public zzcc(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, Map<String, String> paramMap, int paramInt5)
  {
    mContext = paramContext;
    zznf = paramString1;
    zzqT = paramString2;
    zzqQ = paramInt1;
    zzqR = paramInt2;
    zzqS = paramInt3;
    zzk(paramInt4);
    paramContext = paramMap.entrySet().iterator();
    while (paramContext.hasNext())
    {
      paramString1 = (Map.Entry)paramContext.next();
      zze((String)paramString1.getKey(), (String)paramString1.getValue());
    }
    if (paramInt5 == 1) {
      zzck();
    }
    if (paramInt5 == 2) {
      zzcl();
    }
    init();
  }
  
  private void init()
  {
    zzqV = new ArrayBlockingQueue(zzqQ);
    zzqW = Executors.newSingleThreadExecutor();
    zzqW.execute(new Runnable()
    {
      public void run()
      {
        zzcc.zza(zzcc.this);
      }
    });
  }
  
  private boolean zzb(Map<String, String> paramMap)
  {
    boolean bool = false;
    int i = 0;
    for (;;)
    {
      if ((bool) || (i >= zzqR)) {
        return bool;
      }
      try
      {
        Thread.sleep(zzqS);
        String str = zza(zzqT, paramMap);
        zzab.zzaM().zzc(mContext, zznf, str);
        bool = true;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          zzhx.zzd("CsiReporter:interrupted in sendReport()", localInterruptedException);
          Thread.currentThread().interrupt();
        }
      }
      i += 1;
    }
    return bool;
  }
  
  private void zzck()
  {
    zzca.zza(new Runnable()
    {
      public void run()
      {
        if (!zzca.zzcb().isEmpty()) {
          zze("eid", TextUtils.join(",", zzca.zzcb()));
        }
      }
    });
  }
  
  private void zzcl()
  {
    if (!zzca.zzca().isEmpty()) {
      zze("eid", TextUtils.join(",", zzca.zzca()));
    }
  }
  
  private void zzcm()
  {
    try
    {
      do
      {
        localObject = zzj(zzqP);
      } while (localObject == null);
      Object localObject = zzc((List)localObject).values().iterator();
      while (((Iterator)localObject).hasNext()) {
        zzb((Map)((Iterator)localObject).next());
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      zzhx.zzd("CsiReporter:reporter interrupted", localInterruptedException);
    }
  }
  
  private List<zzcf> zzj(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramInt)
    {
      localArrayList.add(zzqV.take());
      i += 1;
    }
    return localArrayList;
  }
  
  private void zzk(int paramInt)
  {
    int i = paramInt;
    if (paramInt <= 0)
    {
      zzhx.zzac("CsiReporter - too small batch size :" + paramInt + ", changed to 1");
      i = 1;
    }
    paramInt = i;
    if (i > zzqQ)
    {
      zzhx.zzac("CsiReporter - batch size :" + i + " bigger than buffer size, change to buffer limit");
      paramInt = zzqQ;
    }
    zzqP = paramInt;
  }
  
  String zza(String paramString, Map<String, String> paramMap)
  {
    paramString = Uri.parse(paramString).buildUpon();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      paramString.appendQueryParameter((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    return paramString.build().toString();
  }
  
  public boolean zza(zzcf paramzzcf)
  {
    return zzqV.offer(paramzzcf);
  }
  
  Map<String, Map<String, String>> zzc(List<zzcf> paramList)
  {
    Object localObject1 = new LinkedHashMap();
    paramList = paramList.iterator();
    Object localObject2;
    Object localObject3;
    Object localObject4;
    while (paramList.hasNext())
    {
      localObject2 = (zzcf)paramList.next();
      localObject3 = ((zzcf)localObject2).zzct();
      if (((Map)localObject1).containsKey(localObject3))
      {
        ((List)((Map)localObject1).get(localObject3)).add(localObject2);
      }
      else
      {
        localObject4 = new ArrayList();
        ((List)localObject4).add(localObject2);
        ((Map)localObject1).put(localObject3, localObject4);
      }
    }
    paramList = new LinkedHashMap();
    localObject1 = ((Map)localObject1).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (Map.Entry)((Iterator)localObject1).next();
      localObject2 = (List)((Map.Entry)localObject3).getValue();
      localObject4 = new LinkedHashMap(zzqX);
      try
      {
        Map localMap = zzcf.zza((zzcf[])((List)localObject2).toArray(new zzcf[((List)localObject2).size()]));
        ((Map)localObject4).putAll(localMap);
        paramList.put(((Map.Entry)localObject3).getKey(), localObject4);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        zzhx.zzd("CsiReporter:failed to merge tickers:" + localObject2, localIllegalArgumentException);
      }
    }
    return paramList;
  }
  
  void zze(String paramString1, String paramString2)
  {
    zzqX.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzcc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */